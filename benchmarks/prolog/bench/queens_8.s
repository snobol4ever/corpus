                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sel$2F3_α
proc_sel$2F3_α:
                        sub              rsp, 1040
                        mov              qword ptr [rsp + 1016], rcx
                        mov              qword ptr [rsp + 1024], rdx
                        mov              qword ptr [rsp + 1032], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 896
                        mov              edx, 1008
                        call             rt_jmp_frame_lexprep2@PLT
proc_sel$2F3_α_body:
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 896], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx30_102
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                                                                                        jmp   .Lx30_101
.Lx30_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx30_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx30_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx30_101
.Lx30_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx30_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_sel$2F3_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx35_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx35_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_41
                        cmp              esi, 1
                                                                                        jne   .Lx35_55
                        mov              r8, rax
                                                                                        jmp   .Lx35_40
.Lx35_55:
                        cmp              esi, 2
                                                                                        jne   .Lx35_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx35_41
                        mov              r8, rax
                                                                                        jmp   .Lx35_40
.Lx35_56:
                        cmp              eax, 72
                                                                                        jne   .Lx35_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_41
                        cmp              rax, r8
                                                                                        je    .Lx35_41
                        mov              r8, rax
                                                                                        jmp   .Lx35_40
.Lx35_41:
                        lea              r9, [rbp + 848]
.Lx35_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx35_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_43
                        cmp              esi, 1
                                                                                        jne   .Lx35_57
                        mov              r9, rax
                                                                                        jmp   .Lx35_42
.Lx35_57:
                        cmp              esi, 2
                                                                                        jne   .Lx35_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx35_43
                        mov              r9, rax
                                                                                        jmp   .Lx35_42
.Lx35_58:
                        cmp              eax, 72
                                                                                        jne   .Lx35_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx35_43
                        cmp              rax, r9
                                                                                        je    .Lx35_43
                        mov              r9, rax
                                                                                        jmp   .Lx35_42
.Lx35_43:
                        cmp              r8, r9
                                                                                        je    .Lx35_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx35_44
                        cmp              eax, 104
                                                                                        je    .Lx35_44
                        cmp              eax, 72
                                                                                        jne   .Lx35_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx35_44
                                                                                        jmp   .Lx35_45
.Lx35_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx35_53
                        cmp              eax, 104
                                                                                        je    .Lx35_53
                        cmp              eax, 72
                                                                                        jne   .Lx35_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx35_53
                                                                                        jmp   .Lx35_46
.Lx35_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx35_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx35_53
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
                                                                                        jmp   .Lx35_51
.Lx35_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx35_47
                        cmp              eax, 104
                                                                                        je    .Lx35_47
                        cmp              eax, 72
                                                                                        jne   .Lx35_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx35_47
                                                                                        jmp   .Lx35_48
.Lx35_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx35_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx35_53
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
                                                                                        jmp   .Lx35_51
.Lx35_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx35_49
                        cmp              edx, 80
                                                                                        je    .Lx35_53
                                                                                        jmp   .Lx35_52
.Lx35_49:
                        cmp              edx, 80
                                                                                        je    .Lx35_52
                        cmp              ecx, 5
                                                                                        je    .Lx35_53
                        cmp              edx, 5
                                                                                        je    .Lx35_53
                        cmp              ecx, 3
                                                                                        jne   .Lx35_50
                        cmp              edx, 3
                                                                                        jne   .Lx35_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx35_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx35_51
                                                                                        jmp   .Lx35_52
.Lx35_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx35_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx35_53
.Lx35_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx35_54
.Lx35_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx35_54
.Lx35_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx35_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n12_call_builtin_prolog_α
                                                                                        jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n7_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx42_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx42_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_61
                        cmp              esi, 1
                                                                                        jne   .Lx42_62
                        mov              r8, rax
                                                                                        jmp   .Lx42_60
.Lx42_62:
                        cmp              esi, 2
                                                                                        jne   .Lx42_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_61
                        mov              r8, rax
                                                                                        jmp   .Lx42_60
.Lx42_63:
                        cmp              eax, 72
                                                                                        jne   .Lx42_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_61
                        cmp              rax, r8
                                                                                        je    .Lx42_61
                        mov              r8, rax
                                                                                        jmp   .Lx42_60
.Lx42_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_80
                        cmp              eax, 104
                                                                                        je    .Lx42_80
                        cmp              eax, 72
                                                                                        jne   .Lx42_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx42_80
                                                                                        jmp   .Lx42_74
.Lx42_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx42_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx42_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx42_73
                        lea              r9, [rbp + 752]
.Lx42_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx42_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_65
                        cmp              esi, 1
                                                                                        jne   .Lx42_66
                        mov              r9, rax
                                                                                        jmp   .Lx42_64
.Lx42_66:
                        cmp              esi, 2
                                                                                        jne   .Lx42_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_65
                        mov              r9, rax
                                                                                        jmp   .Lx42_64
.Lx42_67:
                        cmp              eax, 72
                                                                                        jne   .Lx42_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_65
                        cmp              rax, r9
                                                                                        je    .Lx42_65
                        mov              r9, rax
                                                                                        jmp   .Lx42_64
.Lx42_65:
                        lea              rcx, [rbp + 768]
.Lx42_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx42_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx42_69
                        cmp              esi, 1
                                                                                        jne   .Lx42_70
                        mov              rcx, rax
                                                                                        jmp   .Lx42_68
.Lx42_70:
                        cmp              esi, 2
                                                                                        jne   .Lx42_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_69
                        mov              rcx, rax
                                                                                        jmp   .Lx42_68
.Lx42_71:
                        cmp              eax, 72
                                                                                        jne   .Lx42_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx42_69
                        cmp              rax, rcx
                                                                                        je    .Lx42_69
                        mov              rcx, rax
                                                                                        jmp   .Lx42_68
.Lx42_69:
                        cmp              r9, rcx
                                                                                        je    .Lx42_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_75
                        cmp              eax, 104
                                                                                        je    .Lx42_75
                        cmp              eax, 72
                                                                                        jne   .Lx42_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx42_75
                                                                                        jmp   .Lx42_72
.Lx42_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_76
                        cmp              eax, 104
                                                                                        je    .Lx42_76
                        cmp              eax, 72
                                                                                        jne   .Lx42_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx42_76
                                                                                        jmp   .Lx42_72
.Lx42_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx42_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx42_72
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
                                                                                        jmp   .Lx42_77
.Lx42_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx42_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx42_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx42_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx42_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx42_72
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
                        lea              r9, [rbp + 752]
.Lx42_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx42_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_82
                        cmp              esi, 1
                                                                                        jne   .Lx42_83
                        mov              r9, rax
                                                                                        jmp   .Lx42_81
.Lx42_83:
                        cmp              esi, 2
                                                                                        jne   .Lx42_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_82
                        mov              r9, rax
                                                                                        jmp   .Lx42_81
.Lx42_84:
                        cmp              eax, 72
                                                                                        jne   .Lx42_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx42_82
                        cmp              rax, r9
                                                                                        je    .Lx42_82
                        mov              r9, rax
                                                                                        jmp   .Lx42_81
.Lx42_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_85
                        cmp              eax, 104
                                                                                        je    .Lx42_85
                        cmp              eax, 72
                                                                                        jne   .Lx42_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx42_85
                                                                                        jmp   .Lx42_86
.Lx42_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx42_87
.Lx42_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx42_87:
                        lea              rcx, [rbp + 768]
.Lx42_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx42_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx42_89
                        cmp              esi, 1
                                                                                        jne   .Lx42_90
                        mov              rcx, rax
                                                                                        jmp   .Lx42_88
.Lx42_90:
                        cmp              esi, 2
                                                                                        jne   .Lx42_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx42_89
                        mov              rcx, rax
                                                                                        jmp   .Lx42_88
.Lx42_91:
                        cmp              eax, 72
                                                                                        jne   .Lx42_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx42_89
                        cmp              rax, rcx
                                                                                        je    .Lx42_89
                        mov              rcx, rax
                                                                                        jmp   .Lx42_88
.Lx42_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx42_92
                        cmp              eax, 104
                                                                                        je    .Lx42_92
                        cmp              eax, 72
                                                                                        jne   .Lx42_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx42_92
                                                                                        jmp   .Lx42_93
.Lx42_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx42_94
.Lx42_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx42_94:
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
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx42_77
.Lx42_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx42_77
.Lx42_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx42_77:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n12_call_builtin_prolog_α
                                                                                        jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n9_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n10_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lx47_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx47_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_41
                        cmp              esi, 1
                                                                                        jne   .Lx47_55
                        mov              r8, rax
                                                                                        jmp   .Lx47_40
.Lx47_55:
                        cmp              esi, 2
                                                                                        jne   .Lx47_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx47_41
                        mov              r8, rax
                                                                                        jmp   .Lx47_40
.Lx47_56:
                        cmp              eax, 72
                                                                                        jne   .Lx47_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_41
                        cmp              rax, r8
                                                                                        je    .Lx47_41
                        mov              r8, rax
                                                                                        jmp   .Lx47_40
.Lx47_41:
                        lea              r9, [rbp + 656]
.Lx47_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx47_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_43
                        cmp              esi, 1
                                                                                        jne   .Lx47_57
                        mov              r9, rax
                                                                                        jmp   .Lx47_42
.Lx47_57:
                        cmp              esi, 2
                                                                                        jne   .Lx47_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx47_43
                        mov              r9, rax
                                                                                        jmp   .Lx47_42
.Lx47_58:
                        cmp              eax, 72
                                                                                        jne   .Lx47_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx47_43
                        cmp              rax, r9
                                                                                        je    .Lx47_43
                        mov              r9, rax
                                                                                        jmp   .Lx47_42
.Lx47_43:
                        cmp              r8, r9
                                                                                        je    .Lx47_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx47_44
                        cmp              eax, 104
                                                                                        je    .Lx47_44
                        cmp              eax, 72
                                                                                        jne   .Lx47_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx47_44
                                                                                        jmp   .Lx47_45
.Lx47_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx47_53
                        cmp              eax, 104
                                                                                        je    .Lx47_53
                        cmp              eax, 72
                                                                                        jne   .Lx47_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx47_53
                                                                                        jmp   .Lx47_46
.Lx47_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx47_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx47_53
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
                                                                                        jmp   .Lx47_51
.Lx47_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx47_47
                        cmp              eax, 104
                                                                                        je    .Lx47_47
                        cmp              eax, 72
                                                                                        jne   .Lx47_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx47_47
                                                                                        jmp   .Lx47_48
.Lx47_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx47_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx47_53
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
                                                                                        jmp   .Lx47_51
.Lx47_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx47_49
                        cmp              edx, 80
                                                                                        je    .Lx47_53
                                                                                        jmp   .Lx47_52
.Lx47_49:
                        cmp              edx, 80
                                                                                        je    .Lx47_52
                        cmp              ecx, 5
                                                                                        je    .Lx47_53
                        cmp              edx, 5
                                                                                        je    .Lx47_53
                        cmp              ecx, 3
                                                                                        jne   .Lx47_50
                        cmp              edx, 3
                                                                                        jne   .Lx47_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx47_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx47_51
                                                                                        jmp   .Lx47_52
.Lx47_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx47_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx47_53
.Lx47_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx47_54
.Lx47_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx47_54
.Lx47_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx47_54:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n12_call_builtin_prolog_α
                                                                                        jmp   n11_suspend_α
n10_call_builtin_prolog_β:
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx49_61
                        mov              qword ptr [rbp + 896], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 896]
