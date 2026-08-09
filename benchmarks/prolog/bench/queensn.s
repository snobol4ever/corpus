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
                        .globl           proc_q10$2F1_α
proc_q10$2F1_α:
                        sub              rsp, 1488
                        mov              qword ptr [rsp + 1464], rcx
                        mov              qword ptr [rsp + 1472], rdx
                        mov              qword ptr [rsp + 1480], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 1408
                        mov              edx, 1456
                        call             rt_jmp_frame_lexprep2@PLT
proc_q10$2F1_α_body:
                        lea              rax, [rip + n118_suspend_β]
                        mov              qword ptr [rbp + 1408], rax
#-----------------------------------------------------------------------------------------------------------------------
n81_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx120_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                                                                                        jmp   .Lx120_101
.Lx120_102:
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
                        mov              eax, 3
                                                                                        jmp   .Lx120_101
.Lx120_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx120_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n82_var_ref_α
n81_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n83_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n83_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                                                                                        jmp   n84_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n84_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        lea              r8, [rbp + 1344]
.Lx125_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
                                                                                        jne   .Lx125_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx125_41
                        cmp              rax, r8
                                                                                        je    .Lx125_41
                        mov              r8, rax
                                                                                        jmp   .Lx125_40
.Lx125_41:
                        lea              r9, [rbp + 1360]
.Lx125_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
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
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx125_44
                        cmp              eax, 72
                                                                                        jne   .Lx125_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx125_44
                                                                                        jmp   .Lx125_45
.Lx125_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx125_53
                        cmp              eax, 104
                                                                                        je    .Lx125_53
                        cmp              eax, 72
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
                        cmp              eax, 104
                                                                                        je    .Lx125_47
                        cmp              eax, 72
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
                        cmp              ecx, 80
                                                                                        jne   .Lx125_49
                        cmp              edx, 80
                                                                                        je    .Lx125_53
                                                                                        jmp   .Lx125_52
.Lx125_49:
                        cmp              edx, 80
                                                                                        je    .Lx125_52
                        cmp              ecx, 5
                                                                                        je    .Lx125_53
                        cmp              edx, 5
                                                                                        je    .Lx125_53
                        cmp              ecx, 3
                                                                                        jne   .Lx125_50
                        cmp              edx, 3
                                                                                        jne   .Lx125_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx125_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
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
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx125_54
.Lx125_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx125_54:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 104
                                                                                        je    n119_call_builtin_prolog_α
                                                                                        jmp   n85_lit_string_α
n84_call_builtin_prolog_β:
                                                                                        jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:
                        mov              qword ptr [rbp + 1296], 2                      # result
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx126_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n86_lit_integer_α
.Lx126_0:
                        .quad            .Lx126_0_s
.Lx126_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_integer_α:
                        mov              qword ptr [rbp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx127_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n87_lit_string_α
.Lx127_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_string_α:
                        mov              qword ptr [rbp + 1184], 2                      # result
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx128_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n88_lit_integer_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 3                      # result
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n89_lit_string_α
.Lx129_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_string_α:
                        mov              qword ptr [rbp + 1072], 2                      # result
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n90_lit_integer_α
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_integer_α:
                        mov              qword ptr [rbp + 976], 3                       # result
                        mov              rax, qword ptr [rip + .Lx131_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n91_lit_string_α
.Lx131_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n92_lit_integer_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_integer_α:
                        mov              qword ptr [rbp + 864], 3                       # result
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n93_lit_string_α
.Lx133_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_string_α:
                        mov              qword ptr [rbp + 848], 2                       # result
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Lx134_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n94_lit_integer_α
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_integer_α:
                        mov              qword ptr [rbp + 752], 3                       # result
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n95_lit_string_α
.Lx135_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_string_α:
                        mov              qword ptr [rbp + 736], 2                       # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx136_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n96_lit_integer_α
.Lx136_0:
                        .quad            .Lx136_0_s
.Lx136_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n97_lit_string_α
.Lx137_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_string_α:
                        mov              qword ptr [rbp + 624], 2                       # result
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx138_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n98_lit_integer_α
.Lx138_0:
                        .quad            .Lx138_0_s
.Lx138_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_integer_α:
                        mov              qword ptr [rbp + 528], 3                       # result
                        mov              rax, qword ptr [rip + .Lx139_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n99_lit_string_α
.Lx139_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_string_α:
                        mov              qword ptr [rbp + 512], 2                       # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Lx140_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n100_lit_integer_α
.Lx140_0:
                        .quad            .Lx140_0_s
.Lx140_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_integer_α:
                        mov              qword ptr [rbp + 416], 3                       # result
                        mov              rax, qword ptr [rip + .Lx141_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n101_lit_string_α
.Lx141_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_string_α:
                        mov              qword ptr [rbp + 400], 2                       # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx142_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n102_lit_integer_α
.Lx142_0:
                        .quad            .Lx142_0_s
.Lx142_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_integer_α:
                        mov              qword ptr [rbp + 304], 3                       # result
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n103_lit_string_α
.Lx143_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_string_α:
                        mov              qword ptr [rbp + 288], 2                       # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n104_lit_integer_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_integer_α:
                        mov              qword ptr [rbp + 192], 3                       # result
                        mov              rax, qword ptr [rip + .Lx145_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n105_lit_string_α
.Lx145_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 176], 2                       # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Lx146_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n106_call_builtin_prolog_α
.Lx146_0:
                        .quad            .Lx146_0_s
.Lx146_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n107_call_builtin_prolog_α
n106_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n107_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n108_call_builtin_prolog_α
n107_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n108_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n109_call_builtin_prolog_α
n108_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n110_call_builtin_prolog_α
n109_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n110_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n111_call_builtin_prolog_α
n110_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n111_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n112_call_builtin_prolog_α
n111_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n113_call_builtin_prolog_α
n112_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n113_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n114_call_builtin_prolog_α
n113_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 104
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   n115_call_builtin_prolog_α
n114_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 104
                                                                                        je    n119_call_builtin_prolog_α
                                                                                        jmp   n116_var_ref_α
n115_call_builtin_prolog_β:
                                                                                        jmp   n119_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n117_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_20
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx160_21
.Lx160_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1216]                    # v
                        mov              rdx, qword ptr [rbp + 1224]                    # v
                        call             rt_arg_stage@PLT
.Lx160_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_22
                        mov              rax, qword ptr [rbp + 1312]
                        mov              rdx, qword ptr [rbp + 1320]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx160_23
.Lx160_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1312]                    # v
                        mov              rdx, qword ptr [rbp + 1320]                    # v
                        call             rt_arg_stage@PLT
.Lx160_23:
                        lea              rax, [rip + .Lx160_7]
                        push             rax
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx160_1
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4]
                                                                                        jmp   rax
.Lx160_3:
                        mov              qword ptr [rbp + 152], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx160_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx160_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_1:
                        call             rt_faildescr@PLT
.Lx160_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n119_call_builtin_prolog_α
                                                                                        jmp   n118_suspend_α
n117_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 144], 0
                        lea              rdi, [rbp + 160]
                        lea              rsi, [rbp + 168]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n119_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              ecx, 48
                        mov              r8d, 640
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 1216]                    # v
                        mov              rdx, qword ptr [rbp + 1224]                    # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 1312]                    # v
                        mov              rdx, qword ptr [rbp + 1320]                    # v
                        call             rt_arg_stage@PLT
                        mov              edi, 7                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n119_call_builtin_prolog_α
                        lea              r11, [rip + .Lx160_7]
                        push             r11
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4]
                                                                                        jmp   rax
.Lx160_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n119_call_builtin_prolog_α
                                                                                        jmp   n118_suspend_α
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "q/2"
#-----------------------------------------------------------------------------------------------------------------------
n118_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx162_61
                        mov              qword ptr [rbp + 1408], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 1408]
.Lx162_61:
                        mov              rdi, qword ptr [rbp + 32]
                        mov              rsi, qword ptr [rbp + 40]
                        lea              rdx, [rip + n118_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n118_suspend_β]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_q10$2F1_γ
n118_suspend_β:
                                                                                        jmp   n117_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n119_call_builtin_prolog_α:
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
                                                                                        je    proc_q10$2F1_ω
                                                                                        jmp   proc_q10$2F1_ω
n119_call_builtin_prolog_β:
                                                                                        jmp   proc_q10$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q10$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q10$2F1_β:
                                                                                        jmp   qword ptr [rbp + 1408]
#-----------------------------------------------------------------------------------------------------------------------
proc_q10$2F1_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx163_50
                        mov              qword ptr [rbp + 1408], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx163_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1464]
                        mov              rbp, qword ptr [rbp + 1480]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_q10$2F1_ω:
                        lea              rsp, [rbp + 1488]
                        mov              rcx, qword ptr [rbp + 1472]
                        mov              rbp, qword ptr [rbp + 1480]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_test$2F2_α
proc_test$2F2_α:
                        sub              rsp, 1056
                        mov              qword ptr [rsp + 1032], rcx
                        mov              qword ptr [rsp + 1040], rdx
                        mov              qword ptr [rsp + 1048], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 944
                        mov              edx, 1024
                        call             rt_jmp_frame_lexprep2@PLT
proc_test$2F2_α_body:
                        lea              rax, [rip + n175_suspend_β]
                        mov              qword ptr [rbp + 944], rax
#-----------------------------------------------------------------------------------------------------------------------
n164_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx196_102
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                                                                                        jmp   .Lx196_101
.Lx196_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx196_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx196_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx196_101
.Lx196_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx196_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n165_var_ref_α
n164_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                                                                                        jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 912], 3                       # result
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 920], rax
                                                                                        jmp   n167_lit_string_α
.Lx199_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:
                        mov              qword ptr [rbp + 928], 2                       # result
                        mov              dword ptr [rbp + 932], 2
                        mov              rax, qword ptr [rip + .Lx200_0]
                        mov              qword ptr [rbp + 936], rax
                                                                                        jmp   n168_call_builtin_prolog_α
.Lx200_0:
                        .quad            .Lx200_0_s
.Lx200_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n168_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx201_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx201_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_111
                        cmp              esi, 1
                                                                                        jne   .Lx201_112
                        mov              r8, rax
                                                                                        jmp   .Lx201_110
.Lx201_112:
                        cmp              esi, 2
                                                                                        jne   .Lx201_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx201_111
                        mov              r8, rax
                                                                                        jmp   .Lx201_110
.Lx201_113:
                        cmp              eax, 72
                                                                                        jne   .Lx201_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx201_111
                        cmp              rax, r8
                                                                                        je    .Lx201_111
                        mov              r8, rax
                                                                                        jmp   .Lx201_110
.Lx201_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx201_114
                        cmp              eax, 104
                                                                                        je    .Lx201_114
                        cmp              eax, 72
                                                                                        jne   .Lx201_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx201_114
                                                                                        jmp   .Lx201_118
.Lx201_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx201_115
                        cmp              eax, 3
                                                                                        je    .Lx201_114
                        cmp              eax, 2
                                                                                        jne   .Lx201_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx201_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx201_114
                                                                                        jmp   .Lx201_116
.Lx201_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx201_117
.Lx201_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx201_117
.Lx201_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx201_117:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    n177_var_ref_α
                                                                                        jmp   n169_var_ref_α
n168_call_builtin_prolog_β:
                                                                                        jmp   n177_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                                                                                        jmp   n170_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:
                        mov              qword ptr [rbp + 816], 2                       # result
                        mov              dword ptr [rbp + 820], 2
                        mov              rax, qword ptr [rip + .Lx204_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n171_call_builtin_prolog_α
.Lx204_0:
                        .quad            .Lx204_0_s
.Lx204_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n171_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              rsi, qword ptr [rip + .Lx205_2]
                                                                                        jmp   .Lx205_3
.Lx205_2:
                        .quad            .Lx205_2_s
.Lx205_2_s:
                        .string          "[]"
.Lx205_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 104
                                                                                        je    n176_call_builtin_prolog_α
                                                                                        jmp   n172_var_ref_α
n171_call_builtin_prolog_β:
                                                                                        jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n173_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n174_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n174_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        lea              r8, [rbp + 688]
.Lx210_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx210_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx210_41
                        cmp              esi, 1
                                                                                        jne   .Lx210_55
                        mov              r8, rax
                                                                                        jmp   .Lx210_40
.Lx210_55:
                        cmp              esi, 2
                                                                                        jne   .Lx210_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx210_41
                        mov              r8, rax
                                                                                        jmp   .Lx210_40
.Lx210_56:
                        cmp              eax, 72
                                                                                        jne   .Lx210_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx210_41
                        cmp              rax, r8
                                                                                        je    .Lx210_41
                        mov              r8, rax
                                                                                        jmp   .Lx210_40
.Lx210_41:
                        lea              r9, [rbp + 704]
.Lx210_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx210_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx210_43
                        cmp              esi, 1
                                                                                        jne   .Lx210_57
                        mov              r9, rax
                                                                                        jmp   .Lx210_42
.Lx210_57:
                        cmp              esi, 2
                                                                                        jne   .Lx210_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx210_43
                        mov              r9, rax
                                                                                        jmp   .Lx210_42
.Lx210_58:
                        cmp              eax, 72
                                                                                        jne   .Lx210_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx210_43
                        cmp              rax, r9
                                                                                        je    .Lx210_43
                        mov              r9, rax
                                                                                        jmp   .Lx210_42
.Lx210_43:
                        cmp              r8, r9
                                                                                        je    .Lx210_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx210_44
                        cmp              eax, 104
                                                                                        je    .Lx210_44
                        cmp              eax, 72
                                                                                        jne   .Lx210_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx210_44
                                                                                        jmp   .Lx210_45
.Lx210_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx210_53
                        cmp              eax, 104
                                                                                        je    .Lx210_53
                        cmp              eax, 72
                                                                                        jne   .Lx210_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx210_53
                                                                                        jmp   .Lx210_46
.Lx210_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx210_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx210_53
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
                                                                                        jmp   .Lx210_51
.Lx210_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx210_47
                        cmp              eax, 104
                                                                                        je    .Lx210_47
                        cmp              eax, 72
                                                                                        jne   .Lx210_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx210_47
                                                                                        jmp   .Lx210_48
.Lx210_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx210_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx210_53
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
                                                                                        jmp   .Lx210_51
.Lx210_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx210_49
                        cmp              edx, 80
                                                                                        je    .Lx210_53
                                                                                        jmp   .Lx210_52
.Lx210_49:
                        cmp              edx, 80
                                                                                        je    .Lx210_52
                        cmp              ecx, 5
                                                                                        je    .Lx210_53
                        cmp              edx, 5
                                                                                        je    .Lx210_53
                        cmp              ecx, 3
                                                                                        jne   .Lx210_50
                        cmp              edx, 3
                                                                                        jne   .Lx210_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx210_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx210_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx210_51
                                                                                        jmp   .Lx210_52
.Lx210_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx210_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx210_53
.Lx210_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx210_54
.Lx210_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx210_54
.Lx210_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx210_54:
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              eax, 104
                                                                                        je    n176_call_builtin_prolog_α
                                                                                        jmp   n175_suspend_α
n174_call_builtin_prolog_β:
                                                                                        jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n175_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx212_61
                        mov              qword ptr [rbp + 944], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 944]
.Lx212_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n175_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n175_suspend_β]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n175_suspend_β:
                                                                                        jmp   n176_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n176_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   n177_var_ref_α
n176_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n178_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_integer_α:
                        mov              qword ptr [rbp + 592], 3                       # result
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n179_lit_integer_α
.Lx216_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n179_lit_integer_α:
                        mov              qword ptr [rbp + 608], 3                       # result
                        mov              rax, qword ptr [rip + .Lx217_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n180_call_builtin_prolog_α
.Lx217_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n180_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx218_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx218_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx218_111
                        cmp              esi, 1
                                                                                        jne   .Lx218_112
                        mov              r8, rax
                                                                                        jmp   .Lx218_110
.Lx218_112:
                        cmp              esi, 2
                                                                                        jne   .Lx218_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx218_111
                        mov              r8, rax
                                                                                        jmp   .Lx218_110
.Lx218_113:
                        cmp              eax, 72
                                                                                        jne   .Lx218_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx218_111
                        cmp              rax, r8
                                                                                        je    .Lx218_111
                        mov              r8, rax
                                                                                        jmp   .Lx218_110
.Lx218_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx218_114
                        cmp              eax, 104
                                                                                        je    .Lx218_114
                        cmp              eax, 72
                                                                                        jne   .Lx218_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx218_114
                                                                                        jmp   .Lx218_118
.Lx218_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx218_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx218_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx218_115
                                                                                        jmp   .Lx218_114
.Lx218_119:
                        cmp              eax, 3
                                                                                        jne   .Lx218_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx218_114
                                                                                        jmp   .Lx218_115
.Lx218_120:
                        cmp              eax, 2
                                                                                        jne   .Lx218_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx218_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx218_114
                                                                                        jmp   .Lx218_115
.Lx218_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx218_117
.Lx218_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx218_117
.Lx218_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx218_117:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n195_call_builtin_prolog_α
                                                                                        jmp   n181_var_ref_α
n180_call_builtin_prolog_β:
                                                                                        jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n182_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n182_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n183_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n184_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n184_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        lea              r8, [rbp + 432]
.Lx225_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_61
                        cmp              esi, 1
                                                                                        jne   .Lx225_62
                        mov              r8, rax
                                                                                        jmp   .Lx225_60
.Lx225_62:
                        cmp              esi, 2
                                                                                        jne   .Lx225_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_61
                        mov              r8, rax
                                                                                        jmp   .Lx225_60
.Lx225_63:
                        cmp              eax, 72
                                                                                        jne   .Lx225_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_61
                        cmp              rax, r8
                                                                                        je    .Lx225_61
                        mov              r8, rax
                                                                                        jmp   .Lx225_60
.Lx225_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_80
                        cmp              eax, 104
                                                                                        je    .Lx225_80
                        cmp              eax, 72
                                                                                        jne   .Lx225_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx225_80
                                                                                        jmp   .Lx225_74
.Lx225_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx225_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx225_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx225_73
                        lea              r9, [rbp + 448]
.Lx225_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_65
                        cmp              esi, 1
                                                                                        jne   .Lx225_66
                        mov              r9, rax
                                                                                        jmp   .Lx225_64
.Lx225_66:
                        cmp              esi, 2
                                                                                        jne   .Lx225_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_65
                        mov              r9, rax
                                                                                        jmp   .Lx225_64
.Lx225_67:
                        cmp              eax, 72
                                                                                        jne   .Lx225_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_65
                        cmp              rax, r9
                                                                                        je    .Lx225_65
                        mov              r9, rax
                                                                                        jmp   .Lx225_64
.Lx225_65:
                        lea              rcx, [rbp + 464]
.Lx225_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx225_69
                        cmp              esi, 1
                                                                                        jne   .Lx225_70
                        mov              rcx, rax
                                                                                        jmp   .Lx225_68
.Lx225_70:
                        cmp              esi, 2
                                                                                        jne   .Lx225_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_69
                        mov              rcx, rax
                                                                                        jmp   .Lx225_68
.Lx225_71:
                        cmp              eax, 72
                                                                                        jne   .Lx225_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx225_69
                        cmp              rax, rcx
                                                                                        je    .Lx225_69
                        mov              rcx, rax
                                                                                        jmp   .Lx225_68
.Lx225_69:
                        cmp              r9, rcx
                                                                                        je    .Lx225_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_75
                        cmp              eax, 104
                                                                                        je    .Lx225_75
                        cmp              eax, 72
                                                                                        jne   .Lx225_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx225_75
                                                                                        jmp   .Lx225_72
.Lx225_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_76
                        cmp              eax, 104
                                                                                        je    .Lx225_76
                        cmp              eax, 72
                                                                                        jne   .Lx225_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx225_76
                                                                                        jmp   .Lx225_72
.Lx225_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx225_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx225_72
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
                                                                                        jmp   .Lx225_77
.Lx225_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx225_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx225_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx225_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx225_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx225_72
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
                        lea              r9, [rbp + 448]
.Lx225_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_82
                        cmp              esi, 1
                                                                                        jne   .Lx225_83
                        mov              r9, rax
                                                                                        jmp   .Lx225_81
.Lx225_83:
                        cmp              esi, 2
                                                                                        jne   .Lx225_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_82
                        mov              r9, rax
                                                                                        jmp   .Lx225_81
.Lx225_84:
                        cmp              eax, 72
                                                                                        jne   .Lx225_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx225_82
                        cmp              rax, r9
                                                                                        je    .Lx225_82
                        mov              r9, rax
                                                                                        jmp   .Lx225_81
.Lx225_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_85
                        cmp              eax, 104
                                                                                        je    .Lx225_85
                        cmp              eax, 72
                                                                                        jne   .Lx225_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx225_85
                                                                                        jmp   .Lx225_86
.Lx225_85:
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
                                                                                        jmp   .Lx225_87
.Lx225_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx225_87:
                        lea              rcx, [rbp + 464]
.Lx225_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx225_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx225_89
                        cmp              esi, 1
                                                                                        jne   .Lx225_90
                        mov              rcx, rax
                                                                                        jmp   .Lx225_88
.Lx225_90:
                        cmp              esi, 2
                                                                                        jne   .Lx225_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx225_89
                        mov              rcx, rax
                                                                                        jmp   .Lx225_88
.Lx225_91:
                        cmp              eax, 72
                                                                                        jne   .Lx225_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx225_89
                        cmp              rax, rcx
                                                                                        je    .Lx225_89
                        mov              rcx, rax
                                                                                        jmp   .Lx225_88
.Lx225_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx225_92
                        cmp              eax, 104
                                                                                        je    .Lx225_92
                        cmp              eax, 72
                                                                                        jne   .Lx225_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx225_92
                                                                                        jmp   .Lx225_93
.Lx225_92:
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
                                                                                        jmp   .Lx225_94
.Lx225_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx225_94:
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
                                                                                        jmp   .Lx225_77
.Lx225_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx225_77
.Lx225_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx225_77:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 104
                                                                                        je    n195_call_builtin_prolog_α
                                                                                        jmp   n185_var_ref_α
n184_call_builtin_prolog_β:
                                                                                        jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n186_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n186_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n187_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n187_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx230_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx230_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx230_41
                        cmp              esi, 1
                                                                                        jne   .Lx230_55
                        mov              r8, rax
                                                                                        jmp   .Lx230_40
.Lx230_55:
                        cmp              esi, 2
                                                                                        jne   .Lx230_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx230_41
                        mov              r8, rax
                                                                                        jmp   .Lx230_40
.Lx230_56:
                        cmp              eax, 72
                                                                                        jne   .Lx230_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx230_41
                        cmp              rax, r8
                                                                                        je    .Lx230_41
                        mov              r8, rax
                                                                                        jmp   .Lx230_40
.Lx230_41:
                        lea              r9, [rbp + 352]
.Lx230_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx230_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx230_43
                        cmp              esi, 1
                                                                                        jne   .Lx230_57
                        mov              r9, rax
                                                                                        jmp   .Lx230_42
.Lx230_57:
                        cmp              esi, 2
                                                                                        jne   .Lx230_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx230_43
                        mov              r9, rax
                                                                                        jmp   .Lx230_42
.Lx230_58:
                        cmp              eax, 72
                                                                                        jne   .Lx230_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx230_43
                        cmp              rax, r9
                                                                                        je    .Lx230_43
                        mov              r9, rax
                                                                                        jmp   .Lx230_42
.Lx230_43:
                        cmp              r8, r9
                                                                                        je    .Lx230_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx230_44
                        cmp              eax, 104
                                                                                        je    .Lx230_44
                        cmp              eax, 72
                                                                                        jne   .Lx230_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx230_44
                                                                                        jmp   .Lx230_45
.Lx230_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx230_53
                        cmp              eax, 104
                                                                                        je    .Lx230_53
                        cmp              eax, 72
                                                                                        jne   .Lx230_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx230_53
                                                                                        jmp   .Lx230_46
.Lx230_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx230_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx230_53
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
                                                                                        jmp   .Lx230_51
.Lx230_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx230_47
                        cmp              eax, 104
                                                                                        je    .Lx230_47
                        cmp              eax, 72
                                                                                        jne   .Lx230_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx230_47
                                                                                        jmp   .Lx230_48
.Lx230_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx230_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx230_53
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
                                                                                        jmp   .Lx230_51
.Lx230_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx230_49
                        cmp              edx, 80
                                                                                        je    .Lx230_53
                                                                                        jmp   .Lx230_52
.Lx230_49:
                        cmp              edx, 80
                                                                                        je    .Lx230_52
                        cmp              ecx, 5
                                                                                        je    .Lx230_53
                        cmp              edx, 5
                                                                                        je    .Lx230_53
                        cmp              ecx, 3
                                                                                        jne   .Lx230_50
                        cmp              edx, 3
                                                                                        jne   .Lx230_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx230_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx230_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx230_51
                                                                                        jmp   .Lx230_52
.Lx230_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx230_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx230_53
.Lx230_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx230_54
.Lx230_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx230_54
.Lx230_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx230_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 104
                                                                                        je    n195_call_builtin_prolog_α
                                                                                        jmp   n188_var_ref_α
n187_call_builtin_prolog_β:
                                                                                        jmp   n195_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 992]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n189_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n189_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n190_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n190_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx236_21
.Lx236_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 288]                     # v
                        mov              rdx, qword ptr [rbp + 296]                     # v
                        call             rt_arg_stage@PLT
.Lx236_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx236_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx236_23
.Lx236_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
.Lx236_23:
                        lea              rax, [rip + .Lx236_7]
                        push             rax
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx236_1
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_3:
                        mov              qword ptr [rbp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx236_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx236_2
.Lx236_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx236_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx236_2
.Lx236_1:
                        call             rt_faildescr@PLT
.Lx236_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n195_call_builtin_prolog_α
                                                                                        jmp   n191_var_ref_α
n190_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 256], 0
                        lea              rdi, [rbp + 272]
                        lea              rsi, [rbp + 280]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n195_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              ecx, 48
                        mov              r8d, 944
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 288]                     # v
                        mov              rdx, qword ptr [rbp + 296]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 304]                     # v
                        mov              rdx, qword ptr [rbp + 312]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n195_call_builtin_prolog_α
                        lea              r11, [rip + .Lx236_7]
                        push             r11
                        lea              rcx, [rip + .Lx236_3]
                        lea              rdx, [rip + .Lx236_4]
                                                                                        jmp   rax
.Lx236_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n195_call_builtin_prolog_α
                                                                                        jmp   n191_var_ref_α
.Lx236_0:
                        .quad            .Lx236_0_s
.Lx236_0_s:
                        .string          "test/2"
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 960]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n192_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n192_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 976]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n193_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        lea              rsi, [rbp + 176]
                        lea              rdx, [rbp + 192]
                        call             proc_nd$2F2_dcα
                                                                                        jmp   .Lx242_2
.Lx242_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n190_call_proc_staged_β
                                                                                        jmp   n194_suspend_α
n193_call_proc_staged_β:
                                                                                        jmp   n190_call_proc_staged_β
.Lx242_0:
                        .quad            .Lx242_0_s
.Lx242_0_s:
                        .string          "nd/2"
#-----------------------------------------------------------------------------------------------------------------------
n194_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx244_61
                        mov              qword ptr [rbp + 944], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 944]