.Lx49_61:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n11_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n11_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sel$2F3_γ
n11_suspend_β:
                                                                                        jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 104
                                                                                        je    proc_sel$2F3_ω
                                                                                        jmp   n13_var_ref_α
n12_call_builtin_prolog_β:
                                                                                        jmp   proc_sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx55_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx55_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        cmp              esi, 1
                                                                                        jne   .Lx55_55
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_55:
                        cmp              esi, 2
                                                                                        jne   .Lx55_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_56:
                        cmp              eax, 72
                                                                                        jne   .Lx55_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        cmp              rax, r8
                                                                                        je    .Lx55_41
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_41:
                        lea              r9, [rbp + 528]
.Lx55_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx55_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_43
                        cmp              esi, 1
                                                                                        jne   .Lx55_57
                        mov              r9, rax
                                                                                        jmp   .Lx55_42
.Lx55_57:
                        cmp              esi, 2
                                                                                        jne   .Lx55_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx55_43
                        mov              r9, rax
                                                                                        jmp   .Lx55_42
.Lx55_58:
                        cmp              eax, 72
                                                                                        jne   .Lx55_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_43
                        cmp              rax, r9
                                                                                        je    .Lx55_43
                        mov              r9, rax
                                                                                        jmp   .Lx55_42
.Lx55_43:
                        cmp              r8, r9
                                                                                        je    .Lx55_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_44
                        cmp              eax, 104
                                                                                        je    .Lx55_44
                        cmp              eax, 72
                                                                                        jne   .Lx55_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx55_44
                                                                                        jmp   .Lx55_45
.Lx55_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_53
                        cmp              eax, 104
                                                                                        je    .Lx55_53
                        cmp              eax, 72
                                                                                        jne   .Lx55_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx55_53
                                                                                        jmp   .Lx55_46
.Lx55_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx55_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx55_53
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
                                                                                        jmp   .Lx55_51
.Lx55_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_47
                        cmp              eax, 104
                                                                                        je    .Lx55_47
                        cmp              eax, 72
                                                                                        jne   .Lx55_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx55_47
                                                                                        jmp   .Lx55_48
.Lx55_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx55_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx55_53
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
                                                                                        jmp   .Lx55_51
.Lx55_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx55_49
                        cmp              edx, 80
                                                                                        je    .Lx55_53
                                                                                        jmp   .Lx55_52
.Lx55_49:
                        cmp              edx, 80
                                                                                        je    .Lx55_52
                        cmp              ecx, 5
                                                                                        je    .Lx55_53
                        cmp              edx, 5
                                                                                        je    .Lx55_53
                        cmp              ecx, 3
                                                                                        jne   .Lx55_50
                        cmp              edx, 3
                                                                                        jne   .Lx55_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx55_51
                                                                                        jmp   .Lx55_52
.Lx55_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx55_53
.Lx55_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx55_54
.Lx55_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx55_54
.Lx55_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx55_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n19_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx62_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx62_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_61
                        cmp              esi, 1
                                                                                        jne   .Lx62_62
                        mov              r8, rax
                                                                                        jmp   .Lx62_60
.Lx62_62:
                        cmp              esi, 2
                                                                                        jne   .Lx62_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_61
                        mov              r8, rax
                                                                                        jmp   .Lx62_60
.Lx62_63:
                        cmp              eax, 72
                                                                                        jne   .Lx62_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_61
                        cmp              rax, r8
                                                                                        je    .Lx62_61
                        mov              r8, rax
                                                                                        jmp   .Lx62_60
.Lx62_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_80
                        cmp              eax, 104
                                                                                        je    .Lx62_80
                        cmp              eax, 72
                                                                                        jne   .Lx62_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx62_80
                                                                                        jmp   .Lx62_74
.Lx62_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx62_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx62_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx62_73
                        lea              r9, [rbp + 432]
.Lx62_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx62_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_65
                        cmp              esi, 1
                                                                                        jne   .Lx62_66
                        mov              r9, rax
                                                                                        jmp   .Lx62_64
.Lx62_66:
                        cmp              esi, 2
                                                                                        jne   .Lx62_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_65
                        mov              r9, rax
                                                                                        jmp   .Lx62_64
.Lx62_67:
                        cmp              eax, 72
                                                                                        jne   .Lx62_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_65
                        cmp              rax, r9
                                                                                        je    .Lx62_65
                        mov              r9, rax
                                                                                        jmp   .Lx62_64
.Lx62_65:
                        lea              rcx, [rbp + 448]
.Lx62_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx62_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx62_69
                        cmp              esi, 1
                                                                                        jne   .Lx62_70
                        mov              rcx, rax
                                                                                        jmp   .Lx62_68
.Lx62_70:
                        cmp              esi, 2
                                                                                        jne   .Lx62_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_69
                        mov              rcx, rax
                                                                                        jmp   .Lx62_68
.Lx62_71:
                        cmp              eax, 72
                                                                                        jne   .Lx62_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx62_69
                        cmp              rax, rcx
                                                                                        je    .Lx62_69
                        mov              rcx, rax
                                                                                        jmp   .Lx62_68
.Lx62_69:
                        cmp              r9, rcx
                                                                                        je    .Lx62_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_75
                        cmp              eax, 104
                                                                                        je    .Lx62_75
                        cmp              eax, 72
                                                                                        jne   .Lx62_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx62_75
                                                                                        jmp   .Lx62_72
.Lx62_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_76
                        cmp              eax, 104
                                                                                        je    .Lx62_76
                        cmp              eax, 72
                                                                                        jne   .Lx62_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx62_76
                                                                                        jmp   .Lx62_72
.Lx62_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx62_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx62_72
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
                                                                                        jmp   .Lx62_77
.Lx62_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx62_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx62_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx62_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx62_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx62_72
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
                        lea              r9, [rbp + 432]
.Lx62_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx62_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_82
                        cmp              esi, 1
                                                                                        jne   .Lx62_83
                        mov              r9, rax
                                                                                        jmp   .Lx62_81
.Lx62_83:
                        cmp              esi, 2
                                                                                        jne   .Lx62_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_82
                        mov              r9, rax
                                                                                        jmp   .Lx62_81
.Lx62_84:
                        cmp              eax, 72
                                                                                        jne   .Lx62_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_82
                        cmp              rax, r9
                                                                                        je    .Lx62_82
                        mov              r9, rax
                                                                                        jmp   .Lx62_81
.Lx62_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_85
                        cmp              eax, 104
                                                                                        je    .Lx62_85
                        cmp              eax, 72
                                                                                        jne   .Lx62_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx62_85
                                                                                        jmp   .Lx62_86
.Lx62_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx62_87
.Lx62_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx62_87:
                        lea              rcx, [rbp + 448]
.Lx62_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx62_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx62_89
                        cmp              esi, 1
                                                                                        jne   .Lx62_90
                        mov              rcx, rax
                                                                                        jmp   .Lx62_88
.Lx62_90:
                        cmp              esi, 2
                                                                                        jne   .Lx62_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_89
                        mov              rcx, rax
                                                                                        jmp   .Lx62_88
.Lx62_91:
                        cmp              eax, 72
                                                                                        jne   .Lx62_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx62_89
                        cmp              rax, rcx
                                                                                        je    .Lx62_89
                        mov              rcx, rax
                                                                                        jmp   .Lx62_88
.Lx62_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_92
                        cmp              eax, 104
                                                                                        je    .Lx62_92
                        cmp              eax, 72
                                                                                        jne   .Lx62_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx62_92
                                                                                        jmp   .Lx62_93
.Lx62_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx62_94
.Lx62_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx62_94:
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
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx62_77
.Lx62_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx62_77
.Lx62_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx62_77:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n21_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx69_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_61
                        cmp              esi, 1
                                                                                        jne   .Lx69_62
                        mov              r8, rax
                                                                                        jmp   .Lx69_60
.Lx69_62:
                        cmp              esi, 2
                                                                                        jne   .Lx69_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_61
                        mov              r8, rax
                                                                                        jmp   .Lx69_60
.Lx69_63:
                        cmp              eax, 72
                                                                                        jne   .Lx69_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_61
                        cmp              rax, r8
                                                                                        je    .Lx69_61
                        mov              r8, rax
                                                                                        jmp   .Lx69_60
.Lx69_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_80
                        cmp              eax, 104
                                                                                        je    .Lx69_80
                        cmp              eax, 72
                                                                                        jne   .Lx69_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx69_80
                                                                                        jmp   .Lx69_74
.Lx69_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx69_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx69_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx69_73
                        lea              r9, [rbp + 320]
.Lx69_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_65
                        cmp              esi, 1
                                                                                        jne   .Lx69_66
                        mov              r9, rax
                                                                                        jmp   .Lx69_64
.Lx69_66:
                        cmp              esi, 2
                                                                                        jne   .Lx69_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_65
                        mov              r9, rax
                                                                                        jmp   .Lx69_64
.Lx69_67:
                        cmp              eax, 72
                                                                                        jne   .Lx69_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_65
                        cmp              rax, r9
                                                                                        je    .Lx69_65
                        mov              r9, rax
                                                                                        jmp   .Lx69_64
.Lx69_65:
                        lea              rcx, [rbp + 336]
.Lx69_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_69
                        cmp              esi, 1
                                                                                        jne   .Lx69_70
                        mov              rcx, rax
                                                                                        jmp   .Lx69_68
.Lx69_70:
                        cmp              esi, 2
                                                                                        jne   .Lx69_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_69
                        mov              rcx, rax
                                                                                        jmp   .Lx69_68
.Lx69_71:
                        cmp              eax, 72
                                                                                        jne   .Lx69_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_69
                        cmp              rax, rcx
                                                                                        je    .Lx69_69
                        mov              rcx, rax
                                                                                        jmp   .Lx69_68
.Lx69_69:
                        cmp              r9, rcx
                                                                                        je    .Lx69_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_75
                        cmp              eax, 104
                                                                                        je    .Lx69_75
                        cmp              eax, 72
                                                                                        jne   .Lx69_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_75
                                                                                        jmp   .Lx69_72
.Lx69_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_76
                        cmp              eax, 104
                                                                                        je    .Lx69_76
                        cmp              eax, 72
                                                                                        jne   .Lx69_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx69_76
                                                                                        jmp   .Lx69_72
.Lx69_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx69_72
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
                                                                                        jmp   .Lx69_77
.Lx69_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx69_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx69_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx69_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx69_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx69_72
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
.Lx69_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_82
                        cmp              esi, 1
                                                                                        jne   .Lx69_83
                        mov              r9, rax
                                                                                        jmp   .Lx69_81
.Lx69_83:
                        cmp              esi, 2
                                                                                        jne   .Lx69_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_82
                        mov              r9, rax
                                                                                        jmp   .Lx69_81
.Lx69_84:
                        cmp              eax, 72
                                                                                        jne   .Lx69_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx69_82
                        cmp              rax, r9
                                                                                        je    .Lx69_82
                        mov              r9, rax
                                                                                        jmp   .Lx69_81
.Lx69_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_85
                        cmp              eax, 104
                                                                                        je    .Lx69_85
                        cmp              eax, 72
                                                                                        jne   .Lx69_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx69_85
                                                                                        jmp   .Lx69_86
.Lx69_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx69_87
.Lx69_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx69_87:
                        lea              rcx, [rbp + 336]
.Lx69_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx69_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_89
                        cmp              esi, 1
                                                                                        jne   .Lx69_90
                        mov              rcx, rax
                                                                                        jmp   .Lx69_88