.Lx244_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n194_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n194_suspend_β]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_test$2F2_γ
n194_suspend_β:
                                                                                        jmp   n193_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n195_call_builtin_prolog_α:
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
                                                                                        je    proc_test$2F2_ω
                                                                                        jmp   proc_test$2F2_ω
n195_call_builtin_prolog_β:
                                                                                        jmp   proc_test$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_β:
                                                                                        jmp   qword ptr [rbp + 944]
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx245_50
                        mov              qword ptr [rbp + 944], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx245_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1032]
                        mov              rbp, qword ptr [rbp + 1048]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_test$2F2_ω:
                        lea              rsp, [rbp + 1056]
                        mov              rcx, qword ptr [rbp + 1040]
                        mov              rbp, qword ptr [rbp + 1048]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nd$2F2_α
proc_nd$2F2_α:
                        sub              rsp, 1328
                        mov              qword ptr [rsp + 1304], rcx
                        mov              qword ptr [rsp + 1312], rdx
                        mov              qword ptr [rsp + 1320], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1296
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 9
                        call             rt_icn_zframe_args_install@PLT
proc_nd$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n246_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx283_102
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                                                                                        jmp   .Lx283_101
.Lx283_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx283_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx283_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx283_101
.Lx283_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx283_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_nd$2F2_ω
                                                                                        jmp   n247_var_ref_α
n246_call_builtin_prolog_β:
                                                                                        jmp   proc_nd$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n247_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n248_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:
                        mov              qword ptr [rbp + 1152], 2                      # result
                        mov              dword ptr [rbp + 1156], 1
                        mov              rax, qword ptr [rip + .Lx286_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n249_var_ref_α
.Lx286_0:
                        .quad            .Lx286_0_s
.Lx286_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n250_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n251_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n252_call_builtin_prolog_α
n251_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx292_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx292_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        cmp              esi, 1
                                                                                        jne   .Lx292_55
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_55:
                        cmp              esi, 2
                                                                                        jne   .Lx292_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_56:
                        cmp              eax, 72
                                                                                        jne   .Lx292_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_41
                        cmp              rax, r8
                                                                                        je    .Lx292_41
                        mov              r8, rax
                                                                                        jmp   .Lx292_40
.Lx292_41:
                        lea              r9, [rbp + 1008]
.Lx292_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx292_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        cmp              esi, 1
                                                                                        jne   .Lx292_57
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_57:
                        cmp              esi, 2
                                                                                        jne   .Lx292_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_58:
                        cmp              eax, 72
                                                                                        jne   .Lx292_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx292_43
                        cmp              rax, r9
                                                                                        je    .Lx292_43
                        mov              r9, rax
                                                                                        jmp   .Lx292_42
.Lx292_43:
                        cmp              r8, r9
                                                                                        je    .Lx292_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_44
                        cmp              eax, 104
                                                                                        je    .Lx292_44
                        cmp              eax, 72
                                                                                        jne   .Lx292_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx292_44
                                                                                        jmp   .Lx292_45
.Lx292_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_53
                        cmp              eax, 104
                                                                                        je    .Lx292_53
                        cmp              eax, 72
                                                                                        jne   .Lx292_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_53
                                                                                        jmp   .Lx292_46
.Lx292_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx292_53
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
                                                                                        jmp   .Lx292_51
.Lx292_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx292_47
                        cmp              eax, 104
                                                                                        je    .Lx292_47
                        cmp              eax, 72
                                                                                        jne   .Lx292_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx292_47
                                                                                        jmp   .Lx292_48
.Lx292_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx292_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx292_53
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
                                                                                        jmp   .Lx292_51
.Lx292_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx292_49
                        cmp              edx, 80
                                                                                        je    .Lx292_53
                                                                                        jmp   .Lx292_52
.Lx292_49:
                        cmp              edx, 80
                                                                                        je    .Lx292_52
                        cmp              ecx, 5
                                                                                        je    .Lx292_53
                        cmp              edx, 5
                                                                                        je    .Lx292_53
                        cmp              ecx, 3
                                                                                        jne   .Lx292_50
                        cmp              edx, 3
                                                                                        jne   .Lx292_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx292_51
                                                                                        jmp   .Lx292_52
.Lx292_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx292_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx292_53
.Lx292_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx292_54
.Lx292_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx292_54
.Lx292_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx292_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n253_var_ref_α
n252_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n254_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n254_lit_string_α:
                        mov              qword ptr [rbp + 960], 2                       # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n255_var_ref_α
.Lx295_0:
                        .quad            .Lx295_0_s
.Lx295_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                                                                                        jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                                                                                        jmp   n257_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n258_call_builtin_prolog_α
n257_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
.Lx301_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx301_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_41
                        cmp              esi, 1
                                                                                        jne   .Lx301_55
                        mov              r8, rax
                                                                                        jmp   .Lx301_40
.Lx301_55:
                        cmp              esi, 2
                                                                                        jne   .Lx301_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx301_41
                        mov              r8, rax
                                                                                        jmp   .Lx301_40
.Lx301_56:
                        cmp              eax, 72
                                                                                        jne   .Lx301_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_41
                        cmp              rax, r8
                                                                                        je    .Lx301_41
                        mov              r8, rax
                                                                                        jmp   .Lx301_40
.Lx301_41:
                        lea              r9, [rbp + 816]
.Lx301_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx301_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_43
                        cmp              esi, 1
                                                                                        jne   .Lx301_57
                        mov              r9, rax
                                                                                        jmp   .Lx301_42
.Lx301_57:
                        cmp              esi, 2
                                                                                        jne   .Lx301_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx301_43
                        mov              r9, rax
                                                                                        jmp   .Lx301_42
.Lx301_58:
                        cmp              eax, 72
                                                                                        jne   .Lx301_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx301_43
                        cmp              rax, r9
                                                                                        je    .Lx301_43
                        mov              r9, rax
                                                                                        jmp   .Lx301_42
.Lx301_43:
                        cmp              r8, r9
                                                                                        je    .Lx301_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx301_44
                        cmp              eax, 104
                                                                                        je    .Lx301_44
                        cmp              eax, 72
                                                                                        jne   .Lx301_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx301_44
                                                                                        jmp   .Lx301_45
.Lx301_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx301_53
                        cmp              eax, 104
                                                                                        je    .Lx301_53
                        cmp              eax, 72
                                                                                        jne   .Lx301_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx301_53
                                                                                        jmp   .Lx301_46
.Lx301_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx301_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx301_53
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
                                                                                        jmp   .Lx301_51
.Lx301_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx301_47
                        cmp              eax, 104
                                                                                        je    .Lx301_47
                        cmp              eax, 72
                                                                                        jne   .Lx301_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx301_47
                                                                                        jmp   .Lx301_48
.Lx301_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx301_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx301_53
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
                                                                                        jmp   .Lx301_51
.Lx301_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx301_49
                        cmp              edx, 80
                                                                                        je    .Lx301_53
                                                                                        jmp   .Lx301_52
.Lx301_49:
                        cmp              edx, 80
                                                                                        je    .Lx301_52
                        cmp              ecx, 5
                                                                                        je    .Lx301_53
                        cmp              edx, 5
                                                                                        je    .Lx301_53
                        cmp              ecx, 3
                                                                                        jne   .Lx301_50
                        cmp              edx, 3
                                                                                        jne   .Lx301_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx301_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx301_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx301_51
                                                                                        jmp   .Lx301_52
.Lx301_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx301_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx301_53
.Lx301_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx301_54
.Lx301_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx301_54
.Lx301_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx301_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n259_var_ref_α
n258_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n260_var_α
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n261_var_α
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n262_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n262_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n263_call_builtin_prolog_α
n262_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n264_var_ref_α
n263_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n264_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n265_var_α
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n266_var_α
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n268_call_builtin_prolog_α
n267_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n268_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n269_var_α
n268_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n270_var_α
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n271_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n272_var_ref_α
n271_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n273_var_α
#-----------------------------------------------------------------------------------------------------------------------
n273_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n274_var_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n275_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n275_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n276_call_builtin_prolog_α
n275_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n276_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n277_var_α
n276_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n278_var_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 216], rax
                                                                                        jmp   n279_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n279_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n282_call_builtin_prolog_α
                                                                                        jmp   n280_move_label_α
n279_call_builtin_prolog_β:
                                                                                        jmp   n282_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_move_label_α:
                        lea              rax, [rip + n282_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_nd$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n281_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    proc_nd$2F2_ω
                                                                                        jmp   rax
n281_disjunction_β:
                                                                                        jmp   proc_nd$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n282_call_builtin_prolog_α:
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
                                                                                        je    proc_nd$2F2_ω
                                                                                        jmp   proc_nd$2F2_ω
n282_call_builtin_prolog_β:
                                                                                        jmp   proc_nd$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nd$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_nd$2F2_β:
                                                                                        jmp   n281_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_nd$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1304]
                        mov              rbp, qword ptr [rbp + 1320]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_nd$2F2_ω:
                        lea              rsp, [rbp + 1328]
                        mov              rcx, qword ptr [rbp + 1312]
                        mov              rbp, qword ptr [rbp + 1320]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_nd$2F2_dcα:
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
                        lea              rcx, [rip + .Lx341_2]
                        lea              rdx, [rip + .Lx341_3]
                                                                                        jmp   proc_nd$2F2_α
.Lx341_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx341_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_safe$2F2_α
proc_safe$2F2_α:
                        sub              rsp, 960
                        mov              qword ptr [rsp + 936], rcx
                        mov              qword ptr [rsp + 944], rdx
                        mov              qword ptr [rsp + 952], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 848
                        mov              edx, 928
                        call             rt_jmp_frame_lexprep2@PLT
proc_safe$2F2_α_body:
                        lea              rax, [rip + n349_suspend_β]
                        mov              qword ptr [rbp + 848], rax
#-----------------------------------------------------------------------------------------------------------------------
n342_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx369_102
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                                                                                        jmp   .Lx369_101
.Lx369_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx369_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx369_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx369_101
.Lx369_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx369_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_safe$2F2_ω
                                                                                        jmp   n343_var_ref_α
n342_call_builtin_prolog_β:
                                                                                        jmp   proc_safe$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n343_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                                                                                        jmp   n344_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n345_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n345_call_builtin_prolog_α:
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
.Lx374_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx374_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_41
                        cmp              esi, 1
                                                                                        jne   .Lx374_55
                        mov              r8, rax
                                                                                        jmp   .Lx374_40
.Lx374_55:
                        cmp              esi, 2
                                                                                        jne   .Lx374_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx374_41
                        mov              r8, rax
                                                                                        jmp   .Lx374_40
.Lx374_56:
                        cmp              eax, 72
                                                                                        jne   .Lx374_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_41
                        cmp              rax, r8
                                                                                        je    .Lx374_41
                        mov              r8, rax
                                                                                        jmp   .Lx374_40
.Lx374_41:
                        lea              r9, [rbp + 800]
.Lx374_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx374_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_43
                        cmp              esi, 1
                                                                                        jne   .Lx374_57
                        mov              r9, rax
                                                                                        jmp   .Lx374_42
.Lx374_57:
                        cmp              esi, 2
                                                                                        jne   .Lx374_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx374_43
                        mov              r9, rax
                                                                                        jmp   .Lx374_42
.Lx374_58:
                        cmp              eax, 72
                                                                                        jne   .Lx374_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx374_43
                        cmp              rax, r9
                                                                                        je    .Lx374_43
                        mov              r9, rax
                                                                                        jmp   .Lx374_42
.Lx374_43:
                        cmp              r8, r9
                                                                                        je    .Lx374_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_44
                        cmp              eax, 104
                                                                                        je    .Lx374_44
                        cmp              eax, 72
                                                                                        jne   .Lx374_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx374_44
                                                                                        jmp   .Lx374_45
.Lx374_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_53
                        cmp              eax, 104
                                                                                        je    .Lx374_53
                        cmp              eax, 72
                                                                                        jne   .Lx374_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx374_53
                                                                                        jmp   .Lx374_46
.Lx374_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx374_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx374_53
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
                                                                                        jmp   .Lx374_51
.Lx374_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx374_47
                        cmp              eax, 104
                                                                                        je    .Lx374_47
                        cmp              eax, 72
                                                                                        jne   .Lx374_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx374_47
                                                                                        jmp   .Lx374_48
.Lx374_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx374_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx374_53
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
                                                                                        jmp   .Lx374_51
.Lx374_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx374_49
                        cmp              edx, 80
                                                                                        je    .Lx374_53
                                                                                        jmp   .Lx374_52
.Lx374_49:
                        cmp              edx, 80
                                                                                        je    .Lx374_52
                        cmp              ecx, 5
                                                                                        je    .Lx374_53
                        cmp              edx, 5
                                                                                        je    .Lx374_53
                        cmp              ecx, 3
                                                                                        jne   .Lx374_50
                        cmp              edx, 3
                                                                                        jne   .Lx374_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx374_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx374_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx374_51
                                                                                        jmp   .Lx374_52
.Lx374_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx374_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx374_53
.Lx374_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx374_54
.Lx374_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx374_54
.Lx374_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx374_54:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n350_call_builtin_prolog_α
                                                                                        jmp   n346_var_ref_α
n345_call_builtin_prolog_β:
                                                                                        jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n347_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 2
                        mov              rax, qword ptr [rip + .Lx377_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n348_call_builtin_prolog_α
.Lx377_0:
                        .quad            .Lx377_0_s
.Lx377_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n348_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx378_2]
                                                                                        jmp   .Lx378_3
.Lx378_2:
                        .quad            .Lx378_2_s
.Lx378_2_s:
                        .string          "[]"
.Lx378_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n350_call_builtin_prolog_α
                                                                                        jmp   n349_suspend_α
n348_call_builtin_prolog_β:
                                                                                        jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n349_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx380_61
                        mov              qword ptr [rbp + 848], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 848]