.Lx69_90:
                        cmp              esi, 2
                                                                                        jne   .Lx69_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx69_89
                        mov              rcx, rax
                                                                                        jmp   .Lx69_88
.Lx69_91:
                        cmp              eax, 72
                                                                                        jne   .Lx69_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx69_89
                        cmp              rax, rcx
                                                                                        je    .Lx69_89
                        mov              rcx, rax
                                                                                        jmp   .Lx69_88
.Lx69_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx69_92
                        cmp              eax, 104
                                                                                        je    .Lx69_92
                        cmp              eax, 72
                                                                                        jne   .Lx69_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx69_92
                                                                                        jmp   .Lx69_93
.Lx69_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx69_94
.Lx69_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx69_94:
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
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx69_77
.Lx69_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx69_77
.Lx69_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx69_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx77_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx77_21
.Lx77_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx77_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx77_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx77_23
.Lx77_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx77_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx77_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx77_25
.Lx77_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx77_25:
                        lea              rax, [rip + .Lx77_7]
                        push             rax
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx77_1
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4]
                                                                                        jmp   rax
.Lx77_3:
                        mov              qword ptr [rbp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx77_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx77_2
.Lx77_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx77_2
.Lx77_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx77_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx77_2
.Lx77_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx77_2
.Lx77_1:
                        call             rt_faildescr@PLT
.Lx77_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n28_suspend_α
n27_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 192], 0
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 216]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n29_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              ecx, 64
                        mov              r8d, 896
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n29_call_builtin_prolog_α
                        lea              r11, [rip + .Lx77_7]
                        push             r11
                        lea              rcx, [rip + .Lx77_3]
                        lea              rdx, [rip + .Lx77_4]
                                                                                        jmp   rax
.Lx77_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n28_suspend_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx79_61
                        mov              qword ptr [rbp + 896], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 896]
.Lx79_61:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n28_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sel$2F3_γ
n28_suspend_β:
                                                                                        jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_sel$2F3_ω
                                                                                        jmp   proc_sel$2F3_ω
n29_call_builtin_prolog_β:
                                                                                        jmp   proc_sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_β:
                                                                                        jmp   qword ptr [rbp + 896]
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx80_50
                        mov              qword ptr [rbp + 896], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx80_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1016]
                        mov              rbp, qword ptr [rbp + 1032]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_ω:
                        lea              rsp, [rbp + 1040]
                        mov              rcx, qword ptr [rbp + 1024]
                        mov              rbp, qword ptr [rbp + 1032]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_queens$2F2_α
proc_queens$2F2_α:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_queens$2F2_α_body:
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx94_102
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                                                                                        jmp   .Lx94_101
.Lx94_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx94_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx94_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx94_101
.Lx94_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx94_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_queens$2F2_ω
                                                                                        jmp   n82_var_ref_α
n81_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx99_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx99_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_41
                        cmp              esi, 1
                                                                                        jne   .Lx99_55
                        mov              r8, rax
                                                                                        jmp   .Lx99_40
.Lx99_55:
                        cmp              esi, 2
                                                                                        jne   .Lx99_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx99_41
                        mov              r8, rax
                                                                                        jmp   .Lx99_40
.Lx99_56:
                        cmp              eax, 72
                                                                                        jne   .Lx99_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_41
                        cmp              rax, r8
                                                                                        je    .Lx99_41
                        mov              r8, rax
                                                                                        jmp   .Lx99_40
.Lx99_41:
                        lea              r9, [rbp + 368]
.Lx99_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx99_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_43
                        cmp              esi, 1
                                                                                        jne   .Lx99_57
                        mov              r9, rax
                                                                                        jmp   .Lx99_42
.Lx99_57:
                        cmp              esi, 2
                                                                                        jne   .Lx99_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx99_43
                        mov              r9, rax
                                                                                        jmp   .Lx99_42
.Lx99_58:
                        cmp              eax, 72
                                                                                        jne   .Lx99_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_43
                        cmp              rax, r9
                                                                                        je    .Lx99_43
                        mov              r9, rax
                                                                                        jmp   .Lx99_42
.Lx99_43:
                        cmp              r8, r9
                                                                                        je    .Lx99_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_44
                        cmp              eax, 104
                                                                                        je    .Lx99_44
                        cmp              eax, 72
                                                                                        jne   .Lx99_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx99_44
                                                                                        jmp   .Lx99_45
.Lx99_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_53
                        cmp              eax, 104
                                                                                        je    .Lx99_53
                        cmp              eax, 72
                                                                                        jne   .Lx99_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx99_53
                                                                                        jmp   .Lx99_46
.Lx99_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx99_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx99_53
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
                                                                                        jmp   .Lx99_51
.Lx99_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_47
                        cmp              eax, 104
                                                                                        je    .Lx99_47
                        cmp              eax, 72
                                                                                        jne   .Lx99_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx99_47
                                                                                        jmp   .Lx99_48
.Lx99_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx99_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx99_53
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
                                                                                        jmp   .Lx99_51
.Lx99_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx99_49
                        cmp              edx, 80
                                                                                        je    .Lx99_53
                                                                                        jmp   .Lx99_52
.Lx99_49:
                        cmp              edx, 80
                                                                                        je    .Lx99_52
                        cmp              ecx, 5
                                                                                        je    .Lx99_53
                        cmp              edx, 5
                                                                                        je    .Lx99_53
                        cmp              ecx, 3
                                                                                        jne   .Lx99_50
                        cmp              edx, 3
                                                                                        jne   .Lx99_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx99_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx99_51
                                                                                        jmp   .Lx99_52
.Lx99_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx99_53
.Lx99_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx99_54
.Lx99_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx99_54
.Lx99_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx99_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n85_var_ref_α
n84_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n87_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
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
                        lea              r9, [rbp + 288]
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
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n88_var_ref_α
n87_call_builtin_prolog_β:
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n88_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n89_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 224], 2                       # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n90_var_ref_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n91_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n91_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx111_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx111_21
.Lx111_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx111_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx111_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx111_23
.Lx111_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx111_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx111_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx111_25
.Lx111_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx111_25:
                        lea              rax, [rip + .Lx111_7]
                        push             rax
                        mov              edi, 4                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx111_1
                        lea              rcx, [rip + .Lx111_3]
                        lea              rdx, [rip + .Lx111_4]
                                                                                        jmp   rax
.Lx111_3:
                        mov              qword ptr [rbp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx111_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx111_2
.Lx111_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx111_2
.Lx111_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx111_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx111_2
.Lx111_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx111_2
.Lx111_1:
                        call             rt_faildescr@PLT
.Lx111_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n92_suspend_α
n91_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 176], 0
                        lea              rdi, [rbp + 192]
                        lea              rsi, [rbp + 200]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n93_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              ecx, 64
                        mov              r8d, 1520
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 4                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n93_call_builtin_prolog_α
                        lea              r11, [rip + .Lx111_7]
                        push             r11
                        lea              rcx, [rip + .Lx111_3]
                        lea              rdx, [rip + .Lx111_4]
                                                                                        jmp   rax
.Lx111_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n93_call_builtin_prolog_α
                                                                                        jmp   n92_suspend_α
.Lx111_0:
                        .quad            .Lx111_0_s
.Lx111_0_s:
                        .string          "queens_2/3"
#-----------------------------------------------------------------------------------------------------------------------
n92_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx113_61
                        mov              qword ptr [rbp + 416], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 416]
.Lx113_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n92_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n92_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_queens$2F2_γ
n92_suspend_β:
                                                                                        jmp   n91_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_queens$2F2_ω
                                                                                        jmp   proc_queens$2F2_ω
n93_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx114_50
                        mov              qword ptr [rbp + 416], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx114_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 512]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_ω:
                        lea              rsp, [rbp + 512]
                        mov              rcx, qword ptr [rbp + 496]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_not_attack$2F2_α
proc_not_attack$2F2_α:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 480
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 2
                        call             rt_icn_zframe_args_install@PLT
proc_not_attack$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx129_102
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                                                                                        jmp   .Lx129_101
.Lx129_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx129_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx129_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx129_101
.Lx129_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx129_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_not_attack$2F2_ω
                                                                                        jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n117_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n118_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        lea              r8, [rbp + 368]
.Lx134_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx134_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        cmp              esi, 1
                                                                                        jne   .Lx134_55
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_55:
                        cmp              esi, 2
                                                                                        jne   .Lx134_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_56:
                        cmp              eax, 72
                                                                                        jne   .Lx134_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_41
                        cmp              rax, r8
                                                                                        je    .Lx134_41
                        mov              r8, rax
                                                                                        jmp   .Lx134_40
.Lx134_41:
                        lea              r9, [rbp + 384]
.Lx134_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx134_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        cmp              esi, 1
                                                                                        jne   .Lx134_57
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_57:
                        cmp              esi, 2
                                                                                        jne   .Lx134_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_58:
                        cmp              eax, 72
                                                                                        jne   .Lx134_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx134_43
                        cmp              rax, r9
                                                                                        je    .Lx134_43
                        mov              r9, rax
                                                                                        jmp   .Lx134_42
.Lx134_43:
                        cmp              r8, r9
                                                                                        je    .Lx134_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_44
                        cmp              eax, 104
                                                                                        je    .Lx134_44
                        cmp              eax, 72
                                                                                        jne   .Lx134_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx134_44
                                                                                        jmp   .Lx134_45
.Lx134_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_53
                        cmp              eax, 104
                                                                                        je    .Lx134_53
                        cmp              eax, 72
                                                                                        jne   .Lx134_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx134_53
                                                                                        jmp   .Lx134_46
.Lx134_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx134_53
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
                                                                                        jmp   .Lx134_51
.Lx134_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx134_47
                        cmp              eax, 104
                                                                                        je    .Lx134_47
                        cmp              eax, 72
                                                                                        jne   .Lx134_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx134_47
                                                                                        jmp   .Lx134_48
.Lx134_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx134_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx134_53
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
                                                                                        jmp   .Lx134_51
.Lx134_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx134_49
                        cmp              edx, 80
                                                                                        je    .Lx134_53
                                                                                        jmp   .Lx134_52
.Lx134_49:
                        cmp              edx, 80
                                                                                        je    .Lx134_52
                        cmp              ecx, 5
                                                                                        je    .Lx134_53
                        cmp              edx, 5
                                                                                        je    .Lx134_53
                        cmp              ecx, 3
                                                                                        jne   .Lx134_50
                        cmp              edx, 3
                                                                                        jne   .Lx134_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx134_51
                                                                                        jmp   .Lx134_52
.Lx134_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx134_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx134_53
.Lx134_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx134_54
.Lx134_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx134_54
.Lx134_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx134_54:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n119_var_ref_α
n118_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n121_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx139_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx139_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx139_41
                        cmp              esi, 1
                                                                                        jne   .Lx139_55
                        mov              r8, rax
                                                                                        jmp   .Lx139_40
.Lx139_55:
                        cmp              esi, 2
                                                                                        jne   .Lx139_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx139_41
                        mov              r8, rax
                                                                                        jmp   .Lx139_40
.Lx139_56:
                        cmp              eax, 72
                                                                                        jne   .Lx139_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx139_41
                        cmp              rax, r8
                                                                                        je    .Lx139_41
                        mov              r8, rax
                                                                                        jmp   .Lx139_40
.Lx139_41:
                        lea              r9, [rbp + 304]
.Lx139_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx139_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx139_43
                        cmp              esi, 1
                                                                                        jne   .Lx139_57
                        mov              r9, rax
                                                                                        jmp   .Lx139_42