.Lx380_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n349_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n349_suspend_β]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_safe$2F2_γ
n349_suspend_β:
                                                                                        jmp   n350_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n350_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 104
                                                                                        je    proc_safe$2F2_ω
                                                                                        jmp   n351_var_ref_α
n350_call_builtin_prolog_β:
                                                                                        jmp   proc_safe$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n351_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n352_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n352_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n353_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n353_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx386_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx386_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_41
                        cmp              esi, 1
                                                                                        jne   .Lx386_55
                        mov              r8, rax
                                                                                        jmp   .Lx386_40
.Lx386_55:
                        cmp              esi, 2
                                                                                        jne   .Lx386_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx386_41
                        mov              r8, rax
                                                                                        jmp   .Lx386_40
.Lx386_56:
                        cmp              eax, 72
                                                                                        jne   .Lx386_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_41
                        cmp              rax, r8
                                                                                        je    .Lx386_41
                        mov              r8, rax
                                                                                        jmp   .Lx386_40
.Lx386_41:
                        lea              r9, [rbp + 592]
.Lx386_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx386_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_43
                        cmp              esi, 1
                                                                                        jne   .Lx386_57
                        mov              r9, rax
                                                                                        jmp   .Lx386_42
.Lx386_57:
                        cmp              esi, 2
                                                                                        jne   .Lx386_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx386_43
                        mov              r9, rax
                                                                                        jmp   .Lx386_42
.Lx386_58:
                        cmp              eax, 72
                                                                                        jne   .Lx386_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx386_43
                        cmp              rax, r9
                                                                                        je    .Lx386_43
                        mov              r9, rax
                                                                                        jmp   .Lx386_42
.Lx386_43:
                        cmp              r8, r9
                                                                                        je    .Lx386_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_44
                        cmp              eax, 104
                                                                                        je    .Lx386_44
                        cmp              eax, 72
                                                                                        jne   .Lx386_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx386_44
                                                                                        jmp   .Lx386_45
.Lx386_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_53
                        cmp              eax, 104
                                                                                        je    .Lx386_53
                        cmp              eax, 72
                                                                                        jne   .Lx386_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx386_53
                                                                                        jmp   .Lx386_46
.Lx386_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx386_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx386_53
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
                                                                                        jmp   .Lx386_51
.Lx386_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx386_47
                        cmp              eax, 104
                                                                                        je    .Lx386_47
                        cmp              eax, 72
                                                                                        jne   .Lx386_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx386_47
                                                                                        jmp   .Lx386_48
.Lx386_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx386_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx386_53
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
                                                                                        jmp   .Lx386_51
.Lx386_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx386_49
                        cmp              edx, 80
                                                                                        je    .Lx386_53
                                                                                        jmp   .Lx386_52
.Lx386_49:
                        cmp              edx, 80
                                                                                        je    .Lx386_52
                        cmp              ecx, 5
                                                                                        je    .Lx386_53
                        cmp              edx, 5
                                                                                        je    .Lx386_53
                        cmp              ecx, 3
                                                                                        jne   .Lx386_50
                        cmp              edx, 3
                                                                                        jne   .Lx386_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx386_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx386_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx386_51
                                                                                        jmp   .Lx386_52
.Lx386_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx386_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx386_53
.Lx386_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx386_54
.Lx386_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx386_54
.Lx386_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx386_54:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n368_call_builtin_prolog_α
                                                                                        jmp   n354_var_ref_α
n353_call_builtin_prolog_β:
                                                                                        jmp   n368_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n354_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n355_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n355_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n356_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n357_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n357_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx393_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_61
                        cmp              esi, 1
                                                                                        jne   .Lx393_62
                        mov              r8, rax
                                                                                        jmp   .Lx393_60
.Lx393_62:
                        cmp              esi, 2
                                                                                        jne   .Lx393_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_61
                        mov              r8, rax
                                                                                        jmp   .Lx393_60
.Lx393_63:
                        cmp              eax, 72
                                                                                        jne   .Lx393_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_61
                        cmp              rax, r8
                                                                                        je    .Lx393_61
                        mov              r8, rax
                                                                                        jmp   .Lx393_60
.Lx393_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_80
                        cmp              eax, 104
                                                                                        je    .Lx393_80
                        cmp              eax, 72
                                                                                        jne   .Lx393_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx393_80
                                                                                        jmp   .Lx393_74
.Lx393_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx393_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx393_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx393_73
                        lea              r9, [rbp + 496]
.Lx393_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_65
                        cmp              esi, 1
                                                                                        jne   .Lx393_66
                        mov              r9, rax
                                                                                        jmp   .Lx393_64
.Lx393_66:
                        cmp              esi, 2
                                                                                        jne   .Lx393_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_65
                        mov              r9, rax
                                                                                        jmp   .Lx393_64
.Lx393_67:
                        cmp              eax, 72
                                                                                        jne   .Lx393_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_65
                        cmp              rax, r9
                                                                                        je    .Lx393_65
                        mov              r9, rax
                                                                                        jmp   .Lx393_64
.Lx393_65:
                        lea              rcx, [rbp + 512]
.Lx393_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx393_69
                        cmp              esi, 1
                                                                                        jne   .Lx393_70
                        mov              rcx, rax
                                                                                        jmp   .Lx393_68
.Lx393_70:
                        cmp              esi, 2
                                                                                        jne   .Lx393_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_69
                        mov              rcx, rax
                                                                                        jmp   .Lx393_68
.Lx393_71:
                        cmp              eax, 72
                                                                                        jne   .Lx393_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx393_69
                        cmp              rax, rcx
                                                                                        je    .Lx393_69
                        mov              rcx, rax
                                                                                        jmp   .Lx393_68
.Lx393_69:
                        cmp              r9, rcx
                                                                                        je    .Lx393_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_75
                        cmp              eax, 104
                                                                                        je    .Lx393_75
                        cmp              eax, 72
                                                                                        jne   .Lx393_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_75
                                                                                        jmp   .Lx393_72
.Lx393_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_76
                        cmp              eax, 104
                                                                                        je    .Lx393_76
                        cmp              eax, 72
                                                                                        jne   .Lx393_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx393_76
                                                                                        jmp   .Lx393_72
.Lx393_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx393_72
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
                                                                                        jmp   .Lx393_77
.Lx393_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx393_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx393_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx393_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx393_72
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
                        lea              r9, [rbp + 496]
.Lx393_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_82
                        cmp              esi, 1
                                                                                        jne   .Lx393_83
                        mov              r9, rax
                                                                                        jmp   .Lx393_81
.Lx393_83:
                        cmp              esi, 2
                                                                                        jne   .Lx393_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_82
                        mov              r9, rax
                                                                                        jmp   .Lx393_81
.Lx393_84:
                        cmp              eax, 72
                                                                                        jne   .Lx393_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_82
                        cmp              rax, r9
                                                                                        je    .Lx393_82
                        mov              r9, rax
                                                                                        jmp   .Lx393_81
.Lx393_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_85
                        cmp              eax, 104
                                                                                        je    .Lx393_85
                        cmp              eax, 72
                                                                                        jne   .Lx393_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_85
                                                                                        jmp   .Lx393_86
.Lx393_85:
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
                                                                                        jmp   .Lx393_87
.Lx393_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx393_87:
                        lea              rcx, [rbp + 512]
.Lx393_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx393_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx393_89
                        cmp              esi, 1
                                                                                        jne   .Lx393_90
                        mov              rcx, rax
                                                                                        jmp   .Lx393_88
.Lx393_90:
                        cmp              esi, 2
                                                                                        jne   .Lx393_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_89
                        mov              rcx, rax
                                                                                        jmp   .Lx393_88
.Lx393_91:
                        cmp              eax, 72
                                                                                        jne   .Lx393_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx393_89
                        cmp              rax, rcx
                                                                                        je    .Lx393_89
                        mov              rcx, rax
                                                                                        jmp   .Lx393_88
.Lx393_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_92
                        cmp              eax, 104
                                                                                        je    .Lx393_92
                        cmp              eax, 72
                                                                                        jne   .Lx393_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx393_92
                                                                                        jmp   .Lx393_93
.Lx393_92:
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
                                                                                        jmp   .Lx393_94
.Lx393_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx393_94:
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
                                                                                        jmp   .Lx393_77
.Lx393_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx393_77
.Lx393_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx393_77:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 104
                                                                                        je    n368_call_builtin_prolog_α
                                                                                        jmp   n358_var_ref_α
n357_call_builtin_prolog_β:
                                                                                        jmp   n368_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n358_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                                                                                        jmp   n359_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n360_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n360_call_proc_staged_α:
                        mov              qword ptr [rbp + 384], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx399_20
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx399_21
.Lx399_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 416]                     # v
                        mov              rdx, qword ptr [rbp + 424]                     # v
                        call             rt_arg_stage@PLT
.Lx399_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx399_22
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx399_23
.Lx399_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 432]                     # v
                        mov              rdx, qword ptr [rbp + 440]                     # v
                        call             rt_arg_stage@PLT
.Lx399_23:
                        lea              rax, [rip + .Lx399_7]
                        push             rax
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx399_1
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_3:
                        mov              qword ptr [rbp + 392], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx399_5
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx399_2
.Lx399_4:
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax
                                                                                        jne   .Lx399_6
                        mov              qword ptr [rbp + 384], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx399_2
.Lx399_1:
                        call             rt_faildescr@PLT
.Lx399_2:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n368_call_builtin_prolog_α
                                                                                        jmp   n361_lit_string_α
n360_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 384], 0
                        lea              rdi, [rbp + 400]
                        lea              rsi, [rbp + 408]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n368_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              ecx, 48
                        mov              r8d, 944
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 416]                     # v
                        mov              rdx, qword ptr [rbp + 424]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 432]                     # v
                        mov              rdx, qword ptr [rbp + 440]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n368_call_builtin_prolog_α
                        lea              r11, [rip + .Lx399_7]
                        push             r11
                        lea              rcx, [rip + .Lx399_3]
                        lea              rdx, [rip + .Lx399_4]
                                                                                        jmp   rax
.Lx399_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 104
                                                                                        je    n368_call_builtin_prolog_α
                                                                                        jmp   n361_lit_string_α
.Lx399_0:
                        .quad            .Lx399_0_s
.Lx399_0_s:
                        .string          "test/2"
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 304], 2                       # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Lx400_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n362_var_ref_α
.Lx400_0:
                        .quad            .Lx400_0_s
.Lx400_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n363_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 864]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n364_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n364_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n368_call_builtin_prolog_α
                                                                                        jmp   n365_var_ref_α
n364_call_builtin_prolog_β:
                                                                                        jmp   n368_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n366_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n366_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx409_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx409_21
.Lx409_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx409_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx409_22
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx409_23
.Lx409_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx409_23:
                        lea              rax, [rip + .Lx409_7]
                        push             rax
                        mov              edi, 4                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx409_1
                        lea              rcx, [rip + .Lx409_3]
                        lea              rdx, [rip + .Lx409_4]
                                                                                        jmp   rax
.Lx409_3:
                        mov              qword ptr [rbp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx409_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx409_2
.Lx409_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx409_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx409_2
.Lx409_1:
                        call             rt_faildescr@PLT
.Lx409_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n360_call_proc_staged_β
                                                                                        jmp   n367_suspend_α
n366_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 160], 0
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 184]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n360_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              ecx, 48
                        mov              r8d, 848
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 4                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n360_call_proc_staged_β
                        lea              r11, [rip + .Lx409_7]
                        push             r11
                        lea              rcx, [rip + .Lx409_3]
                        lea              rdx, [rip + .Lx409_4]
                                                                                        jmp   rax
.Lx409_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n360_call_proc_staged_β
                                                                                        jmp   n367_suspend_α
.Lx409_0:
                        .quad            .Lx409_0_s
.Lx409_0_s:
                        .string          "safe/2"
#-----------------------------------------------------------------------------------------------------------------------
n367_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx411_61
                        mov              qword ptr [rbp + 848], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 848]
.Lx411_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n367_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n367_suspend_β]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_safe$2F2_γ
n367_suspend_β:
                                                                                        jmp   n366_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n368_call_builtin_prolog_α:
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
                                                                                        je    proc_safe$2F2_ω
                                                                                        jmp   proc_safe$2F2_ω
n368_call_builtin_prolog_β:
                                                                                        jmp   proc_safe$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_safe$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_safe$2F2_β:
                                                                                        jmp   qword ptr [rbp + 848]
#-----------------------------------------------------------------------------------------------------------------------
proc_safe$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx412_50
                        mov              qword ptr [rbp + 848], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx412_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 936]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_safe$2F2_ω:
                        lea              rsp, [rbp + 960]
                        mov              rcx, qword ptr [rbp + 944]
                        mov              rbp, qword ptr [rbp + 952]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_perm$2F2_α
proc_perm$2F2_α:
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rcx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 880
                        mov              edx, 976
                        call             rt_jmp_frame_lexprep2@PLT
proc_perm$2F2_α_body:
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 880], rax
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx442_102
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                                                                                        jmp   .Lx442_101
.Lx442_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx442_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx442_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx442_101
.Lx442_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx442_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_perm$2F2_ω
                                                                                        jmp   n414_var_ref_α
n413_call_builtin_prolog_β:
                                                                                        jmp   proc_perm$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                                                                                        jmp   n415_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:
                        mov              qword ptr [rbp + 848], 3                       # result
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n416_lit_string_α
.Lx445_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 864], 2                       # result
                        mov              dword ptr [rbp + 868], 2
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n417_call_builtin_prolog_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        lea              r8, [rbp + 784]
.Lx447_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx447_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx447_111
                        cmp              esi, 1
                                                                                        jne   .Lx447_112
                        mov              r8, rax
                                                                                        jmp   .Lx447_110
.Lx447_112:
                        cmp              esi, 2
                                                                                        jne   .Lx447_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx447_111
                        mov              r8, rax
                                                                                        jmp   .Lx447_110