.Lx139_57:
                        cmp              esi, 2
                                                                                        jne   .Lx139_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx139_43
                        mov              r9, rax
                                                                                        jmp   .Lx139_42
.Lx139_58:
                        cmp              eax, 72
                                                                                        jne   .Lx139_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx139_43
                        cmp              rax, r9
                                                                                        je    .Lx139_43
                        mov              r9, rax
                                                                                        jmp   .Lx139_42
.Lx139_43:
                        cmp              r8, r9
                                                                                        je    .Lx139_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx139_44
                        cmp              eax, 104
                                                                                        je    .Lx139_44
                        cmp              eax, 72
                                                                                        jne   .Lx139_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx139_44
                                                                                        jmp   .Lx139_45
.Lx139_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx139_53
                        cmp              eax, 104
                                                                                        je    .Lx139_53
                        cmp              eax, 72
                                                                                        jne   .Lx139_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx139_53
                                                                                        jmp   .Lx139_46
.Lx139_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx139_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx139_53
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
                                                                                        jmp   .Lx139_51
.Lx139_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx139_47
                        cmp              eax, 104
                                                                                        je    .Lx139_47
                        cmp              eax, 72
                                                                                        jne   .Lx139_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx139_47
                                                                                        jmp   .Lx139_48
.Lx139_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx139_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx139_53
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
                                                                                        jmp   .Lx139_51
.Lx139_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx139_49
                        cmp              edx, 80
                                                                                        je    .Lx139_53
                                                                                        jmp   .Lx139_52
.Lx139_49:
                        cmp              edx, 80
                                                                                        je    .Lx139_52
                        cmp              ecx, 5
                                                                                        je    .Lx139_53
                        cmp              edx, 5
                                                                                        je    .Lx139_53
                        cmp              ecx, 3
                                                                                        jne   .Lx139_50
                        cmp              edx, 3
                                                                                        jne   .Lx139_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx139_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx139_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx139_51
                                                                                        jmp   .Lx139_52
.Lx139_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx139_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx139_53
.Lx139_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx139_54
.Lx139_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx139_54
.Lx139_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx139_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n122_var_ref_α
n121_call_builtin_prolog_β:
                                                                                        jmp   n128_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n124_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n125_call_proc_staged_α
.Lx144_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n125_call_proc_staged_α:
                        lea              rsi, [rbp + 224]
                        lea              rdx, [rbp + 240]
                        lea              rcx, [rbp + 256]
                        call             proc_not_attack$2F3_dcα
                                                                                        jmp   .Lx146_2
.Lx146_2:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n128_call_builtin_prolog_α
                                                                                        jmp   n126_move_label_α
n125_call_proc_staged_β:
                                                                                        jmp   n128_call_builtin_prolog_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n126_move_label_α:
                        lea              rax, [rip + n125_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_not_attack$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n127_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    proc_not_attack$2F2_ω
                                                                                        jmp   rax
n127_disjunction_β:
                                                                                        jmp   proc_not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_not_attack$2F2_ω
                                                                                        jmp   proc_not_attack$2F2_ω
n128_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_β:
                                                                                        jmp   n127_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 512]
                        mov              rcx, qword ptr [rbp + 488]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_ω:
                        lea              rsp, [rbp + 512]
                        mov              rcx, qword ptr [rbp + 496]
                        mov              rbp, qword ptr [rbp + 504]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx152_2]
                        lea              rdx, [rip + .Lx152_3]
                                                                                        jmp   proc_not_attack$2F2_α
.Lx152_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx152_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_not_attack$2F3_α
proc_not_attack$2F3_α:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1632
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 3
                        mov              edx, 6
                        call             rt_icn_zframe_args_install@PLT
proc_not_attack$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx206_102
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
                                                                                        jmp   .Lx206_101