.Lx447_113:
                        cmp              eax, 72
                                                                                        jne   .Lx447_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx447_111
                        cmp              rax, r8
                                                                                        je    .Lx447_111
                        mov              r8, rax
                                                                                        jmp   .Lx447_110
.Lx447_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx447_114
                        cmp              eax, 104
                                                                                        je    .Lx447_114
                        cmp              eax, 72
                                                                                        jne   .Lx447_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx447_114
                                                                                        jmp   .Lx447_118
.Lx447_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx447_115
                        cmp              eax, 3
                                                                                        je    .Lx447_114
                        cmp              eax, 2
                                                                                        jne   .Lx447_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx447_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx447_114
                                                                                        jmp   .Lx447_116
.Lx447_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx447_117
.Lx447_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx447_117
.Lx447_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx447_117:
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 104
                                                                                        je    n426_var_ref_α
                                                                                        jmp   n418_var_ref_α
n417_call_builtin_prolog_β:
                                                                                        jmp   n426_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n419_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 752], 2                       # result
                        mov              dword ptr [rbp + 756], 2
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n420_call_builtin_prolog_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              rsi, qword ptr [rip + .Lx451_2]
                                                                                        jmp   .Lx451_3
.Lx451_2:
                        .quad            .Lx451_2_s
.Lx451_2_s:
                        .string          "[]"
.Lx451_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 104
                                                                                        je    n425_call_builtin_prolog_α
                                                                                        jmp   n421_var_ref_α
n420_call_builtin_prolog_β:
                                                                                        jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n422_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:
                        mov              qword ptr [rbp + 672], 2                       # result
                        mov              dword ptr [rbp + 676], 2
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n423_call_builtin_prolog_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              rsi, qword ptr [rip + .Lx455_2]
                                                                                        jmp   .Lx455_3
.Lx455_2:
                        .quad            .Lx455_2_s
.Lx455_2_s:
                        .string          "[]"
.Lx455_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              eax, 104
                                                                                        je    n425_call_builtin_prolog_α
                                                                                        jmp   n424_suspend_α
n423_call_builtin_prolog_β:
                                                                                        jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n424_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx457_61
                        mov              qword ptr [rbp + 880], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 880]
.Lx457_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n424_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n424_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_perm$2F2_γ
n424_suspend_β:
                                                                                        jmp   n425_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    proc_perm$2F2_ω
                                                                                        jmp   n426_var_ref_α
n425_call_builtin_prolog_β:
                                                                                        jmp   proc_perm$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n427_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n428_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx463_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              esi, 1
                                                                                        jne   .Lx463_55
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_55:
                        cmp              esi, 2
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_56:
                        cmp              eax, 72
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              rax, r8
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_41:
                        lea              r9, [rbp + 512]
.Lx463_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              esi, 1
                                                                                        jne   .Lx463_57
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_57:
                        cmp              esi, 2
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_58:
                        cmp              eax, 72
                                                                                        jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_43
                        cmp              rax, r9
                                                                                        je    .Lx463_43
                        mov              r9, rax
                                                                                        jmp   .Lx463_42
.Lx463_43:
                        cmp              r8, r9
                                                                                        je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_44
                        cmp              eax, 104
                                                                                        je    .Lx463_44
                        cmp              eax, 72
                                                                                        jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx463_44
                                                                                        jmp   .Lx463_45
.Lx463_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_53
                        cmp              eax, 104
                                                                                        je    .Lx463_53
                        cmp              eax, 72
                                                                                        jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_46
.Lx463_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
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
                                                                                        jmp   .Lx463_51
.Lx463_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_47
                        cmp              eax, 104
                                                                                        je    .Lx463_47
                        cmp              eax, 72
                                                                                        jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx463_47
                                                                                        jmp   .Lx463_48
.Lx463_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx463_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx463_53
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
                                                                                        jmp   .Lx463_51
.Lx463_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx463_49
                        cmp              edx, 80
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_52
.Lx463_49:
                        cmp              edx, 80
                                                                                        je    .Lx463_52
                        cmp              ecx, 5
                                                                                        je    .Lx463_53
                        cmp              edx, 5
                                                                                        je    .Lx463_53
                        cmp              ecx, 3
                                                                                        jne   .Lx463_50
                        cmp              edx, 3
                                                                                        jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx463_51
                                                                                        jmp   .Lx463_52
.Lx463_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx463_53
.Lx463_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx463_54
.Lx463_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx463_54
.Lx463_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx463_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n429_var_ref_α
n428_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n430_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n431_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n432_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx470_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx470_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_61
                        cmp              esi, 1
                                                                                        jne   .Lx470_62
                        mov              r8, rax
                                                                                        jmp   .Lx470_60
.Lx470_62:
                        cmp              esi, 2
                                                                                        jne   .Lx470_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_61
                        mov              r8, rax
                                                                                        jmp   .Lx470_60
.Lx470_63:
                        cmp              eax, 72
                                                                                        jne   .Lx470_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_61
                        cmp              rax, r8
                                                                                        je    .Lx470_61
                        mov              r8, rax
                                                                                        jmp   .Lx470_60
.Lx470_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_80
                        cmp              eax, 104
                                                                                        je    .Lx470_80
                        cmp              eax, 72
                                                                                        jne   .Lx470_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx470_80
                                                                                        jmp   .Lx470_74
.Lx470_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx470_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx470_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx470_73
                        lea              r9, [rbp + 416]
.Lx470_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx470_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_65
                        cmp              esi, 1
                                                                                        jne   .Lx470_66
                        mov              r9, rax
                                                                                        jmp   .Lx470_64
.Lx470_66:
                        cmp              esi, 2
                                                                                        jne   .Lx470_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_65
                        mov              r9, rax
                                                                                        jmp   .Lx470_64
.Lx470_67:
                        cmp              eax, 72
                                                                                        jne   .Lx470_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_65
                        cmp              rax, r9
                                                                                        je    .Lx470_65
                        mov              r9, rax
                                                                                        jmp   .Lx470_64
.Lx470_65:
                        lea              rcx, [rbp + 432]
.Lx470_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx470_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_69
                        cmp              esi, 1
                                                                                        jne   .Lx470_70
                        mov              rcx, rax
                                                                                        jmp   .Lx470_68
.Lx470_70:
                        cmp              esi, 2
                                                                                        jne   .Lx470_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_69
                        mov              rcx, rax
                                                                                        jmp   .Lx470_68
.Lx470_71:
                        cmp              eax, 72
                                                                                        jne   .Lx470_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_69
                        cmp              rax, rcx
                                                                                        je    .Lx470_69
                        mov              rcx, rax
                                                                                        jmp   .Lx470_68
.Lx470_69:
                        cmp              r9, rcx
                                                                                        je    .Lx470_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_75
                        cmp              eax, 104
                                                                                        je    .Lx470_75
                        cmp              eax, 72
                                                                                        jne   .Lx470_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx470_75
                                                                                        jmp   .Lx470_72
.Lx470_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_76
                        cmp              eax, 104
                                                                                        je    .Lx470_76
                        cmp              eax, 72
                                                                                        jne   .Lx470_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx470_76
                                                                                        jmp   .Lx470_72
.Lx470_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx470_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx470_72
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
                                                                                        jmp   .Lx470_77
.Lx470_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx470_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx470_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx470_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx470_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx470_72
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
                        lea              r9, [rbp + 416]
.Lx470_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx470_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_82
                        cmp              esi, 1
                                                                                        jne   .Lx470_83
                        mov              r9, rax
                                                                                        jmp   .Lx470_81
.Lx470_83:
                        cmp              esi, 2
                                                                                        jne   .Lx470_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_82
                        mov              r9, rax
                                                                                        jmp   .Lx470_81
.Lx470_84:
                        cmp              eax, 72
                                                                                        jne   .Lx470_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx470_82
                        cmp              rax, r9
                                                                                        je    .Lx470_82
                        mov              r9, rax
                                                                                        jmp   .Lx470_81
.Lx470_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_85
                        cmp              eax, 104
                                                                                        je    .Lx470_85
                        cmp              eax, 72
                                                                                        jne   .Lx470_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx470_85
                                                                                        jmp   .Lx470_86
.Lx470_85:
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
                                                                                        jmp   .Lx470_87
.Lx470_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx470_87:
                        lea              rcx, [rbp + 432]
.Lx470_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx470_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_89
                        cmp              esi, 1
                                                                                        jne   .Lx470_90
                        mov              rcx, rax
                                                                                        jmp   .Lx470_88
.Lx470_90:
                        cmp              esi, 2
                                                                                        jne   .Lx470_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx470_89
                        mov              rcx, rax
                                                                                        jmp   .Lx470_88
.Lx470_91:
                        cmp              eax, 72
                                                                                        jne   .Lx470_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx470_89
                        cmp              rax, rcx
                                                                                        je    .Lx470_89
                        mov              rcx, rax
                                                                                        jmp   .Lx470_88
.Lx470_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx470_92
                        cmp              eax, 104
                                                                                        je    .Lx470_92
                        cmp              eax, 72
                                                                                        jne   .Lx470_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx470_92
                                                                                        jmp   .Lx470_93
.Lx470_92:
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
                                                                                        jmp   .Lx470_94
.Lx470_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx470_94:
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
                                                                                        jmp   .Lx470_77
.Lx470_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx470_77
.Lx470_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx470_77:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n433_var_ref_α
n432_call_builtin_prolog_β:
                                                                                        jmp   n441_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 928]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n434_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 944]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n435_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n435_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n436_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n436_call_proc_staged_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx478_21
.Lx478_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx478_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx478_23
.Lx478_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
.Lx478_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx478_24
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx478_25
.Lx478_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx478_25:
                        lea              rax, [rip + .Lx478_7]
                        push             rax
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx478_1
                        lea              rcx, [rip + .Lx478_3]
                        lea              rdx, [rip + .Lx478_4]
                                                                                        jmp   rax
.Lx478_3:
                        mov              qword ptr [rbp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx478_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx478_2
.Lx478_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx478_2
.Lx478_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx478_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx478_2
.Lx478_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx478_2
.Lx478_1:
                        call             rt_faildescr@PLT
.Lx478_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n437_var_ref_α
n436_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 288], 0
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 312]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n441_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              ecx, 64
                        mov              r8d, 896
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 0                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n441_call_builtin_prolog_α
                        lea              r11, [rip + .Lx478_7]
                        push             r11
                        lea              rcx, [rip + .Lx478_3]
                        lea              rdx, [rip + .Lx478_4]
                                                                                        jmp   rax
.Lx478_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n441_call_builtin_prolog_α
                                                                                        jmp   n437_var_ref_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n438_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n439_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n439_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx484_21
.Lx484_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx484_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx484_23
.Lx484_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx484_23:
                        lea              rax, [rip + .Lx484_7]
                        push             rax
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx484_1
                        lea              rcx, [rip + .Lx484_3]
                        lea              rdx, [rip + .Lx484_4]
                                                                                        jmp   rax
.Lx484_3:
                        mov              qword ptr [rbp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx484_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx484_2
.Lx484_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx484_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx484_2
.Lx484_1:
                        call             rt_faildescr@PLT
.Lx484_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_proc_staged_β
                                                                                        jmp   n440_suspend_α
n439_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 160], 0
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 184]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n436_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              ecx, 48
                        mov              r8d, 880
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n436_call_proc_staged_β
                        lea              r11, [rip + .Lx484_7]
                        push             r11
                        lea              rcx, [rip + .Lx484_3]
                        lea              rdx, [rip + .Lx484_4]
                                                                                        jmp   rax
.Lx484_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n436_call_proc_staged_β
                                                                                        jmp   n440_suspend_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "perm/2"
#-----------------------------------------------------------------------------------------------------------------------
n440_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx486_61
                        mov              qword ptr [rbp + 880], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 880]
.Lx486_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n440_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n440_suspend_β]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_perm$2F2_γ
n440_suspend_β:
                                                                                        jmp   n439_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
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
                                                                                        je    proc_perm$2F2_ω
                                                                                        jmp   proc_perm$2F2_ω
n441_call_builtin_prolog_β:
                                                                                        jmp   proc_perm$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_perm$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_perm$2F2_β:
                                                                                        jmp   qword ptr [rbp + 880]
#-----------------------------------------------------------------------------------------------------------------------
proc_perm$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx487_50
                        mov              qword ptr [rbp + 880], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx487_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 984]
                        mov              rbp, qword ptr [rbp + 1000]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_perm$2F2_ω:
                        lea              rsp, [rbp + 1008]
                        mov              rcx, qword ptr [rbp + 992]
                        mov              rbp, qword ptr [rbp + 1000]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pair$2F3_α
proc_pair$2F3_α:
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 1352], rcx
                        mov              qword ptr [rsp + 1360], rdx
                        mov              qword ptr [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 1232
                        mov              edx, 1344
                        call             rt_jmp_frame_lexprep2@PLT
proc_pair$2F3_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
#-----------------------------------------------------------------------------------------------------------------------
n488_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx529_102
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
                                                                                        jmp   .Lx529_101
.Lx529_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx529_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx529_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx529_101
.Lx529_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx529_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    proc_pair$2F3_ω
                                                                                        jmp   n489_var_ref_α
n488_call_builtin_prolog_β:
                                                                                        jmp   proc_pair$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n489_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n490_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n490_lit_integer_α:
                        mov              qword ptr [rbp + 1200], 3                      # result
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n491_lit_string_α
.Lx532_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n491_lit_string_α:
                        mov              qword ptr [rbp + 1216], 2                      # result
                        mov              dword ptr [rbp + 1220], 2
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 1224], rax
                                                                                        jmp   n492_call_builtin_prolog_α
.Lx533_0:
                        .quad            .Lx533_0_s
.Lx533_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n492_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        lea              r8, [rbp + 1136]
.Lx534_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx534_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx534_111
                        cmp              esi, 1
                                                                                        jne   .Lx534_112
                        mov              r8, rax
                                                                                        jmp   .Lx534_110
.Lx534_112:
                        cmp              esi, 2
                                                                                        jne   .Lx534_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx534_111
                        mov              r8, rax
                                                                                        jmp   .Lx534_110
.Lx534_113:
                        cmp              eax, 72
                                                                                        jne   .Lx534_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx534_111
                        cmp              rax, r8
                                                                                        je    .Lx534_111
                        mov              r8, rax
                                                                                        jmp   .Lx534_110
.Lx534_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx534_114
                        cmp              eax, 104
                                                                                        je    .Lx534_114
                        cmp              eax, 72
                                                                                        jne   .Lx534_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx534_114
                                                                                        jmp   .Lx534_118
.Lx534_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx534_115
                        cmp              eax, 3
                                                                                        je    .Lx534_114
                        cmp              eax, 2
                                                                                        jne   .Lx534_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx534_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx534_114
                                                                                        jmp   .Lx534_116
.Lx534_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx534_117
.Lx534_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx534_117
.Lx534_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx534_117:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              eax, 104
                                                                                        je    n504_var_ref_α
                                                                                        jmp   n493_var_ref_α
n492_call_builtin_prolog_β:
                                                                                        jmp   n504_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n493_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                                                                                        jmp   n494_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n494_lit_string_α:
                        mov              qword ptr [rbp + 1104], 2                      # result
                        mov              dword ptr [rbp + 1108], 2
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n495_call_builtin_prolog_α
.Lx537_0:
                        .quad            .Lx537_0_s
.Lx537_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n495_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              rsi, qword ptr [rip + .Lx538_2]
                                                                                        jmp   .Lx538_3
.Lx538_2:
                        .quad            .Lx538_2_s
.Lx538_2_s:
                        .string          "[]"
.Lx538_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              eax, 104
                                                                                        je    n503_call_builtin_prolog_α
                                                                                        jmp   n496_var_ref_α
n495_call_builtin_prolog_β:
                                                                                        jmp   n503_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                                                                                        jmp   n497_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n497_lit_string_α:
                        mov              qword ptr [rbp + 1024], 2                      # result
                        mov              dword ptr [rbp + 1028], 2
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 1032], rax
                                                                                        jmp   n498_call_builtin_prolog_α
.Lx541_0:
                        .quad            .Lx541_0_s
.Lx541_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n498_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              rsi, qword ptr [rip + .Lx542_2]
                                                                                        jmp   .Lx542_3
.Lx542_2:
                        .quad            .Lx542_2_s
.Lx542_2_s:
                        .string          "[]"
.Lx542_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 104
                                                                                        je    n503_call_builtin_prolog_α
                                                                                        jmp   n499_var_ref_α
n498_call_builtin_prolog_β:
                                                                                        jmp   n503_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n499_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                                                                                        jmp   n500_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n500_lit_string_α:
                        mov              qword ptr [rbp + 944], 2                       # result
                        mov              dword ptr [rbp + 948], 2
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n501_call_builtin_prolog_α
.Lx545_0:
                        .quad            .Lx545_0_s
.Lx545_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n501_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              rsi, qword ptr [rip + .Lx546_2]
                                                                                        jmp   .Lx546_3
.Lx546_2:
                        .quad            .Lx546_2_s
.Lx546_2_s:
                        .string          "[]"
.Lx546_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 104
                                                                                        je    n503_call_builtin_prolog_α
                                                                                        jmp   n502_suspend_α
n501_call_builtin_prolog_β:
                                                                                        jmp   n503_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx548_61
                        mov              qword ptr [rbp + 1232], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 1232]
.Lx548_61:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n502_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pair$2F3_γ
n502_suspend_β:
                                                                                        jmp   n503_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n503_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 104
                                                                                        je    proc_pair$2F3_ω
                                                                                        jmp   n504_var_ref_α
n503_call_builtin_prolog_β:
                                                                                        jmp   proc_pair$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                                                                                        jmp   n505_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n505_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n506_lit_integer_α
.Lx552_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n506_lit_integer_α:
                        mov              qword ptr [rbp + 816], 3                       # result
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 824], rax
                                                                                        jmp   n507_call_builtin_prolog_α
.Lx553_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n507_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx554_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx554_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx554_111
                        cmp              esi, 1
                                                                                        jne   .Lx554_112
                        mov              r8, rax
                                                                                        jmp   .Lx554_110
.Lx554_112:
                        cmp              esi, 2
                                                                                        jne   .Lx554_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx554_111
                        mov              r8, rax
                                                                                        jmp   .Lx554_110
.Lx554_113:
                        cmp              eax, 72
                                                                                        jne   .Lx554_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx554_111
                        cmp              rax, r8
                                                                                        je    .Lx554_111
                        mov              r8, rax
                                                                                        jmp   .Lx554_110
.Lx554_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx554_114
                        cmp              eax, 104
                                                                                        je    .Lx554_114
                        cmp              eax, 72
                                                                                        jne   .Lx554_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx554_114
                                                                                        jmp   .Lx554_118
.Lx554_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        jne   .Lx554_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx554_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx554_115
                                                                                        jmp   .Lx554_114
.Lx554_119:
                        cmp              eax, 3
                                                                                        jne   .Lx554_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx554_114
                                                                                        jmp   .Lx554_115
.Lx554_120:
                        cmp              eax, 2
                                                                                        jne   .Lx554_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx554_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx554_114
                                                                                        jmp   .Lx554_115
.Lx554_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx554_117
.Lx554_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx554_117
.Lx554_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx554_117:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n508_var_ref_α
n507_call_builtin_prolog_β:
                                                                                        jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n509_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n509_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n510_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n511_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n511_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lx561_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx561_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx561_61
                        cmp              esi, 1
                                                                                        jne   .Lx561_62
                        mov              r8, rax
                                                                                        jmp   .Lx561_60
.Lx561_62:
                        cmp              esi, 2
                                                                                        jne   .Lx561_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx561_61
                        mov              r8, rax
                                                                                        jmp   .Lx561_60
.Lx561_63:
                        cmp              eax, 72
                                                                                        jne   .Lx561_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx561_61
                        cmp              rax, r8
                                                                                        je    .Lx561_61
                        mov              r8, rax
                                                                                        jmp   .Lx561_60
.Lx561_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx561_80
                        cmp              eax, 104
                                                                                        je    .Lx561_80
                        cmp              eax, 72
                                                                                        jne   .Lx561_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx561_80
                                                                                        jmp   .Lx561_74
.Lx561_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx561_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx561_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx561_73
                        lea              r9, [rbp + 656]
.Lx561_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx561_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx561_65
                        cmp              esi, 1
                                                                                        jne   .Lx561_66
                        mov              r9, rax
                                                                                        jmp   .Lx561_64
.Lx561_66:
                        cmp              esi, 2
                                                                                        jne   .Lx561_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx561_65
                        mov              r9, rax
                                                                                        jmp   .Lx561_64
.Lx561_67:
                        cmp              eax, 72
                                                                                        jne   .Lx561_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx561_65
                        cmp              rax, r9
                                                                                        je    .Lx561_65
                        mov              r9, rax
                                                                                        jmp   .Lx561_64
.Lx561_65:
                        lea              rcx, [rbp + 672]
.Lx561_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx561_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx561_69
                        cmp              esi, 1
                                                                                        jne   .Lx561_70
                        mov              rcx, rax
                                                                                        jmp   .Lx561_68
.Lx561_70:
                        cmp              esi, 2
                                                                                        jne   .Lx561_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx561_69
                        mov              rcx, rax
                                                                                        jmp   .Lx561_68
.Lx561_71:
                        cmp              eax, 72
                                                                                        jne   .Lx561_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx561_69
                        cmp              rax, rcx
                                                                                        je    .Lx561_69
                        mov              rcx, rax
                                                                                        jmp   .Lx561_68
.Lx561_69:
                        cmp              r9, rcx
                                                                                        je    .Lx561_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx561_75
                        cmp              eax, 104
                                                                                        je    .Lx561_75
                        cmp              eax, 72
                                                                                        jne   .Lx561_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx561_75
                                                                                        jmp   .Lx561_72
.Lx561_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx561_76
                        cmp              eax, 104
                                                                                        je    .Lx561_76
                        cmp              eax, 72
                                                                                        jne   .Lx561_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx561_76
                                                                                        jmp   .Lx561_72
.Lx561_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx561_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx561_72
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
                                                                                        jmp   .Lx561_77
.Lx561_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx561_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx561_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx561_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx561_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx561_72
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
                        lea              r9, [rbp + 656]
.Lx561_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx561_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx561_82
                        cmp              esi, 1
                                                                                        jne   .Lx561_83
                        mov              r9, rax
                                                                                        jmp   .Lx561_81
.Lx561_83:
                        cmp              esi, 2
                                                                                        jne   .Lx561_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx561_82
                        mov              r9, rax
                                                                                        jmp   .Lx561_81
.Lx561_84:
                        cmp              eax, 72
                                                                                        jne   .Lx561_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx561_82
                        cmp              rax, r9
                                                                                        je    .Lx561_82
                        mov              r9, rax
                                                                                        jmp   .Lx561_81
.Lx561_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx561_85
                        cmp              eax, 104
                                                                                        je    .Lx561_85
                        cmp              eax, 72
                                                                                        jne   .Lx561_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx561_85
                                                                                        jmp   .Lx561_86
.Lx561_85:
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
                                                                                        jmp   .Lx561_87
.Lx561_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx561_87:
                        lea              rcx, [rbp + 672]
.Lx561_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx561_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx561_89
                        cmp              esi, 1
                                                                                        jne   .Lx561_90
                        mov              rcx, rax
                                                                                        jmp   .Lx561_88
.Lx561_90:
                        cmp              esi, 2
                                                                                        jne   .Lx561_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx561_89
                        mov              rcx, rax
                                                                                        jmp   .Lx561_88
.Lx561_91:
                        cmp              eax, 72
                                                                                        jne   .Lx561_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx561_89
                        cmp              rax, rcx
                                                                                        je    .Lx561_89
                        mov              rcx, rax
                                                                                        jmp   .Lx561_88
.Lx561_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx561_92
                        cmp              eax, 104
                                                                                        je    .Lx561_92
                        cmp              eax, 72
                                                                                        jne   .Lx561_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx561_92
                                                                                        jmp   .Lx561_93
.Lx561_92:
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
                                                                                        jmp   .Lx561_94
.Lx561_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx561_94:
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
                                                                                        jmp   .Lx561_77
.Lx561_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx561_77
.Lx561_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx561_77:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n512_var_ref_α
n511_call_builtin_prolog_β:
                                                                                        jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n512_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n513_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n514_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                                                                                        jmp   n515_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n515_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx568_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx568_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_61
                        cmp              esi, 1
                                                                                        jne   .Lx568_62
                        mov              r8, rax
                                                                                        jmp   .Lx568_60
.Lx568_62:
                        cmp              esi, 2
                                                                                        jne   .Lx568_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_61
                        mov              r8, rax
                                                                                        jmp   .Lx568_60
.Lx568_63:
                        cmp              eax, 72
                                                                                        jne   .Lx568_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_61
                        cmp              rax, r8
                                                                                        je    .Lx568_61
                        mov              r8, rax
                                                                                        jmp   .Lx568_60
.Lx568_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_80
                        cmp              eax, 104
                                                                                        je    .Lx568_80
                        cmp              eax, 72
                                                                                        jne   .Lx568_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx568_80
                                                                                        jmp   .Lx568_74
.Lx568_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx568_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx568_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx568_73
                        lea              r9, [rbp + 544]
.Lx568_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx568_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_65
                        cmp              esi, 1
                                                                                        jne   .Lx568_66
                        mov              r9, rax
                                                                                        jmp   .Lx568_64
.Lx568_66:
                        cmp              esi, 2
                                                                                        jne   .Lx568_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_65
                        mov              r9, rax
                                                                                        jmp   .Lx568_64
.Lx568_67:
                        cmp              eax, 72
                                                                                        jne   .Lx568_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_65
                        cmp              rax, r9
                                                                                        je    .Lx568_65
                        mov              r9, rax
                                                                                        jmp   .Lx568_64
.Lx568_65:
                        lea              rcx, [rbp + 560]
.Lx568_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx568_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx568_69
                        cmp              esi, 1
                                                                                        jne   .Lx568_70
                        mov              rcx, rax
                                                                                        jmp   .Lx568_68
.Lx568_70:
                        cmp              esi, 2
                                                                                        jne   .Lx568_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_69
                        mov              rcx, rax
                                                                                        jmp   .Lx568_68
.Lx568_71:
                        cmp              eax, 72
                                                                                        jne   .Lx568_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx568_69
                        cmp              rax, rcx
                                                                                        je    .Lx568_69
                        mov              rcx, rax
                                                                                        jmp   .Lx568_68
.Lx568_69:
                        cmp              r9, rcx
                                                                                        je    .Lx568_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_75
                        cmp              eax, 104
                                                                                        je    .Lx568_75
                        cmp              eax, 72
                                                                                        jne   .Lx568_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_75
                                                                                        jmp   .Lx568_72
.Lx568_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_76
                        cmp              eax, 104
                                                                                        je    .Lx568_76
                        cmp              eax, 72
                                                                                        jne   .Lx568_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx568_76
                                                                                        jmp   .Lx568_72
.Lx568_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx568_72
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
                                                                                        jmp   .Lx568_77
.Lx568_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx568_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx568_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx568_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx568_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx568_72
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
                        lea              r9, [rbp + 544]
.Lx568_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx568_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_82
                        cmp              esi, 1
                                                                                        jne   .Lx568_83
                        mov              r9, rax
                                                                                        jmp   .Lx568_81