.Lx206_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx206_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx206_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx206_101
.Lx206_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx206_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   n154_var_ref_α
n153_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                                                                                        jmp   n155_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 3                      # result
                        mov              rax, qword ptr [rip + .Lx209_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n156_lit_string_α
.Lx209_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:
                        mov              qword ptr [rbp + 1520], 2                      # result
                        mov              dword ptr [rbp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n157_call_builtin_prolog_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n157_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        lea              r8, [rbp + 1440]
.Lx211_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx211_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx211_111
                        cmp              esi, 1
                                                                                        jne   .Lx211_112
                        mov              r8, rax
                                                                                        jmp   .Lx211_110
.Lx211_112:
                        cmp              esi, 2
                                                                                        jne   .Lx211_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx211_111
                        mov              r8, rax
                                                                                        jmp   .Lx211_110
.Lx211_113:
                        cmp              eax, 72
                                                                                        jne   .Lx211_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx211_111
                        cmp              rax, r8
                                                                                        je    .Lx211_111
                        mov              r8, rax
                                                                                        jmp   .Lx211_110
.Lx211_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx211_114
                        cmp              eax, 104
                                                                                        je    .Lx211_114
                        cmp              eax, 72
                                                                                        jne   .Lx211_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx211_114
                                                                                        jmp   .Lx211_118
.Lx211_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx211_115
                        cmp              eax, 3
                                                                                        je    .Lx211_114
                        cmp              eax, 2
                                                                                        jne   .Lx211_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx211_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx211_114
                                                                                        jmp   .Lx211_116
.Lx211_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx211_117
.Lx211_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx211_117
.Lx211_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx211_117:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 104
                                                                                        je    n170_var_ref_α
                                                                                        jmp   n158_var_ref_α
n157_call_builtin_prolog_β:
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n159_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:
                        mov              qword ptr [rbp + 1408], 2                      # result
                        mov              dword ptr [rbp + 1412], 2
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n160_call_builtin_prolog_α
.Lx214_0:
                        .quad            .Lx214_0_s
.Lx214_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n160_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lx215_2]
                                                                                        jmp   .Lx215_3
.Lx215_2:
                        .quad            .Lx215_2_s
.Lx215_2_s:
                        .string          "[]"
.Lx215_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 104
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n161_var_ref_α
n160_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n162_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n162_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n163_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n163_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        lea              r8, [rbp + 1280]
.Lx220_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx220_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_41
                        cmp              esi, 1
                                                                                        jne   .Lx220_55
                        mov              r8, rax
                                                                                        jmp   .Lx220_40
.Lx220_55:
                        cmp              esi, 2
                                                                                        jne   .Lx220_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_41
                        mov              r8, rax
                                                                                        jmp   .Lx220_40
.Lx220_56:
                        cmp              eax, 72
                                                                                        jne   .Lx220_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_41
                        cmp              rax, r8
                                                                                        je    .Lx220_41
                        mov              r8, rax
                                                                                        jmp   .Lx220_40
.Lx220_41:
                        lea              r9, [rbp + 1296]
.Lx220_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx220_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_43
                        cmp              esi, 1
                                                                                        jne   .Lx220_57
                        mov              r9, rax
                                                                                        jmp   .Lx220_42
.Lx220_57:
                        cmp              esi, 2
                                                                                        jne   .Lx220_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx220_43
                        mov              r9, rax
                                                                                        jmp   .Lx220_42
.Lx220_58:
                        cmp              eax, 72
                                                                                        jne   .Lx220_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx220_43
                        cmp              rax, r9
                                                                                        je    .Lx220_43
                        mov              r9, rax
                                                                                        jmp   .Lx220_42
.Lx220_43:
                        cmp              r8, r9
                                                                                        je    .Lx220_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_44
                        cmp              eax, 104
                                                                                        je    .Lx220_44
                        cmp              eax, 72
                                                                                        jne   .Lx220_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx220_44
                                                                                        jmp   .Lx220_45
.Lx220_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_53
                        cmp              eax, 104
                                                                                        je    .Lx220_53
                        cmp              eax, 72
                                                                                        jne   .Lx220_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx220_53
                                                                                        jmp   .Lx220_46
.Lx220_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx220_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx220_53
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
                                                                                        jmp   .Lx220_51
.Lx220_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx220_47
                        cmp              eax, 104
                                                                                        je    .Lx220_47
                        cmp              eax, 72
                                                                                        jne   .Lx220_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx220_47
                                                                                        jmp   .Lx220_48
.Lx220_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx220_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx220_53
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
                                                                                        jmp   .Lx220_51
.Lx220_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx220_49
                        cmp              edx, 80
                                                                                        je    .Lx220_53
                                                                                        jmp   .Lx220_52
.Lx220_49:
                        cmp              edx, 80
                                                                                        je    .Lx220_52
                        cmp              ecx, 5
                                                                                        je    .Lx220_53
                        cmp              edx, 5
                                                                                        je    .Lx220_53
                        cmp              ecx, 3
                                                                                        jne   .Lx220_50
                        cmp              edx, 3
                                                                                        jne   .Lx220_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx220_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx220_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx220_51
                                                                                        jmp   .Lx220_52
.Lx220_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx220_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx220_53
.Lx220_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx220_54
.Lx220_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx220_54
.Lx220_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx220_54:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 104
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n164_var_ref_α
n163_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n165_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                                                                                        jmp   n166_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n166_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        lea              r8, [rbp + 1200]
.Lx225_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_41
                        cmp              esi, 1
                                                                                        jne   .Lx225_55
                        mov              r8, rax
                                                                                        jmp   .Lx225_40
.Lx225_55:
                        cmp              esi, 2
                                                                                        jne   .Lx225_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_41
                        mov              r8, rax
                                                                                        jmp   .Lx225_40
.Lx225_56:
                        cmp              eax, 72
                                                                                        jne   .Lx225_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_41
                        cmp              rax, r8
                                                                                        je    .Lx225_41
                        mov              r8, rax
                                                                                        jmp   .Lx225_40
.Lx225_41:
                        lea              r9, [rbp + 1216]
.Lx225_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_43
                        cmp              esi, 1
                                                                                        jne   .Lx225_57
                        mov              r9, rax
                                                                                        jmp   .Lx225_42
.Lx225_57:
                        cmp              esi, 2
                                                                                        jne   .Lx225_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_43
                        mov              r9, rax
                                                                                        jmp   .Lx225_42
.Lx225_58:
                        cmp              eax, 72
                                                                                        jne   .Lx225_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_43
                        cmp              rax, r9
                                                                                        je    .Lx225_43
                        mov              r9, rax
                                                                                        jmp   .Lx225_42
.Lx225_43:
                        cmp              r8, r9
                                                                                        je    .Lx225_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_44
                        cmp              eax, 104
                                                                                        je    .Lx225_44
                        cmp              eax, 72
                                                                                        jne   .Lx225_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx225_44
                                                                                        jmp   .Lx225_45
.Lx225_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_53
                        cmp              eax, 104
                                                                                        je    .Lx225_53
                        cmp              eax, 72
                                                                                        jne   .Lx225_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx225_53
                                                                                        jmp   .Lx225_46
.Lx225_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx225_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx225_53
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
                                                                                        jmp   .Lx225_51
.Lx225_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_47
                        cmp              eax, 104
                                                                                        je    .Lx225_47
                        cmp              eax, 72
                                                                                        jne   .Lx225_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx225_47
                                                                                        jmp   .Lx225_48
.Lx225_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx225_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx225_53
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
                                                                                        jmp   .Lx225_51
.Lx225_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx225_49
                        cmp              edx, 80
                                                                                        je    .Lx225_53
                                                                                        jmp   .Lx225_52
.Lx225_49:
                        cmp              edx, 80
                                                                                        je    .Lx225_52
                        cmp              ecx, 5
                                                                                        je    .Lx225_53
                        cmp              edx, 5
                                                                                        je    .Lx225_53
                        cmp              ecx, 3
                                                                                        jne   .Lx225_50
                        cmp              edx, 3
                                                                                        jne   .Lx225_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx225_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx225_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx225_51
                                                                                        jmp   .Lx225_52
.Lx225_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx225_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx225_53
.Lx225_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx225_54
.Lx225_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx225_54
.Lx225_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx225_54:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 104
                                                                                        je    n169_call_builtin_prolog_α
                                                                                        jmp   n167_cut_α
n166_call_builtin_prolog_β:
                                                                                        jmp   n169_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n167_cut_α:
                                                                                        jmp   n168_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n168_move_label_α:
                        lea              rax, [rip + n169_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_not_attack$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n169_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              eax, 104
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   n170_var_ref_α
n169_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                                                                                        jmp   n171_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 3                      # result
                        mov              rax, qword ptr [rip + .Lx232_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n172_lit_integer_α
.Lx232_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 3                      # result
                        mov              rax, qword ptr [rip + .Lx233_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n173_call_builtin_prolog_α
.Lx233_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n173_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        lea              r8, [rbp + 1056]
.Lx234_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx234_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_111
                        cmp              esi, 1
                                                                                        jne   .Lx234_112
                        mov              r8, rax
                                                                                        jmp   .Lx234_110
.Lx234_112:
                        cmp              esi, 2
                                                                                        jne   .Lx234_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_111
                        mov              r8, rax
                                                                                        jmp   .Lx234_110
.Lx234_113:
                        cmp              eax, 72
                                                                                        jne   .Lx234_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_111
                        cmp              rax, r8
                                                                                        je    .Lx234_111
                        mov              r8, rax
                                                                                        jmp   .Lx234_110
.Lx234_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_114
                        cmp              eax, 104
                                                                                        je    .Lx234_114
                        cmp              eax, 72
                                                                                        jne   .Lx234_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx234_114
                                                                                        jmp   .Lx234_118
.Lx234_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx234_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx234_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx234_115
                                                                                        jmp   .Lx234_114
.Lx234_119:
                        cmp              eax, 3
                                                                                        jne   .Lx234_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx234_114
                                                                                        jmp   .Lx234_115
.Lx234_120:
                        cmp              eax, 2
                                                                                        jne   .Lx234_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx234_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx234_114
                                                                                        jmp   .Lx234_115
.Lx234_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx234_117
.Lx234_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx234_117
.Lx234_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx234_117:
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n174_var_ref_α
n173_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n175_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n176_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n177_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n177_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        lea              r8, [rbp + 960]
.Lx241_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx241_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx241_61
                        cmp              esi, 1
                                                                                        jne   .Lx241_62
                        mov              r8, rax
                                                                                        jmp   .Lx241_60
.Lx241_62:
                        cmp              esi, 2
                                                                                        jne   .Lx241_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx241_61
                        mov              r8, rax
                                                                                        jmp   .Lx241_60
.Lx241_63:
                        cmp              eax, 72
                                                                                        jne   .Lx241_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx241_61
                        cmp              rax, r8
                                                                                        je    .Lx241_61
                        mov              r8, rax
                                                                                        jmp   .Lx241_60
.Lx241_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx241_80
                        cmp              eax, 104
                                                                                        je    .Lx241_80
                        cmp              eax, 72
                                                                                        jne   .Lx241_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx241_80
                                                                                        jmp   .Lx241_74
.Lx241_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx241_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx241_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx241_73
                        lea              r9, [rbp + 976]
.Lx241_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx241_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx241_65
                        cmp              esi, 1
                                                                                        jne   .Lx241_66
                        mov              r9, rax
                                                                                        jmp   .Lx241_64
.Lx241_66:
                        cmp              esi, 2
                                                                                        jne   .Lx241_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx241_65
                        mov              r9, rax
                                                                                        jmp   .Lx241_64
.Lx241_67:
                        cmp              eax, 72
                                                                                        jne   .Lx241_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx241_65
                        cmp              rax, r9
                                                                                        je    .Lx241_65
                        mov              r9, rax
                                                                                        jmp   .Lx241_64
.Lx241_65:
                        lea              rcx, [rbp + 992]
.Lx241_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx241_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx241_69
                        cmp              esi, 1
                                                                                        jne   .Lx241_70
                        mov              rcx, rax
                                                                                        jmp   .Lx241_68
.Lx241_70:
                        cmp              esi, 2
                                                                                        jne   .Lx241_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx241_69
                        mov              rcx, rax
                                                                                        jmp   .Lx241_68
.Lx241_71:
                        cmp              eax, 72
                                                                                        jne   .Lx241_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx241_69
                        cmp              rax, rcx
                                                                                        je    .Lx241_69
                        mov              rcx, rax
                                                                                        jmp   .Lx241_68
.Lx241_69:
                        cmp              r9, rcx
                                                                                        je    .Lx241_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx241_75
                        cmp              eax, 104
                                                                                        je    .Lx241_75
                        cmp              eax, 72
                                                                                        jne   .Lx241_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx241_75
                                                                                        jmp   .Lx241_72
.Lx241_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx241_76
                        cmp              eax, 104
                                                                                        je    .Lx241_76
                        cmp              eax, 72
                                                                                        jne   .Lx241_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx241_76
                                                                                        jmp   .Lx241_72
.Lx241_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx241_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx241_72
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
                                                                                        jmp   .Lx241_77
.Lx241_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx241_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx241_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx241_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx241_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx241_72
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
                        lea              r9, [rbp + 976]
.Lx241_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx241_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx241_82
                        cmp              esi, 1
                                                                                        jne   .Lx241_83
                        mov              r9, rax
                                                                                        jmp   .Lx241_81
.Lx241_83:
                        cmp              esi, 2
                                                                                        jne   .Lx241_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx241_82
                        mov              r9, rax
                                                                                        jmp   .Lx241_81
.Lx241_84:
                        cmp              eax, 72
                                                                                        jne   .Lx241_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx241_82
                        cmp              rax, r9
                                                                                        je    .Lx241_82
                        mov              r9, rax
                                                                                        jmp   .Lx241_81
.Lx241_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx241_85
                        cmp              eax, 104
                                                                                        je    .Lx241_85
                        cmp              eax, 72
                                                                                        jne   .Lx241_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx241_85
                                                                                        jmp   .Lx241_86
.Lx241_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx241_87
.Lx241_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx241_87:
                        lea              rcx, [rbp + 992]
.Lx241_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx241_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx241_89
                        cmp              esi, 1
                                                                                        jne   .Lx241_90
                        mov              rcx, rax
                                                                                        jmp   .Lx241_88
.Lx241_90:
                        cmp              esi, 2
                                                                                        jne   .Lx241_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx241_89
                        mov              rcx, rax
                                                                                        jmp   .Lx241_88
.Lx241_91:
                        cmp              eax, 72
                                                                                        jne   .Lx241_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx241_89
                        cmp              rax, rcx
                                                                                        je    .Lx241_89
                        mov              rcx, rax
                                                                                        jmp   .Lx241_88
.Lx241_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx241_92
                        cmp              eax, 104
                                                                                        je    .Lx241_92
                        cmp              eax, 72
                                                                                        jne   .Lx241_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx241_92
                                                                                        jmp   .Lx241_93
.Lx241_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx241_94
.Lx241_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx241_94:
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
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx241_77
.Lx241_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx241_77
.Lx241_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx241_77:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n178_var_ref_α
n177_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n179_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                                                                                        jmp   n180_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        lea              r8, [rbp + 864]
.Lx246_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx246_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx246_41
                        cmp              esi, 1
                                                                                        jne   .Lx246_55
                        mov              r8, rax
                                                                                        jmp   .Lx246_40
.Lx246_55:
                        cmp              esi, 2
                                                                                        jne   .Lx246_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx246_41
                        mov              r8, rax
                                                                                        jmp   .Lx246_40
.Lx246_56:
                        cmp              eax, 72
                                                                                        jne   .Lx246_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx246_41
                        cmp              rax, r8
                                                                                        je    .Lx246_41
                        mov              r8, rax
                                                                                        jmp   .Lx246_40
.Lx246_41:
                        lea              r9, [rbp + 880]
.Lx246_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx246_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx246_43
                        cmp              esi, 1
                                                                                        jne   .Lx246_57
                        mov              r9, rax
                                                                                        jmp   .Lx246_42
.Lx246_57:
                        cmp              esi, 2
                                                                                        jne   .Lx246_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx246_43
                        mov              r9, rax
                                                                                        jmp   .Lx246_42
.Lx246_58:
                        cmp              eax, 72
                                                                                        jne   .Lx246_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx246_43
                        cmp              rax, r9
                                                                                        je    .Lx246_43
                        mov              r9, rax
                                                                                        jmp   .Lx246_42
.Lx246_43:
                        cmp              r8, r9
                                                                                        je    .Lx246_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx246_44
                        cmp              eax, 104
                                                                                        je    .Lx246_44
                        cmp              eax, 72
                                                                                        jne   .Lx246_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx246_44
                                                                                        jmp   .Lx246_45
.Lx246_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx246_53
                        cmp              eax, 104
                                                                                        je    .Lx246_53
                        cmp              eax, 72
                                                                                        jne   .Lx246_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx246_53
                                                                                        jmp   .Lx246_46
.Lx246_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx246_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx246_53
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
                                                                                        jmp   .Lx246_51
.Lx246_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx246_47
                        cmp              eax, 104
                                                                                        je    .Lx246_47
                        cmp              eax, 72
                                                                                        jne   .Lx246_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx246_47
                                                                                        jmp   .Lx246_48
.Lx246_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx246_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx246_53
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
                                                                                        jmp   .Lx246_51
.Lx246_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx246_49
                        cmp              edx, 80
                                                                                        je    .Lx246_53
                                                                                        jmp   .Lx246_52
.Lx246_49:
                        cmp              edx, 80
                                                                                        je    .Lx246_52
                        cmp              ecx, 5
                                                                                        je    .Lx246_53
                        cmp              edx, 5
                                                                                        je    .Lx246_53
                        cmp              ecx, 3
                                                                                        jne   .Lx246_50
                        cmp              edx, 3
                                                                                        jne   .Lx246_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx246_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx246_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx246_51
                                                                                        jmp   .Lx246_52
.Lx246_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx246_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx246_53
.Lx246_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx246_54
.Lx246_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx246_54
.Lx246_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx246_54:
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n181_var_ref_α
n180_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n183_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n183_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx251_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx251_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        cmp              esi, 1
                                                                                        jne   .Lx251_55
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_55:
                        cmp              esi, 2
                                                                                        jne   .Lx251_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_56:
                        cmp              eax, 72
                                                                                        jne   .Lx251_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_41
                        cmp              rax, r8
                                                                                        je    .Lx251_41
                        mov              r8, rax
                                                                                        jmp   .Lx251_40
.Lx251_41:
                        lea              r9, [rbp + 800]
.Lx251_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx251_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        cmp              esi, 1
                                                                                        jne   .Lx251_57
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_57:
                        cmp              esi, 2
                                                                                        jne   .Lx251_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_58:
                        cmp              eax, 72
                                                                                        jne   .Lx251_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx251_43
                        cmp              rax, r9
                                                                                        je    .Lx251_43
                        mov              r9, rax
                                                                                        jmp   .Lx251_42
.Lx251_43:
                        cmp              r8, r9
                                                                                        je    .Lx251_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_44
                        cmp              eax, 104
                                                                                        je    .Lx251_44
                        cmp              eax, 72
                                                                                        jne   .Lx251_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx251_44
                                                                                        jmp   .Lx251_45
.Lx251_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_53
                        cmp              eax, 104
                                                                                        je    .Lx251_53
                        cmp              eax, 72
                                                                                        jne   .Lx251_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx251_53
                                                                                        jmp   .Lx251_46
.Lx251_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx251_53
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
                                                                                        jmp   .Lx251_51
.Lx251_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx251_47
                        cmp              eax, 104
                                                                                        je    .Lx251_47
                        cmp              eax, 72
                                                                                        jne   .Lx251_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx251_47
                                                                                        jmp   .Lx251_48
.Lx251_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx251_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx251_53
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
                                                                                        jmp   .Lx251_51
.Lx251_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx251_49
                        cmp              edx, 80
                                                                                        je    .Lx251_53
                                                                                        jmp   .Lx251_52
.Lx251_49:
                        cmp              edx, 80
                                                                                        je    .Lx251_52
                        cmp              ecx, 5
                                                                                        je    .Lx251_53
                        cmp              edx, 5
                                                                                        je    .Lx251_53
                        cmp              ecx, 3
                                                                                        jne   .Lx251_50
                        cmp              edx, 3
                                                                                        jne   .Lx251_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx251_51
                                                                                        jmp   .Lx251_52
.Lx251_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx251_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx251_53
.Lx251_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx251_54
.Lx251_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx251_54
.Lx251_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx251_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n184_var_α
n183_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n185_var_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n186_var_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n188_call_builtin_prolog_α
n187_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n189_var_α
n188_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n190_var_α
#-----------------------------------------------------------------------------------------------------------------------
n190_var_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n191_var_α
#-----------------------------------------------------------------------------------------------------------------------
n191_var_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n192_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n192_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n193_call_builtin_prolog_α
n192_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n194_var_ref_α
n193_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n195_var_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n196_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_integer_α:
                        mov              qword ptr [rbp + 432], 3                       # result
                        mov              rax, qword ptr [rip + .Lx272_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n197_call_builtin_prolog_α
.Lx272_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n198_call_builtin_prolog_α
n197_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n199_var_ref_α
n198_call_builtin_prolog_β:
                                                                                        jmp   n205_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n200_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n201_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n202_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n202_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             proc_not_attack$2F3_dcα
                                                                                        jmp   .Lx282_2
.Lx282_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 104
                                                                                        je    n205_call_builtin_prolog_α
                                                                                        jmp   n203_move_label_α
n202_call_proc_staged_β:
                                                                                        jmp   n205_call_builtin_prolog_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n203_move_label_α:
                        lea              rax, [rip + n202_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_not_attack$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n204_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   rax
n204_disjunction_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n205_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   proc_not_attack$2F3_ω
n205_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_β:
                                                                                        jmp   n204_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1640]
                        mov              rbp, qword ptr [rbp + 1656]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_ω:
                        lea              rsp, [rbp + 1664]
                        mov              rcx, qword ptr [rbp + 1648]
                        mov              rbp, qword ptr [rbp + 1656]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             r11
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 16]
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 32
                        lea              rcx, [rip + .Lx288_2]
                        lea              rdx, [rip + .Lx288_3]
                                                                                        jmp   proc_not_attack$2F3_α
.Lx288_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx288_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_queens_2$2F3_α
proc_queens_2$2F3_α:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              qword ptr [rsp + 1672], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 1520
                        mov              edx, 1648
                        call             rt_jmp_frame_lexprep2@PLT
proc_queens_2$2F3_α_body:
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 1520], rax
#-----------------------------------------------------------------------------------------------------------------------
n289_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx338_102
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                                                                                        jmp   .Lx338_101
.Lx338_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx338_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx338_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx338_101
.Lx338_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx338_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_queens_2$2F3_ω
                                                                                        jmp   n290_var_ref_α
n289_call_builtin_prolog_β:
                                                                                        jmp   proc_queens_2$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n290_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n291_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 3                      # result
                        mov              rax, qword ptr [rip + .Lx341_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n292_lit_string_α
.Lx341_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:
                        mov              qword ptr [rbp + 1504], 2                      # result
                        mov              dword ptr [rbp + 1508], 2
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n293_call_builtin_prolog_α
.Lx342_0:
                        .quad            .Lx342_0_s
.Lx342_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n293_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        lea              r8, [rbp + 1424]
.Lx343_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx343_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx343_111
                        cmp              esi, 1
                                                                                        jne   .Lx343_112
                        mov              r8, rax
                                                                                        jmp   .Lx343_110
.Lx343_112:
                        cmp              esi, 2
                                                                                        jne   .Lx343_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx343_111
                        mov              r8, rax
                                                                                        jmp   .Lx343_110
.Lx343_113:
                        cmp              eax, 72
                                                                                        jne   .Lx343_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx343_111
                        cmp              rax, r8
                                                                                        je    .Lx343_111
                        mov              r8, rax
                                                                                        jmp   .Lx343_110
.Lx343_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx343_114
                        cmp              eax, 104
                                                                                        je    .Lx343_114
                        cmp              eax, 72
                                                                                        jne   .Lx343_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx343_114
                                                                                        jmp   .Lx343_118
.Lx343_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx343_115
                        cmp              eax, 3
                                                                                        je    .Lx343_114
                        cmp              eax, 2
                                                                                        jne   .Lx343_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx343_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx343_114
                                                                                        jmp   .Lx343_116
.Lx343_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx343_117
.Lx343_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx343_117
.Lx343_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx343_117:
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              eax, 104
                                                                                        je    n305_var_ref_α
                                                                                        jmp   n294_var_ref_α
n293_call_builtin_prolog_β:
                                                                                        jmp   n305_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n294_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n295_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:
                        mov              qword ptr [rbp + 1392], 2                      # result
                        mov              dword ptr [rbp + 1396], 2
                        mov              rax, qword ptr [rip + .Lx346_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n296_call_builtin_prolog_α
.Lx346_0:
                        .quad            .Lx346_0_s
.Lx346_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n296_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              rsi, qword ptr [rip + .Lx347_2]
                                                                                        jmp   .Lx347_3
.Lx347_2:
                        .quad            .Lx347_2_s
.Lx347_2_s:
                        .string          "[]"
.Lx347_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n304_call_builtin_prolog_α
                                                                                        jmp   n297_var_ref_α
n296_call_builtin_prolog_β:
                                                                                        jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n297_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                                                                                        jmp   n298_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n299_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n299_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        lea              r8, [rbp + 1264]
.Lx352_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx352_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_41
                        cmp              esi, 1
                                                                                        jne   .Lx352_55
                        mov              r8, rax
                                                                                        jmp   .Lx352_40
.Lx352_55:
                        cmp              esi, 2
                                                                                        jne   .Lx352_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx352_41
                        mov              r8, rax
                                                                                        jmp   .Lx352_40
.Lx352_56:
                        cmp              eax, 72
                                                                                        jne   .Lx352_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_41
                        cmp              rax, r8
                                                                                        je    .Lx352_41
                        mov              r8, rax
                                                                                        jmp   .Lx352_40
.Lx352_41:
                        lea              r9, [rbp + 1280]
.Lx352_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx352_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_43
                        cmp              esi, 1
                                                                                        jne   .Lx352_57
                        mov              r9, rax
                                                                                        jmp   .Lx352_42
.Lx352_57:
                        cmp              esi, 2
                                                                                        jne   .Lx352_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx352_43
                        mov              r9, rax
                                                                                        jmp   .Lx352_42
.Lx352_58:
                        cmp              eax, 72
                                                                                        jne   .Lx352_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx352_43
                        cmp              rax, r9
                                                                                        je    .Lx352_43
                        mov              r9, rax
                                                                                        jmp   .Lx352_42
.Lx352_43:
                        cmp              r8, r9
                                                                                        je    .Lx352_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx352_44
                        cmp              eax, 104
                                                                                        je    .Lx352_44
                        cmp              eax, 72
                                                                                        jne   .Lx352_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx352_44
                                                                                        jmp   .Lx352_45
.Lx352_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx352_53
                        cmp              eax, 104
                                                                                        je    .Lx352_53
                        cmp              eax, 72
                                                                                        jne   .Lx352_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx352_53
                                                                                        jmp   .Lx352_46
.Lx352_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx352_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx352_53
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
                                                                                        jmp   .Lx352_51
.Lx352_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx352_47
                        cmp              eax, 104
                                                                                        je    .Lx352_47
                        cmp              eax, 72
                                                                                        jne   .Lx352_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx352_47
                                                                                        jmp   .Lx352_48
.Lx352_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx352_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx352_53
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
                                                                                        jmp   .Lx352_51
.Lx352_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx352_49
                        cmp              edx, 80
                                                                                        je    .Lx352_53
                                                                                        jmp   .Lx352_52
.Lx352_49:
                        cmp              edx, 80
                                                                                        je    .Lx352_52
                        cmp              ecx, 5
                                                                                        je    .Lx352_53
                        cmp              edx, 5
                                                                                        je    .Lx352_53
                        cmp              ecx, 3
                                                                                        jne   .Lx352_50
                        cmp              edx, 3
                                                                                        jne   .Lx352_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx352_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx352_51
                                                                                        jmp   .Lx352_52
.Lx352_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx352_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx352_53
.Lx352_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx352_54
.Lx352_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx352_54
.Lx352_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx352_54:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n304_call_builtin_prolog_α
                                                                                        jmp   n300_var_ref_α
n299_call_builtin_prolog_β:
                                                                                        jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n300_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n301_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n302_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n302_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        lea              r8, [rbp + 1184]
.Lx357_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx357_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx357_41
                        cmp              esi, 1
                                                                                        jne   .Lx357_55
                        mov              r8, rax
                                                                                        jmp   .Lx357_40
.Lx357_55:
                        cmp              esi, 2
                                                                                        jne   .Lx357_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx357_41
                        mov              r8, rax
                                                                                        jmp   .Lx357_40
.Lx357_56:
                        cmp              eax, 72
                                                                                        jne   .Lx357_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx357_41
                        cmp              rax, r8
                                                                                        je    .Lx357_41
                        mov              r8, rax
                                                                                        jmp   .Lx357_40
.Lx357_41:
                        lea              r9, [rbp + 1200]
.Lx357_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx357_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx357_43
                        cmp              esi, 1
                                                                                        jne   .Lx357_57
                        mov              r9, rax
                                                                                        jmp   .Lx357_42
.Lx357_57:
                        cmp              esi, 2
                                                                                        jne   .Lx357_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx357_43
                        mov              r9, rax
                                                                                        jmp   .Lx357_42
.Lx357_58:
                        cmp              eax, 72
                                                                                        jne   .Lx357_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx357_43
                        cmp              rax, r9
                                                                                        je    .Lx357_43
                        mov              r9, rax
                                                                                        jmp   .Lx357_42
.Lx357_43:
                        cmp              r8, r9
                                                                                        je    .Lx357_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx357_44
                        cmp              eax, 104
                                                                                        je    .Lx357_44
                        cmp              eax, 72
                                                                                        jne   .Lx357_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx357_44
                                                                                        jmp   .Lx357_45
.Lx357_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx357_53
                        cmp              eax, 104
                                                                                        je    .Lx357_53
                        cmp              eax, 72
                                                                                        jne   .Lx357_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx357_53
                                                                                        jmp   .Lx357_46
.Lx357_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx357_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx357_53
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
                                                                                        jmp   .Lx357_51
.Lx357_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx357_47
                        cmp              eax, 104
                                                                                        je    .Lx357_47
                        cmp              eax, 72
                                                                                        jne   .Lx357_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx357_47
                                                                                        jmp   .Lx357_48
.Lx357_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx357_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx357_53
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
                                                                                        jmp   .Lx357_51
.Lx357_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx357_49
                        cmp              edx, 80
                                                                                        je    .Lx357_53
                                                                                        jmp   .Lx357_52
.Lx357_49:
                        cmp              edx, 80
                                                                                        je    .Lx357_52
                        cmp              ecx, 5
                                                                                        je    .Lx357_53
                        cmp              edx, 5
                                                                                        je    .Lx357_53
                        cmp              ecx, 3
                                                                                        jne   .Lx357_50
                        cmp              edx, 3
                                                                                        jne   .Lx357_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx357_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx357_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx357_51
                                                                                        jmp   .Lx357_52
.Lx357_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx357_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx357_53
.Lx357_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx357_54
.Lx357_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx357_54
.Lx357_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx357_54:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n304_call_builtin_prolog_α
                                                                                        jmp   n303_suspend_α
n302_call_builtin_prolog_β:
                                                                                        jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n303_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx359_61
                        mov              qword ptr [rbp + 1520], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 1520]
.Lx359_61:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n303_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n303_suspend_β]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_queens_2$2F3_γ
n303_suspend_β:
                                                                                        jmp   n304_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n304_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    proc_queens_2$2F3_ω
                                                                                        jmp   n305_var_ref_α
n304_call_builtin_prolog_β:
                                                                                        jmp   proc_queens_2$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                                                                                        jmp   n306_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx363_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n307_lit_integer_α
.Lx363_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 3                      # result
                        mov              rax, qword ptr [rip + .Lx364_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n308_call_builtin_prolog_α
.Lx364_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n308_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lx365_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx365_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx365_111
                        cmp              esi, 1
                                                                                        jne   .Lx365_112
                        mov              r8, rax
                                                                                        jmp   .Lx365_110
.Lx365_112:
                        cmp              esi, 2
                                                                                        jne   .Lx365_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx365_111
                        mov              r8, rax
                                                                                        jmp   .Lx365_110
.Lx365_113:
                        cmp              eax, 72
                                                                                        jne   .Lx365_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx365_111
                        cmp              rax, r8
                                                                                        je    .Lx365_111
                        mov              r8, rax
                                                                                        jmp   .Lx365_110
.Lx365_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx365_114
                        cmp              eax, 104
                                                                                        je    .Lx365_114
                        cmp              eax, 72
                                                                                        jne   .Lx365_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx365_114
                                                                                        jmp   .Lx365_118
.Lx365_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx365_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx365_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx365_115
                                                                                        jmp   .Lx365_114
.Lx365_119:
                        cmp              eax, 3
                                                                                        jne   .Lx365_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx365_114
                                                                                        jmp   .Lx365_115
.Lx365_120:
                        cmp              eax, 2
                                                                                        jne   .Lx365_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx365_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx365_114
                                                                                        jmp   .Lx365_115
.Lx365_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx365_117
.Lx365_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx365_117
.Lx365_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx365_117:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n309_var_ref_α
n308_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n310_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                                                                                        jmp   n311_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n311_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                                                                                        jmp   n312_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n312_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx372_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx372_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_61
                        cmp              esi, 1
                                                                                        jne   .Lx372_62
                        mov              r8, rax
                                                                                        jmp   .Lx372_60
.Lx372_62:
                        cmp              esi, 2
                                                                                        jne   .Lx372_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_61
                        mov              r8, rax
                                                                                        jmp   .Lx372_60
.Lx372_63:
                        cmp              eax, 72
                                                                                        jne   .Lx372_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_61
                        cmp              rax, r8
                                                                                        je    .Lx372_61
                        mov              r8, rax
                                                                                        jmp   .Lx372_60
.Lx372_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_80
                        cmp              eax, 104
                                                                                        je    .Lx372_80
                        cmp              eax, 72
                                                                                        jne   .Lx372_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx372_80
                                                                                        jmp   .Lx372_74
.Lx372_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx372_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx372_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx372_73
                        lea              r9, [rbp + 944]
.Lx372_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx372_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_65
                        cmp              esi, 1
                                                                                        jne   .Lx372_66
                        mov              r9, rax
                                                                                        jmp   .Lx372_64
.Lx372_66:
                        cmp              esi, 2
                                                                                        jne   .Lx372_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_65
                        mov              r9, rax
                                                                                        jmp   .Lx372_64
.Lx372_67:
                        cmp              eax, 72
                                                                                        jne   .Lx372_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_65
                        cmp              rax, r9
                                                                                        je    .Lx372_65
                        mov              r9, rax
                                                                                        jmp   .Lx372_64
.Lx372_65:
                        lea              rcx, [rbp + 960]
.Lx372_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx372_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx372_69
                        cmp              esi, 1
                                                                                        jne   .Lx372_70
                        mov              rcx, rax
                                                                                        jmp   .Lx372_68
.Lx372_70:
                        cmp              esi, 2
                                                                                        jne   .Lx372_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_69
                        mov              rcx, rax
                                                                                        jmp   .Lx372_68
.Lx372_71:
                        cmp              eax, 72
                                                                                        jne   .Lx372_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx372_69
                        cmp              rax, rcx
                                                                                        je    .Lx372_69
                        mov              rcx, rax
                                                                                        jmp   .Lx372_68
.Lx372_69:
                        cmp              r9, rcx
                                                                                        je    .Lx372_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_75
                        cmp              eax, 104
                                                                                        je    .Lx372_75
                        cmp              eax, 72
                                                                                        jne   .Lx372_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx372_75
                                                                                        jmp   .Lx372_72
.Lx372_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_76
                        cmp              eax, 104
                                                                                        je    .Lx372_76
                        cmp              eax, 72
                                                                                        jne   .Lx372_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx372_76
                                                                                        jmp   .Lx372_72
.Lx372_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx372_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx372_72
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
                                                                                        jmp   .Lx372_77
.Lx372_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx372_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx372_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx372_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx372_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx372_72
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
                        lea              r9, [rbp + 944]
.Lx372_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx372_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_82
                        cmp              esi, 1
                                                                                        jne   .Lx372_83
                        mov              r9, rax
                                                                                        jmp   .Lx372_81
.Lx372_83:
                        cmp              esi, 2
                                                                                        jne   .Lx372_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_82
                        mov              r9, rax
                                                                                        jmp   .Lx372_81
.Lx372_84:
                        cmp              eax, 72
                                                                                        jne   .Lx372_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx372_82
                        cmp              rax, r9
                                                                                        je    .Lx372_82
                        mov              r9, rax
                                                                                        jmp   .Lx372_81
.Lx372_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_85
                        cmp              eax, 104
                                                                                        je    .Lx372_85
                        cmp              eax, 72
                                                                                        jne   .Lx372_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx372_85
                                                                                        jmp   .Lx372_86
.Lx372_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx372_87
.Lx372_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx372_87:
                        lea              rcx, [rbp + 960]
.Lx372_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx372_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx372_89
                        cmp              esi, 1
                                                                                        jne   .Lx372_90
                        mov              rcx, rax
                                                                                        jmp   .Lx372_88
.Lx372_90:
                        cmp              esi, 2
                                                                                        jne   .Lx372_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx372_89
                        mov              rcx, rax
                                                                                        jmp   .Lx372_88
.Lx372_91:
                        cmp              eax, 72
                                                                                        jne   .Lx372_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx372_89
                        cmp              rax, rcx
                                                                                        je    .Lx372_89
                        mov              rcx, rax
                                                                                        jmp   .Lx372_88
.Lx372_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx372_92
                        cmp              eax, 104
                                                                                        je    .Lx372_92
                        cmp              eax, 72
                                                                                        jne   .Lx372_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx372_92
                                                                                        jmp   .Lx372_93
.Lx372_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx372_94
.Lx372_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx372_94:
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
                        mov              dword ptr [r8 + 0], 80
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx372_77
.Lx372_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx372_77
.Lx372_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx372_77:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n313_var_ref_α
n312_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n314_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n315_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx377_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx377_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              esi, 1
                                                                                        jne   .Lx377_55
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_55:
                        cmp              esi, 2
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_56:
                        cmp              eax, 72
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              rax, r8
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_41:
                        lea              r9, [rbp + 848]
.Lx377_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx377_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              esi, 1
                                                                                        jne   .Lx377_57
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_57:
                        cmp              esi, 2
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_58:
                        cmp              eax, 72
                                                                                        jne   .Lx377_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_43
                        cmp              rax, r9
                                                                                        je    .Lx377_43
                        mov              r9, rax
                                                                                        jmp   .Lx377_42
.Lx377_43:
                        cmp              r8, r9
                                                                                        je    .Lx377_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_44
                        cmp              eax, 104
                                                                                        je    .Lx377_44
                        cmp              eax, 72
                                                                                        jne   .Lx377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx377_44
                                                                                        jmp   .Lx377_45
.Lx377_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_53
                        cmp              eax, 104
                                                                                        je    .Lx377_53
                        cmp              eax, 72
                                                                                        jne   .Lx377_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_46
.Lx377_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
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
                                                                                        jmp   .Lx377_51
.Lx377_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_47
                        cmp              eax, 104
                                                                                        je    .Lx377_47
                        cmp              eax, 72
                                                                                        jne   .Lx377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx377_47
                                                                                        jmp   .Lx377_48
.Lx377_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx377_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx377_53
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
                                                                                        jmp   .Lx377_51
.Lx377_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx377_49
                        cmp              edx, 80
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_52
.Lx377_49:
                        cmp              edx, 80
                                                                                        je    .Lx377_52
                        cmp              ecx, 5
                                                                                        je    .Lx377_53
                        cmp              edx, 5
                                                                                        je    .Lx377_53
                        cmp              ecx, 3
                                                                                        jne   .Lx377_50
                        cmp              edx, 3
                                                                                        jne   .Lx377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx377_51
                                                                                        jmp   .Lx377_52
.Lx377_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx377_53
.Lx377_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx377_54
.Lx377_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx377_54
.Lx377_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx377_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n316_var_ref_α
n315_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n317_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n318_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx382_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx382_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              esi, 1
                                                                                        jne   .Lx382_55
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_55:
                        cmp              esi, 2
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_56:
                        cmp              eax, 72
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              rax, r8
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_41:
                        lea              r9, [rbp + 768]
.Lx382_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx382_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        cmp              esi, 1
                                                                                        jne   .Lx382_57
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_57:
                        cmp              esi, 2
                                                                                        jne   .Lx382_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_58:
                        cmp              eax, 72
                                                                                        jne   .Lx382_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_43
                        cmp              rax, r9
                                                                                        je    .Lx382_43
                        mov              r9, rax
                                                                                        jmp   .Lx382_42
.Lx382_43:
                        cmp              r8, r9
                                                                                        je    .Lx382_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_44
                        cmp              eax, 104
                                                                                        je    .Lx382_44
                        cmp              eax, 72
                                                                                        jne   .Lx382_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx382_44
                                                                                        jmp   .Lx382_45
.Lx382_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_53
                        cmp              eax, 104
                                                                                        je    .Lx382_53
                        cmp              eax, 72
                                                                                        jne   .Lx382_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_46
.Lx382_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx382_53
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
                                                                                        jmp   .Lx382_51
.Lx382_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_47
                        cmp              eax, 104
                                                                                        je    .Lx382_47
                        cmp              eax, 72
                                                                                        jne   .Lx382_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx382_47
                                                                                        jmp   .Lx382_48
.Lx382_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx382_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx382_53
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
                                                                                        jmp   .Lx382_51
.Lx382_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx382_49
                        cmp              edx, 80
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_52
.Lx382_49:
                        cmp              edx, 80
                                                                                        je    .Lx382_52
                        cmp              ecx, 5
                                                                                        je    .Lx382_53
                        cmp              edx, 5
                                                                                        je    .Lx382_53
                        cmp              ecx, 3
                                                                                        jne   .Lx382_50
                        cmp              edx, 3
                                                                                        jne   .Lx382_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx382_51
                                                                                        jmp   .Lx382_52
.Lx382_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx382_53
.Lx382_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx382_54
.Lx382_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx382_54
.Lx382_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx382_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n319_var_ref_α
n318_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n320_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 704], 2                       # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Lx385_0]
                        mov              qword ptr [rbp + 712], rax
                                                                                        jmp   n321_var_ref_α
.Lx385_0:
                        .quad            .Lx385_0_s
.Lx385_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n322_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n323_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n323_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n324_var_ref_α
n323_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n325_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        mov              qword ptr [rbp + 544], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_20
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx394_21
.Lx394_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 576]                     # v
                        mov              rdx, qword ptr [rbp + 584]                     # v
                        call             rt_arg_stage@PLT
.Lx394_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_22
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx394_23
.Lx394_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 624]                     # v
                        mov              rdx, qword ptr [rbp + 632]                     # v
                        call             rt_arg_stage@PLT
.Lx394_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx394_24
                        mov              rax, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx394_25
.Lx394_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 720]                     # v
                        mov              rdx, qword ptr [rbp + 728]                     # v
                        call             rt_arg_stage@PLT