.Lx568_83:
                        cmp              esi, 2
                                                                                        jne   .Lx568_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_82
                        mov              r9, rax
                                                                                        jmp   .Lx568_81
.Lx568_84:
                        cmp              eax, 72
                                                                                        jne   .Lx568_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx568_82
                        cmp              rax, r9
                                                                                        je    .Lx568_82
                        mov              r9, rax
                                                                                        jmp   .Lx568_81
.Lx568_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_85
                        cmp              eax, 104
                                                                                        je    .Lx568_85
                        cmp              eax, 72
                                                                                        jne   .Lx568_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx568_85
                                                                                        jmp   .Lx568_86
.Lx568_85:
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
                                                                                        jmp   .Lx568_87
.Lx568_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx568_87:
                        lea              rcx, [rbp + 560]
.Lx568_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx568_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx568_89
                        cmp              esi, 1
                                                                                        jne   .Lx568_90
                        mov              rcx, rax
                                                                                        jmp   .Lx568_88
.Lx568_90:
                        cmp              esi, 2
                                                                                        jne   .Lx568_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx568_89
                        mov              rcx, rax
                                                                                        jmp   .Lx568_88
.Lx568_91:
                        cmp              eax, 72
                                                                                        jne   .Lx568_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx568_89
                        cmp              rax, rcx
                                                                                        je    .Lx568_89
                        mov              rcx, rax
                                                                                        jmp   .Lx568_88
.Lx568_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx568_92
                        cmp              eax, 104
                                                                                        je    .Lx568_92
                        cmp              eax, 72
                                                                                        jne   .Lx568_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx568_92
                                                                                        jmp   .Lx568_93
.Lx568_92:
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
                                                                                        jmp   .Lx568_94
.Lx568_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx568_94:
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
                                                                                        jmp   .Lx568_77
.Lx568_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx568_77
.Lx568_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx568_77:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n516_var_ref_α
n515_call_builtin_prolog_β:
                                                                                        jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n516_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n517_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:
                        mov              qword ptr [rbp + 464], 2                       # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n518_var_ref_α
.Lx571_0:
                        .quad            .Lx571_0_s
.Lx571_0_s:
                        .string          "p"
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n519_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n520_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n520_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n521_var_ref_α
n520_call_builtin_prolog_β:
                                                                                        jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n522_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n522_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx579_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx579_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx579_61
                        cmp              esi, 1
                                                                                        jne   .Lx579_62
                        mov              r8, rax
                                                                                        jmp   .Lx579_60
.Lx579_62:
                        cmp              esi, 2
                                                                                        jne   .Lx579_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx579_61
                        mov              r8, rax
                                                                                        jmp   .Lx579_60
.Lx579_63:
                        cmp              eax, 72
                                                                                        jne   .Lx579_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx579_61
                        cmp              rax, r8
                                                                                        je    .Lx579_61
                        mov              r8, rax
                                                                                        jmp   .Lx579_60
.Lx579_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx579_80
                        cmp              eax, 104
                                                                                        je    .Lx579_80
                        cmp              eax, 72
                                                                                        jne   .Lx579_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx579_80
                                                                                        jmp   .Lx579_74
.Lx579_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx579_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx579_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx579_73
                        lea              r9, [rbp + 320]
.Lx579_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx579_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx579_65
                        cmp              esi, 1
                                                                                        jne   .Lx579_66
                        mov              r9, rax
                                                                                        jmp   .Lx579_64
.Lx579_66:
                        cmp              esi, 2
                                                                                        jne   .Lx579_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx579_65
                        mov              r9, rax
                                                                                        jmp   .Lx579_64
.Lx579_67:
                        cmp              eax, 72
                                                                                        jne   .Lx579_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx579_65
                        cmp              rax, r9
                                                                                        je    .Lx579_65
                        mov              r9, rax
                                                                                        jmp   .Lx579_64
.Lx579_65:
                        lea              rcx, [rbp + 336]
.Lx579_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx579_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx579_69
                        cmp              esi, 1
                                                                                        jne   .Lx579_70
                        mov              rcx, rax
                                                                                        jmp   .Lx579_68
.Lx579_70:
                        cmp              esi, 2
                                                                                        jne   .Lx579_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx579_69
                        mov              rcx, rax
                                                                                        jmp   .Lx579_68
.Lx579_71:
                        cmp              eax, 72
                                                                                        jne   .Lx579_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx579_69
                        cmp              rax, rcx
                                                                                        je    .Lx579_69
                        mov              rcx, rax
                                                                                        jmp   .Lx579_68
.Lx579_69:
                        cmp              r9, rcx
                                                                                        je    .Lx579_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx579_75
                        cmp              eax, 104
                                                                                        je    .Lx579_75
                        cmp              eax, 72
                                                                                        jne   .Lx579_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx579_75
                                                                                        jmp   .Lx579_72
.Lx579_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx579_76
                        cmp              eax, 104
                                                                                        je    .Lx579_76
                        cmp              eax, 72
                                                                                        jne   .Lx579_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx579_76
                                                                                        jmp   .Lx579_72
.Lx579_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx579_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx579_72
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
                                                                                        jmp   .Lx579_77
.Lx579_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx579_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx579_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx579_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx579_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx579_72
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
.Lx579_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx579_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx579_82
                        cmp              esi, 1
                                                                                        jne   .Lx579_83
                        mov              r9, rax
                                                                                        jmp   .Lx579_81
.Lx579_83:
                        cmp              esi, 2
                                                                                        jne   .Lx579_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx579_82
                        mov              r9, rax
                                                                                        jmp   .Lx579_81
.Lx579_84:
                        cmp              eax, 72
                                                                                        jne   .Lx579_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx579_82
                        cmp              rax, r9
                                                                                        je    .Lx579_82
                        mov              r9, rax
                                                                                        jmp   .Lx579_81
.Lx579_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx579_85
                        cmp              eax, 104
                                                                                        je    .Lx579_85
                        cmp              eax, 72
                                                                                        jne   .Lx579_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx579_85
                                                                                        jmp   .Lx579_86
.Lx579_85:
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
                                                                                        jmp   .Lx579_87
.Lx579_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx579_87:
                        lea              rcx, [rbp + 336]
.Lx579_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx579_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx579_89
                        cmp              esi, 1
                                                                                        jne   .Lx579_90
                        mov              rcx, rax
                                                                                        jmp   .Lx579_88
.Lx579_90:
                        cmp              esi, 2
                                                                                        jne   .Lx579_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx579_89
                        mov              rcx, rax
                                                                                        jmp   .Lx579_88
.Lx579_91:
                        cmp              eax, 72
                                                                                        jne   .Lx579_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx579_89
                        cmp              rax, rcx
                                                                                        je    .Lx579_89
                        mov              rcx, rax
                                                                                        jmp   .Lx579_88
.Lx579_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx579_92
                        cmp              eax, 104
                                                                                        je    .Lx579_92
                        cmp              eax, 72
                                                                                        jne   .Lx579_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx579_92
                                                                                        jmp   .Lx579_93
.Lx579_92:
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
                                                                                        jmp   .Lx579_94
.Lx579_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx579_94:
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
                                                                                        jmp   .Lx579_77
.Lx579_73:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx579_77
.Lx579_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx579_77:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n523_var_ref_α
n522_call_builtin_prolog_β:
                                                                                        jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n524_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n524_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n525_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n526_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx587_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx587_21
.Lx587_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 224]                     # v
                        mov              rdx, qword ptr [rbp + 232]                     # v
                        call             rt_arg_stage@PLT
.Lx587_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx587_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx587_23
.Lx587_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 240]                     # v
                        mov              rdx, qword ptr [rbp + 248]                     # v
                        call             rt_arg_stage@PLT
.Lx587_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx587_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx587_25
.Lx587_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx587_25:
                        lea              rax, [rip + .Lx587_7]
                        push             rax
                        mov              edi, 6                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx587_1
                        lea              rcx, [rip + .Lx587_3]
                        lea              rdx, [rip + .Lx587_4]
                                                                                        jmp   rax
.Lx587_3:
                        mov              qword ptr [rbp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx587_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx587_2
.Lx587_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx587_2
.Lx587_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx587_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx587_2
.Lx587_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx587_2
.Lx587_1:
                        call             rt_faildescr@PLT
.Lx587_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n527_suspend_α
n526_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 192], 0
                        lea              rdi, [rbp + 208]
                        lea              rsi, [rbp + 216]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n528_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              ecx, 64
                        mov              r8d, 1232
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
                        mov              edi, 6                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n528_call_builtin_prolog_α
                        lea              r11, [rip + .Lx587_7]
                        push             r11
                        lea              rcx, [rip + .Lx587_3]
                        lea              rdx, [rip + .Lx587_4]
                                                                                        jmp   rax
.Lx587_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 104
                                                                                        je    n528_call_builtin_prolog_α
                                                                                        jmp   n527_suspend_α
.Lx587_0:
                        .quad            .Lx587_0_s
.Lx587_0_s:
                        .string          "pair/3"
#-----------------------------------------------------------------------------------------------------------------------
n527_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx589_61
                        mov              qword ptr [rbp + 1232], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 1232]
.Lx589_61:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
                        lea              rdx, [rip + n527_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n527_suspend_β]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pair$2F3_γ
n527_suspend_β:
                                                                                        jmp   n526_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
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
                                                                                        je    proc_pair$2F3_ω
                                                                                        jmp   proc_pair$2F3_ω
n528_call_builtin_prolog_β:
                                                                                        jmp   proc_pair$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_pair$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pair$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1232]
#-----------------------------------------------------------------------------------------------------------------------
proc_pair$2F3_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx590_50
                        mov              qword ptr [rbp + 1232], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx590_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              rbp, qword ptr [rbp + 1368]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_pair$2F3_ω:
                        lea              rsp, [rbp + 1376]
                        mov              rcx, qword ptr [rbp + 1360]
                        mov              rbp, qword ptr [rbp + 1368]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_q$2F2_α
proc_q$2F2_α:
                        sub              rsp, 752
                        mov              qword ptr [rsp + 728], rcx
                        mov              qword ptr [rsp + 736], rdx
                        mov              qword ptr [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rbp
                        mov              esi, 640
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_q$2F2_α_body:
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 640], rax
#-----------------------------------------------------------------------------------------------------------------------
n591_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx610_102
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
                                                                                        jmp   .Lx610_101
.Lx610_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx610_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx610_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx610_101
.Lx610_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx610_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 104
                                                                                        je    proc_q$2F2_ω
                                                                                        jmp   n592_var_ref_α
n591_call_builtin_prolog_β:
                                                                                        jmp   proc_q$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n592_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                                                                                        jmp   n593_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n594_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n594_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx615_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx615_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx615_41
                        cmp              esi, 1
                                                                                        jne   .Lx615_55
                        mov              r8, rax
                                                                                        jmp   .Lx615_40
.Lx615_55:
                        cmp              esi, 2
                                                                                        jne   .Lx615_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx615_41
                        mov              r8, rax
                                                                                        jmp   .Lx615_40
.Lx615_56:
                        cmp              eax, 72
                                                                                        jne   .Lx615_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx615_41
                        cmp              rax, r8
                                                                                        je    .Lx615_41
                        mov              r8, rax
                                                                                        jmp   .Lx615_40
.Lx615_41:
                        lea              r9, [rbp + 592]
.Lx615_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx615_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx615_43
                        cmp              esi, 1
                                                                                        jne   .Lx615_57
                        mov              r9, rax
                                                                                        jmp   .Lx615_42
.Lx615_57:
                        cmp              esi, 2
                                                                                        jne   .Lx615_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx615_43
                        mov              r9, rax
                                                                                        jmp   .Lx615_42
.Lx615_58:
                        cmp              eax, 72
                                                                                        jne   .Lx615_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx615_43
                        cmp              rax, r9
                                                                                        je    .Lx615_43
                        mov              r9, rax
                                                                                        jmp   .Lx615_42
.Lx615_43:
                        cmp              r8, r9
                                                                                        je    .Lx615_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx615_44
                        cmp              eax, 104
                                                                                        je    .Lx615_44
                        cmp              eax, 72
                                                                                        jne   .Lx615_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx615_44
                                                                                        jmp   .Lx615_45
.Lx615_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx615_53
                        cmp              eax, 104
                                                                                        je    .Lx615_53
                        cmp              eax, 72
                                                                                        jne   .Lx615_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx615_53
                                                                                        jmp   .Lx615_46
.Lx615_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx615_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx615_53
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
                                                                                        jmp   .Lx615_51
.Lx615_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx615_47
                        cmp              eax, 104
                                                                                        je    .Lx615_47
                        cmp              eax, 72
                                                                                        jne   .Lx615_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx615_47
                                                                                        jmp   .Lx615_48
.Lx615_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx615_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx615_53
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
                                                                                        jmp   .Lx615_51
.Lx615_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx615_49
                        cmp              edx, 80
                                                                                        je    .Lx615_53
                                                                                        jmp   .Lx615_52
.Lx615_49:
                        cmp              edx, 80
                                                                                        je    .Lx615_52
                        cmp              ecx, 5
                                                                                        je    .Lx615_53
                        cmp              edx, 5
                                                                                        je    .Lx615_53
                        cmp              ecx, 3
                                                                                        jne   .Lx615_50
                        cmp              edx, 3
                                                                                        jne   .Lx615_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx615_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx615_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx615_51
                                                                                        jmp   .Lx615_52
.Lx615_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx615_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx615_53
.Lx615_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx615_54
.Lx615_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx615_54
.Lx615_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx615_54:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n609_call_builtin_prolog_α
                                                                                        jmp   n595_var_ref_α
n594_call_builtin_prolog_β:
                                                                                        jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n595_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n596_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n597_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n597_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx620_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx620_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx620_41
                        cmp              esi, 1
                                                                                        jne   .Lx620_55
                        mov              r8, rax
                                                                                        jmp   .Lx620_40
.Lx620_55:
                        cmp              esi, 2
                                                                                        jne   .Lx620_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx620_41
                        mov              r8, rax
                                                                                        jmp   .Lx620_40
.Lx620_56:
                        cmp              eax, 72
                                                                                        jne   .Lx620_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx620_41
                        cmp              rax, r8
                                                                                        je    .Lx620_41
                        mov              r8, rax
                                                                                        jmp   .Lx620_40
.Lx620_41:
                        lea              r9, [rbp + 512]
.Lx620_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx620_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx620_43
                        cmp              esi, 1
                                                                                        jne   .Lx620_57
                        mov              r9, rax
                                                                                        jmp   .Lx620_42
.Lx620_57:
                        cmp              esi, 2
                                                                                        jne   .Lx620_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx620_43
                        mov              r9, rax
                                                                                        jmp   .Lx620_42
.Lx620_58:
                        cmp              eax, 72
                                                                                        jne   .Lx620_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx620_43
                        cmp              rax, r9
                                                                                        je    .Lx620_43
                        mov              r9, rax
                                                                                        jmp   .Lx620_42
.Lx620_43:
                        cmp              r8, r9
                                                                                        je    .Lx620_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx620_44
                        cmp              eax, 104
                                                                                        je    .Lx620_44
                        cmp              eax, 72
                                                                                        jne   .Lx620_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx620_44
                                                                                        jmp   .Lx620_45
.Lx620_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx620_53
                        cmp              eax, 104
                                                                                        je    .Lx620_53
                        cmp              eax, 72
                                                                                        jne   .Lx620_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx620_53
                                                                                        jmp   .Lx620_46
.Lx620_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx620_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx620_53
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
                                                                                        jmp   .Lx620_51
.Lx620_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx620_47
                        cmp              eax, 104
                                                                                        je    .Lx620_47
                        cmp              eax, 72
                                                                                        jne   .Lx620_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx620_47
                                                                                        jmp   .Lx620_48
.Lx620_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx620_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx620_53
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
                                                                                        jmp   .Lx620_51
.Lx620_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx620_49
                        cmp              edx, 80
                                                                                        je    .Lx620_53
                                                                                        jmp   .Lx620_52
.Lx620_49:
                        cmp              edx, 80
                                                                                        je    .Lx620_52
                        cmp              ecx, 5
                                                                                        je    .Lx620_53
                        cmp              edx, 5
                                                                                        je    .Lx620_53
                        cmp              ecx, 3
                                                                                        jne   .Lx620_50
                        cmp              edx, 3
                                                                                        jne   .Lx620_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx620_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx620_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx620_51
                                                                                        jmp   .Lx620_52
.Lx620_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx620_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx620_53
.Lx620_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx620_54
.Lx620_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx620_54
.Lx620_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx620_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 104
                                                                                        je    n609_call_builtin_prolog_α
                                                                                        jmp   n598_var_ref_α
n597_call_builtin_prolog_β:
                                                                                        jmp   n609_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n598_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n599_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n599_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n600_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n600_call_proc_staged_α:
                        mov              qword ptr [rbp + 416], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_20
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx626_21
.Lx626_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
.Lx626_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx626_22
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx626_23
.Lx626_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
.Lx626_23:
                        lea              rax, [rip + .Lx626_7]
                        push             rax
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx626_1
                        lea              rcx, [rip + .Lx626_3]
                        lea              rdx, [rip + .Lx626_4]
                                                                                        jmp   rax
.Lx626_3:
                        mov              qword ptr [rbp + 424], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx626_5
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx626_2
.Lx626_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx626_2
.Lx626_4:
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax
                                                                                        jne   .Lx626_6
                        mov              qword ptr [rbp + 416], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx626_2
.Lx626_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx626_2
.Lx626_1:
                        call             rt_faildescr@PLT
.Lx626_2:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n609_call_builtin_prolog_α
                                                                                        jmp   n601_var_ref_α
n600_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 416], 0
                        lea              rdi, [rbp + 432]
                        lea              rsi, [rbp + 440]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n609_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              ecx, 48
                        mov              r8d, 880
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 448]                     # v
                        mov              rdx, qword ptr [rbp + 456]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 464]                     # v
                        mov              rdx, qword ptr [rbp + 472]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 5                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n609_call_builtin_prolog_α
                        lea              r11, [rip + .Lx626_7]
                        push             r11
                        lea              rcx, [rip + .Lx626_3]
                        lea              rdx, [rip + .Lx626_4]
                                                                                        jmp   rax
.Lx626_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 104
                                                                                        je    n609_call_builtin_prolog_α
                                                                                        jmp   n601_var_ref_α
.Lx626_0:
                        .quad            .Lx626_0_s
.Lx626_0_s:
                        .string          "perm/2"
#-----------------------------------------------------------------------------------------------------------------------
n601_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n602_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n602_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n603_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n603_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n604_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n604_call_proc_staged_α:
                        mov              qword ptr [rbp + 288], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx634_20
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx634_21
.Lx634_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
.Lx634_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx634_22
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx634_23
.Lx634_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
.Lx634_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx634_24
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx634_25
.Lx634_24:
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
.Lx634_25:
                        lea              rax, [rip + .Lx634_7]
                        push             rax
                        mov              edi, 6                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx634_1
                        lea              rcx, [rip + .Lx634_3]
                        lea              rdx, [rip + .Lx634_4]
                                                                                        jmp   rax
.Lx634_3:
                        mov              qword ptr [rbp + 296], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx634_5
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx634_2
.Lx634_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx634_2
.Lx634_4:
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax
                                                                                        jne   .Lx634_6
                        mov              qword ptr [rbp + 288], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx634_2
.Lx634_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx634_2
.Lx634_1:
                        call             rt_faildescr@PLT
.Lx634_2:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n600_call_proc_staged_β
                                                                                        jmp   n605_lit_string_α
n604_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 288], 0
                        lea              rdi, [rbp + 304]
                        lea              rsi, [rbp + 312]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n600_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              ecx, 64
                        mov              r8d, 1232
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 320]                     # v
                        mov              rdx, qword ptr [rbp + 328]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 336]                     # v
                        mov              rdx, qword ptr [rbp + 344]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 2                                         # idx
                        mov              rsi, qword ptr [rbp + 352]                     # v
                        mov              rdx, qword ptr [rbp + 360]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 6                                         # idx
                        mov              esi, 3                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n600_call_proc_staged_β
                        lea              r11, [rip + .Lx634_7]
                        push             r11
                        lea              rcx, [rip + .Lx634_3]
                        lea              rdx, [rip + .Lx634_4]
                                                                                        jmp   rax
.Lx634_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 104
                                                                                        je    n600_call_proc_staged_β
                                                                                        jmp   n605_lit_string_α
.Lx634_0:
                        .quad            .Lx634_0_s
.Lx634_0_s:
                        .string          "pair/3"
#-----------------------------------------------------------------------------------------------------------------------
n605_lit_string_α:
                        mov              qword ptr [rbp + 192], 2                       # result
                        mov              dword ptr [rbp + 196], 2
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n606_var_ref_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n606_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 656]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n607_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n607_call_proc_staged_α:
                        mov              qword ptr [rbp + 160], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx639_20
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx639_21
.Lx639_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
.Lx639_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx639_22
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx639_23
.Lx639_22:
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
.Lx639_23:
                        lea              rax, [rip + .Lx639_7]
                        push             rax
                        mov              edi, 4                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx639_1
                        lea              rcx, [rip + .Lx639_3]
                        lea              rdx, [rip + .Lx639_4]
                                                                                        jmp   rax
.Lx639_3:
                        mov              qword ptr [rbp + 168], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx639_5
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx639_2
.Lx639_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx639_2
.Lx639_4:
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax
                                                                                        jne   .Lx639_6
                        mov              qword ptr [rbp + 160], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx639_2
.Lx639_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx639_2
.Lx639_1:
                        call             rt_faildescr@PLT
.Lx639_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n604_call_proc_staged_β
                                                                                        jmp   n608_suspend_α
n607_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 160], 0
                        lea              rdi, [rbp + 176]
                        lea              rsi, [rbp + 184]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n604_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              ecx, 48
                        mov              r8d, 848
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 192]                     # v
                        mov              rdx, qword ptr [rbp + 200]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [rbp + 208]                     # v
                        mov              rdx, qword ptr [rbp + 216]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 4                                         # idx
                        mov              esi, 2                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n604_call_proc_staged_β
                        lea              r11, [rip + .Lx639_7]
                        push             r11
                        lea              rcx, [rip + .Lx639_3]
                        lea              rdx, [rip + .Lx639_4]
                                                                                        jmp   rax
.Lx639_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    n604_call_proc_staged_β
                                                                                        jmp   n608_suspend_α
.Lx639_0:
                        .quad            .Lx639_0_s
.Lx639_0_s:
                        .string          "safe/2"
#-----------------------------------------------------------------------------------------------------------------------
n608_suspend_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx641_61
                        mov              qword ptr [rbp + 640], rax
                        call             rt_pl_zf_resume_clear@PLT
                                                                                        jmp   qword ptr [rbp + 640]
.Lx641_61:
                        mov              rdi, qword ptr [rbp + 48]
                        mov              rsi, qword ptr [rbp + 56]
                        lea              rdx, [rip + n608_suspend_β]
                        call             rt_pl_cp_push3@PLT
                        lea              rax, [rip + n608_suspend_β]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_q$2F2_γ
n608_suspend_β:
                                                                                        jmp   n607_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n609_call_builtin_prolog_α:
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
                                                                                        je    proc_q$2F2_ω
                                                                                        jmp   proc_q$2F2_ω
n609_call_builtin_prolog_β:
                                                                                        jmp   proc_q$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_q$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_q$2F2_β:
                                                                                        jmp   qword ptr [rbp + 640]
#-----------------------------------------------------------------------------------------------------------------------
proc_q$2F2_γ:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              r11, qword ptr [r11]
                        test             r11, r11
                                                                                        je    .Lx642_50
                        mov              qword ptr [rbp + 640], r11
                        call             rt_pl_zf_resume_clear@PLT
.Lx642_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 752]
                        mov              rcx, qword ptr [rbp + 728]
                        mov              rbp, qword ptr [rbp + 744]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_q$2F2_ω:
                        lea              rsp, [rbp + 752]
                        mov              rcx, qword ptr [rbp + 736]
                        mov              rbp, qword ptr [rbp + 744]
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
.Lstartup_pname1:       .string          "q10/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_q10$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1440
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_test$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1008
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "nd/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_nd$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1280
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_nd$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "safe/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_safe$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 912
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "perm/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_perm$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 960
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pair/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_pair$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1328
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "q/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_q$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
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
                        sub              rsp, 336
                        mov              qword ptr [rsp + 312], rcx
                        mov              qword ptr [rsp + 320], rdx
                        mov              qword ptr [rsp + 328], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 304
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n643_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx653_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                                                                                        jmp   .Lx653_101
.Lx653_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx653_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx653_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx653_101
.Lx653_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx653_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n644_var_ref_α
n643_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n644_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 272]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n645_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n645_call_proc_staged_α:
                        mov              qword ptr [rbp + 224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx657_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx657_21
.Lx657_20:
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
.Lx657_21:
                        lea              rax, [rip + .Lx657_7]
                        push             rax
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx657_1
                        lea              rcx, [rip + .Lx657_3]
                        lea              rdx, [rip + .Lx657_4]
                                                                                        jmp   rax
.Lx657_3:
                        mov              qword ptr [rbp + 232], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx657_5
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx657_2
.Lx657_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx657_2
.Lx657_4:
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx657_6
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx657_2
.Lx657_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx657_2
.Lx657_1:
                        call             rt_faildescr@PLT
.Lx657_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n652_call_builtin_prolog_α
                                                                                        jmp   n646_var_α
n645_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 224], 0
                        lea              rdi, [rbp + 240]
                        lea              rsi, [rbp + 248]
                        call             rt_pl_cp_pop3@PLT
                        test             rax, rax
                                                                                        je    n652_call_builtin_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              ecx, 32
                        mov              r8d, 1408
                        call             rt_pl_zf_resume_set@PLT
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [rbp + 256]                     # v
                        mov              rdx, qword ptr [rbp + 264]                     # v
                        call             rt_arg_stage@PLT
                        mov              edi, 1                                         # idx
                        mov              esi, 1                                         # nargs
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    n652_call_builtin_prolog_α
                        lea              r11, [rip + .Lx657_7]
                        push             r11
                        lea              rcx, [rip + .Lx657_3]
                        lea              rdx, [rip + .Lx657_4]
                                                                                        jmp   rax
.Lx657_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n652_call_builtin_prolog_α
                                                                                        jmp   n646_var_α
.Lx657_0:
                        .quad            .Lx657_0_s
.Lx657_0_s:
                        .string          "q10/1"
#-----------------------------------------------------------------------------------------------------------------------
n646_var_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n647_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n647_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn661:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn661]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n645_call_proc_staged_β
                                                                                        jmp   n648_lit_string_α
n647_call_builtin_prolog_β:
                                                                                        jmp   n645_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n648_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx662_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n649_call_builtin_prolog_α
.Lx662_0:
                        .quad            .Lx662_0_s
.Lx662_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n649_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn664:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn664]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n645_call_proc_staged_β
                                                                                        jmp   n650_move_label_α
n649_call_builtin_prolog_β:
                                                                                        jmp   n645_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n650_move_label_α:
                        lea              rax, [rip + n645_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n651_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    main_ω
                                                                                        jmp   rax
n651_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n652_call_builtin_prolog_α:
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
n652_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n651_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 336]
                        mov              rcx, qword ptr [rbp + 312]
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 336]
                        mov              rcx, qword ptr [rbp + 320]
                        mov              rbp, qword ptr [rbp + 328]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