.Lx394_25:
                        lea              rax, [rip + .Lx394_7]
                        push             rax
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx394_1
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4]
                                                                                        jmp   rax
.Lx394_3:
                        mov              qword ptr [rbp + 552], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx394_5
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx394_2
.Lx394_4:
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax
                                                                                        jne   .Lx394_6
                        mov              qword ptr [rbp + 544], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx394_2
.Lx394_1:
                        call             rt_faildescr@PLT
.Lx394_2:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n326_var_ref_α
n325_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 544], 0
                        lea              rdi, [rbp + 560]
                        lea              rsi, [rbp + 568]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n337_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              ecx, 64
                        mov              r8d, 896
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 576]                     # v
                        mov              rdx, qword ptr [rbp + 584]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 624]                     # v
                        mov              rdx, qword ptr [rbp + 632]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 720]                     # v
                        mov              rdx, qword ptr [rbp + 728]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n337_call_builtin_prolog_α
                        lea              r11, [rip + .Lx394_7]
                        push             r11
                        lea              rcx, [rip + .Lx394_3]
                        lea              rdx, [rip + .Lx394_4]
                                                                                        jmp   rax
.Lx394_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n326_var_ref_α
.Lx394_0:
                        .quad            .Lx394_0_s
.Lx394_0_s:
                        .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n326_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n327_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n327_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n328_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n328_call_proc_staged_α:
                        lea              rsi, [rbp + 448]
                        lea              rdx, [rbp + 464]
                        call             proc_not_attack$2F2_dcα
                                                                                        jmp   .Lx400_2
.Lx400_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n325_call_proc_staged_β
                                                                                        jmp   n329_var_ref_α
n328_call_proc_staged_β:
                                                                                        jmp   n325_call_proc_staged_β
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "not_attack/2"
#-----------------------------------------------------------------------------------------------------------------------
n329_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n330_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:
                        mov              qword ptr [rbp + 352], 2                       # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx403_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n331_var_ref_α
.Lx403_0:
                        .quad            .Lx403_0_s
.Lx403_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n332_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n332_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n333_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n333_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 104
                                                                                        je    n337_call_builtin_prolog_α
                                                                                        jmp   n334_var_ref_α
n333_call_builtin_prolog_β:
                                                                                        jmp   n337_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n335_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n335_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx412_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx412_21
.Lx412_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx412_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx412_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx412_23
.Lx412_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 272]                     # v
                        mov              rdx, qword ptr [rbp + 280]                     # v
                        call             rt_arg_stage@PLT
.Lx412_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx412_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx412_25
.Lx412_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
.Lx412_25:
                        lea              rax, [rip + .Lx412_7]
                        push             rax
                        mov              edi, 4                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx412_1
                        lea              rcx, [rip + .Lx412_3]
                        lea              rdx, [rip + .Lx412_4]
                                                                                        jmp   rax
.Lx412_3:
                        mov              qword ptr [rbp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx412_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx412_2
.Lx412_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx412_2
.Lx412_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx412_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx412_2
.Lx412_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx412_2
.Lx412_1:
                        call             rt_faildescr@PLT
.Lx412_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n328_call_proc_staged_β
                                                                                        jmp   n336_suspend_α
n335_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 192], 0
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 216]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n328_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              ecx, 64
                        mov              r8d, 1520
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 272]                     # v
                        mov              rdx, qword ptr [rbp + 280]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 368]                     # v
                        mov              rdx, qword ptr [rbp + 376]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 4                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n328_call_proc_staged_β
                        lea              r11, [rip + .Lx412_7]
                        push             r11
                        lea              rcx, [rip + .Lx412_3]
                        lea              rdx, [rip + .Lx412_4]
                                                                                        jmp   rax
.Lx412_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n328_call_proc_staged_β
                                                                                        jmp   n336_suspend_α
.Lx412_0:
                        .quad            .Lx412_0_s
.Lx412_0_s:
                        .string          "queens_2/3"
#-----------------------------------------------------------------------------------------------------------------------
n336_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx414_61
                        mov              qword ptr [rbp + 1520], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 1520]
.Lx414_61:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n336_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n336_suspend_β]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_queens_2$2F3_γ
n336_suspend_β:
                                                                                        jmp   n335_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n337_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    proc_queens_2$2F3_ω
                                                                                        jmp   proc_queens_2$2F3_ω
n337_call_builtin_prolog_β:
                                                                                        jmp   proc_queens_2$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_queens_2$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_queens_2$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1520]
#-----------------------------------------------------------------------------------------------------------------------
proc_queens_2$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx415_50
                        mov              qword ptr [rbp + 1520], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx415_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1656]
                        mov              rbp, qword ptr [rbp + 1672]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_queens_2$2F3_ω:
                        lea              rsp, [rbp + 1680]
                        mov              rcx, qword ptr [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1672]
                                                                                        jmp   rcx
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sel/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_sel$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 992
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "queens/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_queens$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "not_attack/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_not_attack$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_not_attack$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "not_attack/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_not_attack$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1616
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_not_attack$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "queens_2/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_queens_2$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1632
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
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
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1232
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx451_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                                                                                        jmp   .Lx451_101
.Lx451_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx451_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx451_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx451_101
.Lx451_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx451_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n417_lit_string_α
n416_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n417_lit_string_α:
                        mov              qword ptr [rbp + 1168], 2                      # result
                        mov              dword ptr [rbp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n418_lit_integer_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 3                      # result
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n419_lit_string_α
.Lx453_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 1056], 2                      # result
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n420_lit_integer_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_integer_α:
                        mov              qword ptr [rbp + 960], 3                       # result
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n421_lit_string_α
.Lx455_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n422_lit_integer_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n423_lit_string_α
.Lx457_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:
                        mov              qword ptr [rbp + 832], 2                       # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n424_lit_integer_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n424_lit_integer_α:
                        mov              qword ptr [rbp + 736], 3                       # result
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n425_lit_string_α
.Lx459_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:
                        mov              qword ptr [rbp + 720], 2                       # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n426_lit_integer_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_integer_α:
                        mov              qword ptr [rbp + 624], 3                       # result
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n427_lit_string_α
.Lx461_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:
                        mov              qword ptr [rbp + 608], 2                       # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n428_lit_integer_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_integer_α:
                        mov              qword ptr [rbp + 512], 3                       # result
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n429_lit_string_α
.Lx463_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:
                        mov              qword ptr [rbp + 496], 2                       # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n430_lit_integer_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_integer_α:
                        mov              qword ptr [rbp + 400], 3                       # result
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n431_lit_string_α
.Lx465_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:
                        mov              qword ptr [rbp + 384], 2                       # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n432_lit_integer_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n432_lit_integer_α:
                        mov              qword ptr [rbp + 288], 3                       # result
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n433_lit_string_α
.Lx467_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n433_lit_string_α:
                        mov              qword ptr [rbp + 272], 2                       # result
                        mov              dword ptr [rbp + 276], 2
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n434_call_builtin_prolog_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n435_call_builtin_prolog_α
n434_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n436_call_builtin_prolog_α
n435_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n437_call_builtin_prolog_α
n436_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n438_call_builtin_prolog_α
n437_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n439_call_builtin_prolog_α
n438_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n440_call_builtin_prolog_α
n439_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n441_call_builtin_prolog_α
n440_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n450_call_builtin_prolog_α
                                                                                        jmp   n442_var_ref_α
n441_call_builtin_prolog_β:
                                                                                        jmp   n450_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n442_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n443_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n443_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx480_20
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx480_21
.Lx480_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1088]                    # v
                        mov              rdx, qword ptr [rbp + 1096]                    # v
                        call             rt_arg_stage@PLT
.Lx480_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx480_22
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx480_23
.Lx480_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1184]                    # v
                        mov              rdx, qword ptr [rbp + 1192]                    # v
                        call             rt_arg_stage@PLT
.Lx480_23:
                        lea              rax, [rip + .Lx480_7]
                        push             rax
                        mov              edi, 1                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx480_1
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4]
                                                                                        jmp   rax
.Lx480_3:
                        mov              qword ptr [rbp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx480_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx480_2
.Lx480_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx480_2
.Lx480_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx480_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx480_2
.Lx480_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx480_2
.Lx480_1:
                        call             rt_faildescr@PLT
.Lx480_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n450_call_builtin_prolog_α
                                                                                        jmp   n444_var_α
n443_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 240], 0
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 264]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n450_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              ecx, 48
                        mov              r8d, 416
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1088]                    # v
                        mov              rdx, qword ptr [rbp + 1096]                    # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1184]                    # v
                        mov              rdx, qword ptr [rbp + 1192]                    # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n450_call_builtin_prolog_α
                        lea              r11, [rip + .Lx480_7]
                        push             r11
                        lea              rcx, [rip + .Lx480_3]
                        lea              rdx, [rip + .Lx480_4]
                                                                                        jmp   rax
.Lx480_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n450_call_builtin_prolog_α
                                                                                        jmp   n444_var_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "queens/2"
#-----------------------------------------------------------------------------------------------------------------------
n444_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n445_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn484:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn484]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n443_call_proc_staged_β
                                                                                        jmp   n446_lit_string_α
n445_call_builtin_prolog_β:
                                                                                        jmp   n443_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n446_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n447_call_builtin_prolog_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn487:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn487]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n443_call_proc_staged_β
                                                                                        jmp   n448_move_label_α
n447_call_builtin_prolog_β:
                                                                                        jmp   n443_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n448_move_label_α:
                        lea              rax, [rip + n443_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n449_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    main_ω
                                                                                        jmp   rax
n449_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
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
n450_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n449_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1240]
                        mov              rbp, qword ptr [rbp + 1256]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 1264]
                        mov              rcx, qword ptr [rbp + 1248]
                        mov              rbp, qword ptr [rbp + 1256]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
