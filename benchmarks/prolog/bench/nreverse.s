                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_nreverse$2F2_α
proc_nreverse$2F2_α:
                        .global          proc_nreverse$2F2_α
                        .global          proc_nreverse$2F2_β
                        .global          proc_nreverse$2F2_γ
                        .global          proc_nreverse$2F2_ω
                        sub              rsp, 1232
                        mov              [rsp + 1208], rcx
                        mov              [rsp + 1216], rdx
                        mov              [rsp + 1224], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
proc_nreverse$2F2_α_body:
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx36_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx36_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx36_101
.Lx36_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx36_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_nreverse$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_nreverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx39_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n3_lit_integer_α
.Lx39_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx40_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx40_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
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
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx41_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx41_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_111
                        cmp              esi, 1
                                                                                        jne   .Lx41_112
                        mov              r8, rax
                                                                                        jmp   .Lx41_110
.Lx41_112:
                        cmp              esi, 2
                                                                                        jne   .Lx41_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx41_111
                        mov              r8, rax
                                                                                        jmp   .Lx41_110
.Lx41_113:
                        cmp              eax, 13
                                                                                        jne   .Lx41_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx41_111
                        cmp              rax, r8
                                                                                        je    .Lx41_111
                        mov              r8, rax
                                                                                        jmp   .Lx41_110
.Lx41_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx41_114
                        cmp              eax, 99
                                                                                        je    .Lx41_114
                        cmp              eax, 13
                                                                                        jne   .Lx41_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx41_114
                                                                                        jmp   .Lx41_118
.Lx41_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx41_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx41_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx41_115
                                                                                        jmp   .Lx41_114
.Lx41_119:
                        cmp              eax, 6
                                                                                        jne   .Lx41_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx41_114
                                                                                        jmp   .Lx41_115
.Lx41_120:
                        cmp              eax, 1
                                                                                        jne   .Lx41_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx41_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx41_114
                                                                                        jmp   .Lx41_115
.Lx41_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx41_117
.Lx41_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx41_117
.Lx41_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx41_117:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n24_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        add              rsp, 16
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx48_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_61
                        cmp              esi, 1
                                                                                        jne   .Lx48_62
                        mov              r8, rax
                                                                                        jmp   .Lx48_60
.Lx48_62:
                        cmp              esi, 2
                                                                                        jne   .Lx48_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_61
                        mov              r8, rax
                                                                                        jmp   .Lx48_60
.Lx48_63:
                        cmp              eax, 13
                                                                                        jne   .Lx48_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_61
                        cmp              rax, r8
                                                                                        je    .Lx48_61
                        mov              r8, rax
                                                                                        jmp   .Lx48_60
.Lx48_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_80
                        cmp              eax, 99
                                                                                        je    .Lx48_80
                        cmp              eax, 13
                                                                                        jne   .Lx48_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx48_80
                                                                                        jmp   .Lx48_74
.Lx48_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx48_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx48_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx48_73
                        lea              r9, [rbp + 928]
.Lx48_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_65
                        cmp              esi, 1
                                                                                        jne   .Lx48_66
                        mov              r9, rax
                                                                                        jmp   .Lx48_64
.Lx48_66:
                        cmp              esi, 2
                                                                                        jne   .Lx48_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_65
                        mov              r9, rax
                                                                                        jmp   .Lx48_64
.Lx48_67:
                        cmp              eax, 13
                                                                                        jne   .Lx48_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_65
                        cmp              rax, r9
                                                                                        je    .Lx48_65
                        mov              r9, rax
                                                                                        jmp   .Lx48_64
.Lx48_65:
                        lea              rcx, [rbp + 944]
.Lx48_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx48_69
                        cmp              esi, 1
                                                                                        jne   .Lx48_70
                        mov              rcx, rax
                                                                                        jmp   .Lx48_68
.Lx48_70:
                        cmp              esi, 2
                                                                                        jne   .Lx48_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_69
                        mov              rcx, rax
                                                                                        jmp   .Lx48_68
.Lx48_71:
                        cmp              eax, 13
                                                                                        jne   .Lx48_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx48_69
                        cmp              rax, rcx
                                                                                        je    .Lx48_69
                        mov              rcx, rax
                                                                                        jmp   .Lx48_68
.Lx48_69:
                        cmp              r9, rcx
                                                                                        je    .Lx48_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_75
                        cmp              eax, 99
                                                                                        je    .Lx48_75
                        cmp              eax, 13
                                                                                        jne   .Lx48_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx48_75
                                                                                        jmp   .Lx48_72
.Lx48_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_76
                        cmp              eax, 99
                                                                                        je    .Lx48_76
                        cmp              eax, 13
                                                                                        jne   .Lx48_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx48_76
                                                                                        jmp   .Lx48_72
.Lx48_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx48_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx48_72
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
                                                                                        jmp   .Lx48_77
.Lx48_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx48_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx48_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx48_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx48_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx48_72
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
                        lea              r9, [rbp + 928]
.Lx48_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_82
                        cmp              esi, 1
                                                                                        jne   .Lx48_83
                        mov              r9, rax
                                                                                        jmp   .Lx48_81
.Lx48_83:
                        cmp              esi, 2
                                                                                        jne   .Lx48_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_82
                        mov              r9, rax
                                                                                        jmp   .Lx48_81
.Lx48_84:
                        cmp              eax, 13
                                                                                        jne   .Lx48_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx48_82
                        cmp              rax, r9
                                                                                        je    .Lx48_82
                        mov              r9, rax
                                                                                        jmp   .Lx48_81
.Lx48_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_85
                        cmp              eax, 99
                                                                                        je    .Lx48_85
                        cmp              eax, 13
                                                                                        jne   .Lx48_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx48_85
                                                                                        jmp   .Lx48_86
.Lx48_85:
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
                                                                                        jmp   .Lx48_87
.Lx48_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx48_87:
                        lea              rcx, [rbp + 944]
.Lx48_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx48_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx48_89
                        cmp              esi, 1
                                                                                        jne   .Lx48_90
                        mov              rcx, rax
                                                                                        jmp   .Lx48_88
.Lx48_90:
                        cmp              esi, 2
                                                                                        jne   .Lx48_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx48_89
                        mov              rcx, rax
                                                                                        jmp   .Lx48_88
.Lx48_91:
                        cmp              eax, 13
                                                                                        jne   .Lx48_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx48_89
                        cmp              rax, rcx
                                                                                        je    .Lx48_89
                        mov              rcx, rax
                                                                                        jmp   .Lx48_88
.Lx48_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx48_92
                        cmp              eax, 99
                                                                                        je    .Lx48_92
                        cmp              eax, 13
                                                                                        jne   .Lx48_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx48_92
                                                                                        jmp   .Lx48_93
.Lx48_92:
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
                                                                                        jmp   .Lx48_94
.Lx48_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx48_94:
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
                                                                                        jmp   .Lx48_77
.Lx48_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx48_77
.Lx48_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx48_77:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n23_call_builtin_prolog_α
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                                        jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        add              rsp, 16
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 816]
                        lea              r8, [rbp + 816]
.Lx53_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              esi, 1
                                                                                        jne   .Lx53_55
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_55:
                        cmp              esi, 2
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_56:
                        cmp              eax, 13
                                                                                        jne   .Lx53_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_41
                        cmp              rax, r8
                                                                                        je    .Lx53_41
                        mov              r8, rax
                                                                                        jmp   .Lx53_40
.Lx53_41:
                        lea              r9, [rbp + 832]
.Lx53_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx53_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              esi, 1
                                                                                        jne   .Lx53_57
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_57:
                        cmp              esi, 2
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_58:
                        cmp              eax, 13
                                                                                        jne   .Lx53_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx53_43
                        cmp              rax, r9
                                                                                        je    .Lx53_43
                        mov              r9, rax
                                                                                        jmp   .Lx53_42
.Lx53_43:
                        cmp              r8, r9
                                                                                        je    .Lx53_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_44
                        cmp              eax, 99
                                                                                        je    .Lx53_44
                        cmp              eax, 13
                                                                                        jne   .Lx53_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx53_44
                                                                                        jmp   .Lx53_45
.Lx53_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_53
                        cmp              eax, 99
                                                                                        je    .Lx53_53
                        cmp              eax, 13
                                                                                        jne   .Lx53_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_46
.Lx53_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                                                                                        jmp   .Lx53_51
.Lx53_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx53_47
                        cmp              eax, 99
                                                                                        je    .Lx53_47
                        cmp              eax, 13
                                                                                        jne   .Lx53_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx53_47
                                                                                        jmp   .Lx53_48
.Lx53_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx53_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx53_53
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
                                                                                        jmp   .Lx53_51
.Lx53_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx53_49
                        cmp              edx, 14
                                                                                        je    .Lx53_53
                                                                                        jmp   .Lx53_52
.Lx53_49:
                        cmp              edx, 14
                                                                                        je    .Lx53_52
                        cmp              ecx, 7
                                                                                        je    .Lx53_53
                        cmp              edx, 7
                                                                                        je    .Lx53_53
                        cmp              ecx, 6
                                                                                        jne   .Lx53_50
                        cmp              edx, 6
                                                                                        jne   .Lx53_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx53_51
                                                                                        jmp   .Lx53_52
.Lx53_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx53_53
.Lx53_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx53_54
.Lx53_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx53_54
.Lx53_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx53_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n23_call_builtin_prolog_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                                        jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        add              rsp, 16
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n14_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_proc_staged_α:
                        mov              qword ptr [rbp + 736], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_20
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx59_21
.Lx59_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx59_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx59_22
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx59_23
.Lx59_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx59_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx59_1
                        lea              rcx, [rip + .Lx59_3]
                        lea              rdx, [rip + .Lx59_4]
                                                                                        jmp   rax
.Lx59_3:
                        mov              qword ptr [rbp + 744], rsp
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx59_5
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx59_2
.Lx59_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx59_2
.Lx59_4:
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax
                                                                                        jne   .Lx59_6
                        mov              qword ptr [rbp + 736], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx59_2
.Lx59_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx59_2
.Lx59_1:
                        call             rt_faildescr@PLT
.Lx59_2:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n23_call_builtin_prolog_α
                                                                                        jmp   n15_var_ref_α
n14_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 744]
                                                                                        jmp   qword ptr [rsp]
.Lx59_0:
                        .quad            .Lx59_0_s
.Lx59_0_s:
                        .string          "nreverse/2"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:
                        mov              qword ptr [rbp + 656], 1
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Lx62_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n17_var_ref_α
.Lx62_0:
                        .quad            .Lx62_0_s
.Lx62_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 544], 1
                        mov              dword ptr [rbp + 548], 2
                        mov              rax, qword ptr [rip + .Lx65_0]
                        mov              qword ptr [rbp + 552], rax
                                                                                        jmp   n19_call_builtin_prolog_α
.Lx65_0:
                        .quad            .Lx65_0_s
.Lx65_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n23_call_builtin_prolog_α
                                                                                        jmp   n20_var_ref_α
n19_call_builtin_prolog_β:
                                                                                        jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        add              rsp, 16
                                                                                        jmp   n21_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α:
                        mov              qword ptr [rbp + 496], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx70_20
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx70_21
.Lx70_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
                        call             rt_arg_stage@PLT
.Lx70_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx70_22
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx70_23
.Lx70_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        call             rt_arg_stage@PLT
.Lx70_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx70_24
                        mov              rax, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx70_25
.Lx70_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 672]
                        mov              rdx, qword ptr [rbp + 680]
                        call             rt_arg_stage@PLT
.Lx70_25:
                        mov              edi, 3
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx70_1
                        lea              rcx, [rip + .Lx70_3]
                        lea              rdx, [rip + .Lx70_4]
                                                                                        jmp   rax
.Lx70_3:
                        mov              qword ptr [rbp + 504], rsp
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx70_5
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx70_2
.Lx70_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx70_2
.Lx70_4:
                        mov              rax, qword ptr [rbp + 496]
                        test             rax, rax
                                                                                        jne   .Lx70_6
                        mov              qword ptr [rbp + 496], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx70_2
.Lx70_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx70_2
.Lx70_1:
                        call             rt_faildescr@PLT
.Lx70_2:
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n14_call_proc_staged_β
                                                                                        jmp   n22_suspend_α
n21_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 504]
                                                                                        jmp   qword ptr [rsp]
.Lx70_0:
                        .quad            .Lx70_0_s
.Lx70_0_s:
                        .string          "concatenate/3"
#-----------------------------------------------------------------------------------------------------------------------
n22_suspend_α:
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_nreverse$2F2_γ
n22_suspend_β:
                                                                                        jmp   n21_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
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
                                                                                        je    proc_nreverse$2F2_ω
                                                                                        jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                                                                                        jmp   proc_nreverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:
                        mov              qword ptr [rbp + 368], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n26_lit_string_α
.Lx76_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              dword ptr [rbp + 388], 2
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n27_call_builtin_prolog_α
.Lx77_0:
                        .quad            .Lx77_0_s
.Lx77_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx78_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        cmp              esi, 1
                                                                                        jne   .Lx78_112
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_112:
                        cmp              esi, 2
                                                                                        jne   .Lx78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_113:
                        cmp              eax, 13
                                                                                        jne   .Lx78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx78_111
                        cmp              rax, r8
                                                                                        je    .Lx78_111
                        mov              r8, rax
                                                                                        jmp   .Lx78_110
.Lx78_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx78_114
                        cmp              eax, 99
                                                                                        je    .Lx78_114
                        cmp              eax, 13
                                                                                        jne   .Lx78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx78_114
                                                                                        jmp   .Lx78_118
.Lx78_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx78_115
                        cmp              eax, 6
                                                                                        je    .Lx78_114
                        cmp              eax, 1
                                                                                        jne   .Lx78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx78_114
                                                                                        jmp   .Lx78_116
.Lx78_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx78_117
.Lx78_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx78_117
.Lx78_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx78_117:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n28_var_ref_α
n27_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              dword ptr [rbp + 276], 2
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n30_call_builtin_prolog_α
.Lx81_0:
                        .quad            .Lx81_0_s
.Lx81_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              rsi, qword ptr [rip + .Lx82_2]
                                                                                        jmp   .Lx82_3
.Lx82_2:
                        .quad            .Lx82_2_s
.Lx82_2_s:
                        .string          "[]"
.Lx82_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n31_var_ref_α
n30_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        add              rsp, 16
                                                                                        jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              dword ptr [rbp + 196], 2
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n33_call_builtin_prolog_α
.Lx85_0:
                        .quad            .Lx85_0_s
.Lx85_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx86_2]
                                                                                        jmp   .Lx86_3
.Lx86_2:
                        .quad            .Lx86_2_s
.Lx86_2_s:
                        .string          "[]"
.Lx86_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n35_call_builtin_prolog_α
                                                                                        jmp   n34_suspend_α
n33_call_builtin_prolog_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_nreverse$2F2_γ
n34_suspend_β:
                                                                                        jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
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
                                                                                        je    proc_nreverse$2F2_ω
                                                                                        jmp   proc_nreverse$2F2_ω
n35_call_builtin_prolog_β:
                                                                                        jmp   proc_nreverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_nreverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_nreverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1104]
#-----------------------------------------------------------------------------------------------------------------------
proc_nreverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_nreverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1208]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_nreverse$2F2_ω:
                        mov              rax, [rbp + 1216]
                        lea              rsp, [rbp + 1232]
                        mov              rbp, [rbp + 1224]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_reverse$2F2_α
proc_reverse$2F2_α:
                        .global          proc_reverse$2F2_α
                        .global          proc_reverse$2F2_β
                        .global          proc_reverse$2F2_γ
                        .global          proc_reverse$2F2_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_reverse$2F2_α_body:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n90_call_builtin_prolog_α:
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
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx103_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   n91_var_ref_α
n90_call_builtin_prolog_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        add              rsp, 16
                                                                                        jmp   n93_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx108_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_41
                        cmp              esi, 1
                                                                                        jne   .Lx108_55
                        mov              r8, rax
                                                                                        jmp   .Lx108_40
.Lx108_55:
                        cmp              esi, 2
                                                                                        jne   .Lx108_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_41
                        mov              r8, rax
                                                                                        jmp   .Lx108_40
.Lx108_56:
                        cmp              eax, 13
                                                                                        jne   .Lx108_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_41
                        cmp              rax, r8
                                                                                        je    .Lx108_41
                        mov              r8, rax
                                                                                        jmp   .Lx108_40
.Lx108_41:
                        lea              r9, [rbp + 368]
.Lx108_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx108_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_43
                        cmp              esi, 1
                                                                                        jne   .Lx108_57
                        mov              r9, rax
                                                                                        jmp   .Lx108_42
.Lx108_57:
                        cmp              esi, 2
                                                                                        jne   .Lx108_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx108_43
                        mov              r9, rax
                                                                                        jmp   .Lx108_42
.Lx108_58:
                        cmp              eax, 13
                                                                                        jne   .Lx108_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx108_43
                        cmp              rax, r9
                                                                                        je    .Lx108_43
                        mov              r9, rax
                                                                                        jmp   .Lx108_42
.Lx108_43:
                        cmp              r8, r9
                                                                                        je    .Lx108_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_44
                        cmp              eax, 99
                                                                                        je    .Lx108_44
                        cmp              eax, 13
                                                                                        jne   .Lx108_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx108_44
                                                                                        jmp   .Lx108_45
.Lx108_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_53
                        cmp              eax, 99
                                                                                        je    .Lx108_53
                        cmp              eax, 13
                                                                                        jne   .Lx108_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx108_53
                                                                                        jmp   .Lx108_46
.Lx108_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx108_53
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
                                                                                        jmp   .Lx108_51
.Lx108_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx108_47
                        cmp              eax, 99
                                                                                        je    .Lx108_47
                        cmp              eax, 13
                                                                                        jne   .Lx108_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx108_47
                                                                                        jmp   .Lx108_48
.Lx108_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx108_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx108_53
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
                                                                                        jmp   .Lx108_51
.Lx108_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx108_49
                        cmp              edx, 14
                                                                                        je    .Lx108_53
                                                                                        jmp   .Lx108_52
.Lx108_49:
                        cmp              edx, 14
                                                                                        je    .Lx108_52
                        cmp              ecx, 7
                                                                                        je    .Lx108_53
                        cmp              edx, 7
                                                                                        je    .Lx108_53
                        cmp              ecx, 6
                                                                                        jne   .Lx108_50
                        cmp              edx, 6
                                                                                        jne   .Lx108_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx108_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx108_51
                                                                                        jmp   .Lx108_52
.Lx108_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx108_53
.Lx108_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx108_54
.Lx108_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx108_54
.Lx108_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx108_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n102_call_builtin_prolog_α
                                                                                        jmp   n94_var_ref_α
n93_call_builtin_prolog_β:
                                                                                        jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        add              rsp, 16
                                                                                        jmp   n96_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 272]
                        lea              r8, [rbp + 272]
.Lx113_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx113_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_41
                        cmp              esi, 1
                                                                                        jne   .Lx113_55
                        mov              r8, rax
                                                                                        jmp   .Lx113_40
.Lx113_55:
                        cmp              esi, 2
                                                                                        jne   .Lx113_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx113_41
                        mov              r8, rax
                                                                                        jmp   .Lx113_40
.Lx113_56:
                        cmp              eax, 13
                                                                                        jne   .Lx113_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_41
                        cmp              rax, r8
                                                                                        je    .Lx113_41
                        mov              r8, rax
                                                                                        jmp   .Lx113_40
.Lx113_41:
                        lea              r9, [rbp + 288]
.Lx113_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx113_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_43
                        cmp              esi, 1
                                                                                        jne   .Lx113_57
                        mov              r9, rax
                                                                                        jmp   .Lx113_42
.Lx113_57:
                        cmp              esi, 2
                                                                                        jne   .Lx113_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx113_43
                        mov              r9, rax
                                                                                        jmp   .Lx113_42
.Lx113_58:
                        cmp              eax, 13
                                                                                        jne   .Lx113_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx113_43
                        cmp              rax, r9
                                                                                        je    .Lx113_43
                        mov              r9, rax
                                                                                        jmp   .Lx113_42
.Lx113_43:
                        cmp              r8, r9
                                                                                        je    .Lx113_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx113_44
                        cmp              eax, 99
                                                                                        je    .Lx113_44
                        cmp              eax, 13
                                                                                        jne   .Lx113_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx113_44
                                                                                        jmp   .Lx113_45
.Lx113_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx113_53
                        cmp              eax, 99
                                                                                        je    .Lx113_53
                        cmp              eax, 13
                                                                                        jne   .Lx113_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx113_53
                                                                                        jmp   .Lx113_46
.Lx113_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx113_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx113_53
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
                                                                                        jmp   .Lx113_51
.Lx113_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx113_47
                        cmp              eax, 99
                                                                                        je    .Lx113_47
                        cmp              eax, 13
                                                                                        jne   .Lx113_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx113_47
                                                                                        jmp   .Lx113_48
.Lx113_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx113_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx113_53
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
                                                                                        jmp   .Lx113_51
.Lx113_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx113_49
                        cmp              edx, 14
                                                                                        je    .Lx113_53
                                                                                        jmp   .Lx113_52
.Lx113_49:
                        cmp              edx, 14
                                                                                        je    .Lx113_52
                        cmp              ecx, 7
                                                                                        je    .Lx113_53
                        cmp              edx, 7
                                                                                        je    .Lx113_53
                        cmp              ecx, 6
                                                                                        jne   .Lx113_50
                        cmp              edx, 6
                                                                                        jne   .Lx113_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx113_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx113_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx113_51
                                                                                        jmp   .Lx113_52
.Lx113_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx113_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx113_53
.Lx113_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx113_54
.Lx113_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx113_54
.Lx113_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx113_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n102_call_builtin_prolog_α
                                                                                        jmp   n97_var_ref_α
n96_call_builtin_prolog_β:
                                                                                        jmp   n102_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n99_var_ref_α
.Lx116_0:
                        .quad            .Lx116_0_s
.Lx116_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n100_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx120_21
.Lx120_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx120_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx120_23
.Lx120_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx120_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx120_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx120_25
.Lx120_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx120_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx120_1
                        lea              rcx, [rip + .Lx120_3]
                        lea              rdx, [rip + .Lx120_4]
                                                                                        jmp   rax
.Lx120_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx120_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx120_2
.Lx120_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx120_2
.Lx120_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx120_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx120_2
.Lx120_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx120_2
.Lx120_1:
                        call             rt_faildescr@PLT
.Lx120_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n102_call_builtin_prolog_α
                                                                                        jmp   n101_suspend_α
n100_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx120_0:
                        .quad            .Lx120_0_s
.Lx120_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n101_suspend_α:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_reverse$2F2_γ
n101_suspend_β:
                                                                                        jmp   n100_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_call_builtin_prolog_α:
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
                                                                                        je    proc_reverse$2F2_ω
                                                                                        jmp   proc_reverse$2F2_ω
n102_call_builtin_prolog_β:
                                                                                        jmp   proc_reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_reverse$2F2_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_reverse$2F2_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$reverse_$2F3_α
proc_$reverse_$2F3_α:
                        .global          proc_$reverse_$2F3_α
                        .global          proc_$reverse_$2F3_β
                        .global          proc_$reverse_$2F3_γ
                        .global          proc_$reverse_$2F3_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_$reverse_$2F3_α_body:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n124_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx163_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx163_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx163_101
.Lx163_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx163_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   n125_var_ref_α
n124_call_builtin_prolog_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        add              rsp, 16
                                                                                        jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:
                        mov              qword ptr [rbp + 1136], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 1144], rax
                                                                                        jmp   n127_lit_string_α
.Lx166_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              dword ptr [rbp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n128_call_builtin_prolog_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n128_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1072]
                        lea              r8, [rbp + 1072]
.Lx168_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx168_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx168_111
                        cmp              esi, 1
                                                                                        jne   .Lx168_112
                        mov              r8, rax
                                                                                        jmp   .Lx168_110
.Lx168_112:
                        cmp              esi, 2
                                                                                        jne   .Lx168_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx168_111
                        mov              r8, rax
                                                                                        jmp   .Lx168_110
.Lx168_113:
                        cmp              eax, 13
                                                                                        jne   .Lx168_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx168_111
                        cmp              rax, r8
                                                                                        je    .Lx168_111
                        mov              r8, rax
                                                                                        jmp   .Lx168_110
.Lx168_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx168_114
                        cmp              eax, 99
                                                                                        je    .Lx168_114
                        cmp              eax, 13
                                                                                        jne   .Lx168_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx168_114
                                                                                        jmp   .Lx168_118
.Lx168_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx168_115
                        cmp              eax, 6
                                                                                        je    .Lx168_114
                        cmp              eax, 1
                                                                                        jne   .Lx168_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx168_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx168_114
                                                                                        jmp   .Lx168_116
.Lx168_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx168_117
.Lx168_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx168_117
.Lx168_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx168_117:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    n140_var_ref_α
                                                                                        jmp   n129_var_ref_α
n128_call_builtin_prolog_β:
                                                                                        jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        add              rsp, 16
                                                                                        jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:
                        mov              qword ptr [rbp + 1040], 1
                        mov              dword ptr [rbp + 1044], 2
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n131_call_builtin_prolog_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              rsi, qword ptr [rip + .Lx172_2]
                                                                                        jmp   .Lx172_3
.Lx172_2:
                        .quad            .Lx172_2_s
.Lx172_2_s:
                        .string          "[]"
.Lx172_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n132_var_ref_α
n131_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n134_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx177_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx177_41
                        cmp              esi, 1
                                                                                        jne   .Lx177_55
                        mov              r8, rax
                                                                                        jmp   .Lx177_40
.Lx177_55:
                        cmp              esi, 2
                                                                                        jne   .Lx177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx177_41
                        mov              r8, rax
                                                                                        jmp   .Lx177_40
.Lx177_56:
                        cmp              eax, 13
                                                                                        jne   .Lx177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx177_41
                        cmp              rax, r8
                                                                                        je    .Lx177_41
                        mov              r8, rax
                                                                                        jmp   .Lx177_40
.Lx177_41:
                        lea              r9, [rbp + 928]
.Lx177_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx177_43
                        cmp              esi, 1
                                                                                        jne   .Lx177_57
                        mov              r9, rax
                                                                                        jmp   .Lx177_42
.Lx177_57:
                        cmp              esi, 2
                                                                                        jne   .Lx177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx177_43
                        mov              r9, rax
                                                                                        jmp   .Lx177_42
.Lx177_58:
                        cmp              eax, 13
                                                                                        jne   .Lx177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx177_43
                        cmp              rax, r9
                                                                                        je    .Lx177_43
                        mov              r9, rax
                                                                                        jmp   .Lx177_42
.Lx177_43:
                        cmp              r8, r9
                                                                                        je    .Lx177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx177_44
                        cmp              eax, 99
                                                                                        je    .Lx177_44
                        cmp              eax, 13
                                                                                        jne   .Lx177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx177_44
                                                                                        jmp   .Lx177_45
.Lx177_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx177_53
                        cmp              eax, 99
                                                                                        je    .Lx177_53
                        cmp              eax, 13
                                                                                        jne   .Lx177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx177_53
                                                                                        jmp   .Lx177_46
.Lx177_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx177_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx177_53
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
                                                                                        jmp   .Lx177_51
.Lx177_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx177_47
                        cmp              eax, 99
                                                                                        je    .Lx177_47
                        cmp              eax, 13
                                                                                        jne   .Lx177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx177_47
                                                                                        jmp   .Lx177_48
.Lx177_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx177_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx177_53
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
                                                                                        jmp   .Lx177_51
.Lx177_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx177_49
                        cmp              edx, 14
                                                                                        je    .Lx177_53
                                                                                        jmp   .Lx177_52
.Lx177_49:
                        cmp              edx, 14
                                                                                        je    .Lx177_52
                        cmp              ecx, 7
                                                                                        je    .Lx177_53
                        cmp              edx, 7
                                                                                        je    .Lx177_53
                        cmp              ecx, 6
                                                                                        jne   .Lx177_50
                        cmp              edx, 6
                                                                                        jne   .Lx177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx177_51
                                                                                        jmp   .Lx177_52
.Lx177_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx177_53
.Lx177_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx177_54
.Lx177_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx177_54
.Lx177_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx177_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n135_var_ref_α
n134_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n137_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_builtin_prolog_α:
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
.Lx182_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              esi, 1
                                                                                        jne   .Lx182_55
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_55:
                        cmp              esi, 2
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_56:
                        cmp              eax, 13
                                                                                        jne   .Lx182_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_41
                        cmp              rax, r8
                                                                                        je    .Lx182_41
                        mov              r8, rax
                                                                                        jmp   .Lx182_40
.Lx182_41:
                        lea              r9, [rbp + 848]
.Lx182_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx182_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              esi, 1
                                                                                        jne   .Lx182_57
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_57:
                        cmp              esi, 2
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_58:
                        cmp              eax, 13
                                                                                        jne   .Lx182_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx182_43
                        cmp              rax, r9
                                                                                        je    .Lx182_43
                        mov              r9, rax
                                                                                        jmp   .Lx182_42
.Lx182_43:
                        cmp              r8, r9
                                                                                        je    .Lx182_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_44
                        cmp              eax, 99
                                                                                        je    .Lx182_44
                        cmp              eax, 13
                                                                                        jne   .Lx182_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx182_44
                                                                                        jmp   .Lx182_45
.Lx182_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_53
                        cmp              eax, 99
                                                                                        je    .Lx182_53
                        cmp              eax, 13
                                                                                        jne   .Lx182_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_46
.Lx182_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx182_47
                        cmp              eax, 99
                                                                                        je    .Lx182_47
                        cmp              eax, 13
                                                                                        jne   .Lx182_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx182_47
                                                                                        jmp   .Lx182_48
.Lx182_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx182_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx182_53
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
                                                                                        jmp   .Lx182_51
.Lx182_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx182_49
                        cmp              edx, 14
                                                                                        je    .Lx182_53
                                                                                        jmp   .Lx182_52
.Lx182_49:
                        cmp              edx, 14
                                                                                        je    .Lx182_52
                        cmp              ecx, 7
                                                                                        je    .Lx182_53
                        cmp              edx, 7
                                                                                        je    .Lx182_53
                        cmp              ecx, 6
                                                                                        jne   .Lx182_50
                        cmp              edx, 6
                                                                                        jne   .Lx182_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx182_51
                                                                                        jmp   .Lx182_52
.Lx182_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx182_53
.Lx182_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx182_54
.Lx182_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx182_54
.Lx182_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx182_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n138_suspend_α
n137_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$reverse_$2F3_γ
n138_suspend_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   n140_var_ref_α
n139_call_builtin_prolog_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        add              rsp, 16
                                                                                        jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n142_lit_integer_α
.Lx188_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx189_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n143_call_builtin_prolog_α
.Lx189_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n143_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx190_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_111
                        cmp              esi, 1
                                                                                        jne   .Lx190_112
                        mov              r8, rax
                                                                                        jmp   .Lx190_110
.Lx190_112:
                        cmp              esi, 2
                                                                                        jne   .Lx190_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_111
                        mov              r8, rax
                                                                                        jmp   .Lx190_110
.Lx190_113:
                        cmp              eax, 13
                                                                                        jne   .Lx190_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_111
                        cmp              rax, r8
                                                                                        je    .Lx190_111
                        mov              r8, rax
                                                                                        jmp   .Lx190_110
.Lx190_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_114
                        cmp              eax, 99
                                                                                        je    .Lx190_114
                        cmp              eax, 13
                                                                                        jne   .Lx190_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx190_114
                                                                                        jmp   .Lx190_118
.Lx190_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx190_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx190_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx190_115
                                                                                        jmp   .Lx190_114
.Lx190_119:
                        cmp              eax, 6
                                                                                        jne   .Lx190_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx190_114
                                                                                        jmp   .Lx190_115
.Lx190_120:
                        cmp              eax, 1
                                                                                        jne   .Lx190_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx190_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx190_114
                                                                                        jmp   .Lx190_115
.Lx190_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx190_117
.Lx190_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx190_117
.Lx190_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx190_117:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_prolog_α
                                                                                        jmp   n144_var_ref_α
n143_call_builtin_prolog_β:
                                                                                        jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n147_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 576]
                        lea              r8, [rbp + 576]
.Lx197_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_61
                        cmp              esi, 1
                                                                                        jne   .Lx197_62
                        mov              r8, rax
                                                                                        jmp   .Lx197_60
.Lx197_62:
                        cmp              esi, 2
                                                                                        jne   .Lx197_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_61
                        mov              r8, rax
                                                                                        jmp   .Lx197_60
.Lx197_63:
                        cmp              eax, 13
                                                                                        jne   .Lx197_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_61
                        cmp              rax, r8
                                                                                        je    .Lx197_61
                        mov              r8, rax
                                                                                        jmp   .Lx197_60
.Lx197_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_80
                        cmp              eax, 99
                                                                                        je    .Lx197_80
                        cmp              eax, 13
                                                                                        jne   .Lx197_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx197_80
                                                                                        jmp   .Lx197_74
.Lx197_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx197_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx197_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx197_73
                        lea              r9, [rbp + 592]
.Lx197_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_65
                        cmp              esi, 1
                                                                                        jne   .Lx197_66
                        mov              r9, rax
                                                                                        jmp   .Lx197_64
.Lx197_66:
                        cmp              esi, 2
                                                                                        jne   .Lx197_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_65
                        mov              r9, rax
                                                                                        jmp   .Lx197_64
.Lx197_67:
                        cmp              eax, 13
                                                                                        jne   .Lx197_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_65
                        cmp              rax, r9
                                                                                        je    .Lx197_65
                        mov              r9, rax
                                                                                        jmp   .Lx197_64
.Lx197_65:
                        lea              rcx, [rbp + 608]
.Lx197_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx197_69
                        cmp              esi, 1
                                                                                        jne   .Lx197_70
                        mov              rcx, rax
                                                                                        jmp   .Lx197_68
.Lx197_70:
                        cmp              esi, 2
                                                                                        jne   .Lx197_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_69
                        mov              rcx, rax
                                                                                        jmp   .Lx197_68
.Lx197_71:
                        cmp              eax, 13
                                                                                        jne   .Lx197_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx197_69
                        cmp              rax, rcx
                                                                                        je    .Lx197_69
                        mov              rcx, rax
                                                                                        jmp   .Lx197_68
.Lx197_69:
                        cmp              r9, rcx
                                                                                        je    .Lx197_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_75
                        cmp              eax, 99
                                                                                        je    .Lx197_75
                        cmp              eax, 13
                                                                                        jne   .Lx197_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx197_75
                                                                                        jmp   .Lx197_72
.Lx197_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_76
                        cmp              eax, 99
                                                                                        je    .Lx197_76
                        cmp              eax, 13
                                                                                        jne   .Lx197_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx197_76
                                                                                        jmp   .Lx197_72
.Lx197_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx197_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx197_72
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
                                                                                        jmp   .Lx197_77
.Lx197_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx197_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx197_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx197_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx197_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx197_72
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
                        lea              r9, [rbp + 592]
.Lx197_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_82
                        cmp              esi, 1
                                                                                        jne   .Lx197_83
                        mov              r9, rax
                                                                                        jmp   .Lx197_81
.Lx197_83:
                        cmp              esi, 2
                                                                                        jne   .Lx197_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_82
                        mov              r9, rax
                                                                                        jmp   .Lx197_81
.Lx197_84:
                        cmp              eax, 13
                                                                                        jne   .Lx197_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx197_82
                        cmp              rax, r9
                                                                                        je    .Lx197_82
                        mov              r9, rax
                                                                                        jmp   .Lx197_81
.Lx197_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_85
                        cmp              eax, 99
                                                                                        je    .Lx197_85
                        cmp              eax, 13
                                                                                        jne   .Lx197_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx197_85
                                                                                        jmp   .Lx197_86
.Lx197_85:
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
                                                                                        jmp   .Lx197_87
.Lx197_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx197_87:
                        lea              rcx, [rbp + 608]
.Lx197_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx197_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx197_89
                        cmp              esi, 1
                                                                                        jne   .Lx197_90
                        mov              rcx, rax
                                                                                        jmp   .Lx197_88
.Lx197_90:
                        cmp              esi, 2
                                                                                        jne   .Lx197_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx197_89
                        mov              rcx, rax
                                                                                        jmp   .Lx197_88
.Lx197_91:
                        cmp              eax, 13
                                                                                        jne   .Lx197_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx197_89
                        cmp              rax, rcx
                                                                                        je    .Lx197_89
                        mov              rcx, rax
                                                                                        jmp   .Lx197_88
.Lx197_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx197_92
                        cmp              eax, 99
                                                                                        je    .Lx197_92
                        cmp              eax, 13
                                                                                        jne   .Lx197_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx197_92
                                                                                        jmp   .Lx197_93
.Lx197_92:
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
                                                                                        jmp   .Lx197_94
.Lx197_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx197_94:
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
                                                                                        jmp   .Lx197_77
.Lx197_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx197_77
.Lx197_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx197_77:
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_prolog_α
                                                                                        jmp   n148_var_ref_α
n147_call_builtin_prolog_β:
                                                                                        jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        add              rsp, 16
                                                                                        jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n150_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_builtin_prolog_α:
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
.Lx202_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        cmp              esi, 1
                                                                                        jne   .Lx202_55
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_55:
                        cmp              esi, 2
                                                                                        jne   .Lx202_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_56:
                        cmp              eax, 13
                                                                                        jne   .Lx202_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_41
                        cmp              rax, r8
                                                                                        je    .Lx202_41
                        mov              r8, rax
                                                                                        jmp   .Lx202_40
.Lx202_41:
                        lea              r9, [rbp + 496]
.Lx202_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx202_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        cmp              esi, 1
                                                                                        jne   .Lx202_57
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_57:
                        cmp              esi, 2
                                                                                        jne   .Lx202_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_58:
                        cmp              eax, 13
                                                                                        jne   .Lx202_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx202_43
                        cmp              rax, r9
                                                                                        je    .Lx202_43
                        mov              r9, rax
                                                                                        jmp   .Lx202_42
.Lx202_43:
                        cmp              r8, r9
                                                                                        je    .Lx202_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_44
                        cmp              eax, 99
                                                                                        je    .Lx202_44
                        cmp              eax, 13
                                                                                        jne   .Lx202_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx202_44
                                                                                        jmp   .Lx202_45
.Lx202_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_53
                        cmp              eax, 99
                                                                                        je    .Lx202_53
                        cmp              eax, 13
                                                                                        jne   .Lx202_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx202_53
                                                                                        jmp   .Lx202_46
.Lx202_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx202_53
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
                                                                                        jmp   .Lx202_51
.Lx202_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx202_47
                        cmp              eax, 99
                                                                                        je    .Lx202_47
                        cmp              eax, 13
                                                                                        jne   .Lx202_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx202_47
                                                                                        jmp   .Lx202_48
.Lx202_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx202_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx202_53
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
                                                                                        jmp   .Lx202_51
.Lx202_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx202_49
                        cmp              edx, 14
                                                                                        je    .Lx202_53
                                                                                        jmp   .Lx202_52
.Lx202_49:
                        cmp              edx, 14
                                                                                        je    .Lx202_52
                        cmp              ecx, 7
                                                                                        je    .Lx202_53
                        cmp              edx, 7
                                                                                        je    .Lx202_53
                        cmp              ecx, 6
                                                                                        jne   .Lx202_50
                        cmp              edx, 6
                                                                                        jne   .Lx202_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx202_51
                                                                                        jmp   .Lx202_52
.Lx202_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx202_53
.Lx202_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx202_54
.Lx202_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx202_54
.Lx202_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx202_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_prolog_α
                                                                                        jmp   n151_var_ref_α
n150_call_builtin_prolog_β:
                                                                                        jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        add              rsp, 16
                                                                                        jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n153_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_builtin_prolog_α:
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
.Lx207_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx207_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_41
                        cmp              esi, 1
                                                                                        jne   .Lx207_55
                        mov              r8, rax
                                                                                        jmp   .Lx207_40
.Lx207_55:
                        cmp              esi, 2
                                                                                        jne   .Lx207_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx207_41
                        mov              r8, rax
                                                                                        jmp   .Lx207_40
.Lx207_56:
                        cmp              eax, 13
                                                                                        jne   .Lx207_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_41
                        cmp              rax, r8
                                                                                        je    .Lx207_41
                        mov              r8, rax
                                                                                        jmp   .Lx207_40
.Lx207_41:
                        lea              r9, [rbp + 416]
.Lx207_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx207_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_43
                        cmp              esi, 1
                                                                                        jne   .Lx207_57
                        mov              r9, rax
                                                                                        jmp   .Lx207_42
.Lx207_57:
                        cmp              esi, 2
                                                                                        jne   .Lx207_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx207_43
                        mov              r9, rax
                                                                                        jmp   .Lx207_42
.Lx207_58:
                        cmp              eax, 13
                                                                                        jne   .Lx207_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_43
                        cmp              rax, r9
                                                                                        je    .Lx207_43
                        mov              r9, rax
                                                                                        jmp   .Lx207_42
.Lx207_43:
                        cmp              r8, r9
                                                                                        je    .Lx207_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx207_44
                        cmp              eax, 99
                                                                                        je    .Lx207_44
                        cmp              eax, 13
                                                                                        jne   .Lx207_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx207_44
                                                                                        jmp   .Lx207_45
.Lx207_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx207_53
                        cmp              eax, 99
                                                                                        je    .Lx207_53
                        cmp              eax, 13
                                                                                        jne   .Lx207_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx207_53
                                                                                        jmp   .Lx207_46
.Lx207_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx207_53
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
                                                                                        jmp   .Lx207_51
.Lx207_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx207_47
                        cmp              eax, 99
                                                                                        je    .Lx207_47
                        cmp              eax, 13
                                                                                        jne   .Lx207_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx207_47
                                                                                        jmp   .Lx207_48
.Lx207_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx207_53
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
                                                                                        jmp   .Lx207_51
.Lx207_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx207_49
                        cmp              edx, 14
                                                                                        je    .Lx207_53
                                                                                        jmp   .Lx207_52
.Lx207_49:
                        cmp              edx, 14
                                                                                        je    .Lx207_52
                        cmp              ecx, 7
                                                                                        je    .Lx207_53
                        cmp              edx, 7
                                                                                        je    .Lx207_53
                        cmp              ecx, 6
                                                                                        jne   .Lx207_50
                        cmp              edx, 6
                                                                                        jne   .Lx207_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx207_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx207_51
                                                                                        jmp   .Lx207_52
.Lx207_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx207_53
.Lx207_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx207_54
.Lx207_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx207_54
.Lx207_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx207_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_prolog_α
                                                                                        jmp   n154_var_ref_α
n153_call_builtin_prolog_β:
                                                                                        jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx210_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n156_var_ref_α
.Lx210_0:
                        .quad            .Lx210_0_s
.Lx210_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n158_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_prolog_α
                                                                                        jmp   n159_var_ref_α
n158_call_builtin_prolog_β:
                                                                                        jmp   n162_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n160_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx219_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx219_21
.Lx219_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx219_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx219_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx219_23
.Lx219_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx219_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx219_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx219_25
.Lx219_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx219_25:
                        mov              edi, 2
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx219_1
                        lea              rcx, [rip + .Lx219_3]
                        lea              rdx, [rip + .Lx219_4]
                                                                                        jmp   rax
.Lx219_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx219_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx219_2
.Lx219_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx219_2
.Lx219_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx219_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx219_2
.Lx219_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx219_2
.Lx219_1:
                        call             rt_faildescr@PLT
.Lx219_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n162_call_builtin_prolog_α
                                                                                        jmp   n161_suspend_α
n160_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx219_0:
                        .quad            .Lx219_0_s
.Lx219_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n161_suspend_α:
                        lea              rax, [rip + n161_suspend_β]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$reverse_$2F3_γ
n161_suspend_β:
                                                                                        jmp   n160_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n162_call_builtin_prolog_α:
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
                                                                                        je    proc_$reverse_$2F3_ω
                                                                                        jmp   proc_$reverse_$2F3_ω
n162_call_builtin_prolog_β:
                                                                                        jmp   proc_$reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1168]
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$reverse_$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1272]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$reverse_$2F3_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_concatenate$2F3_α
proc_concatenate$2F3_α:
                        .global          proc_concatenate$2F3_α
                        .global          proc_concatenate$2F3_β
                        .global          proc_concatenate$2F3_γ
                        .global          proc_concatenate$2F3_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_concatenate$2F3_α_body:
                        lea              rax, [rip + n243_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx260_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx260_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx260_101
.Lx260_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx260_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_concatenate$2F3_ω
                                                                                        jmp   n224_var_ref_α
n223_call_builtin_prolog_β:
                                                                                        jmp   proc_concatenate$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n225_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx263_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n226_lit_integer_α
.Lx263_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx264_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n227_call_builtin_prolog_α
.Lx264_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n227_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx265_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx265_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx265_111
                        cmp              esi, 1
                                                                                        jne   .Lx265_112
                        mov              r8, rax
                                                                                        jmp   .Lx265_110
.Lx265_112:
                        cmp              esi, 2
                                                                                        jne   .Lx265_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx265_111
                        mov              r8, rax
                                                                                        jmp   .Lx265_110
.Lx265_113:
                        cmp              eax, 13
                                                                                        jne   .Lx265_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx265_111
                        cmp              rax, r8
                                                                                        je    .Lx265_111
                        mov              r8, rax
                                                                                        jmp   .Lx265_110
.Lx265_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx265_114
                        cmp              eax, 99
                                                                                        je    .Lx265_114
                        cmp              eax, 13
                                                                                        jne   .Lx265_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx265_114
                                                                                        jmp   .Lx265_118
.Lx265_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx265_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx265_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx265_115
                                                                                        jmp   .Lx265_114
.Lx265_119:
                        cmp              eax, 6
                                                                                        jne   .Lx265_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx265_114
                                                                                        jmp   .Lx265_115
.Lx265_120:
                        cmp              eax, 1
                                                                                        jne   .Lx265_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx265_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx265_114
                                                                                        jmp   .Lx265_115
.Lx265_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx265_117
.Lx265_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx265_117
.Lx265_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx265_117:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n245_var_ref_α
                                                                                        jmp   n228_var_ref_α
n227_call_builtin_prolog_β:
                                                                                        jmp   n245_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n229_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        add              rsp, 16
                                                                                        jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n231_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        lea              r8, [rbp + 896]
.Lx272_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_61
                        cmp              esi, 1
                                                                                        jne   .Lx272_62
                        mov              r8, rax
                                                                                        jmp   .Lx272_60
.Lx272_62:
                        cmp              esi, 2
                                                                                        jne   .Lx272_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_61
                        mov              r8, rax
                                                                                        jmp   .Lx272_60
.Lx272_63:
                        cmp              eax, 13
                                                                                        jne   .Lx272_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_61
                        cmp              rax, r8
                                                                                        je    .Lx272_61
                        mov              r8, rax
                                                                                        jmp   .Lx272_60
.Lx272_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_80
                        cmp              eax, 99
                                                                                        je    .Lx272_80
                        cmp              eax, 13
                                                                                        jne   .Lx272_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx272_80
                                                                                        jmp   .Lx272_74
.Lx272_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx272_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx272_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx272_73
                        lea              r9, [rbp + 912]
.Lx272_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_65
                        cmp              esi, 1
                                                                                        jne   .Lx272_66
                        mov              r9, rax
                                                                                        jmp   .Lx272_64
.Lx272_66:
                        cmp              esi, 2
                                                                                        jne   .Lx272_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_65
                        mov              r9, rax
                                                                                        jmp   .Lx272_64
.Lx272_67:
                        cmp              eax, 13
                                                                                        jne   .Lx272_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_65
                        cmp              rax, r9
                                                                                        je    .Lx272_65
                        mov              r9, rax
                                                                                        jmp   .Lx272_64
.Lx272_65:
                        lea              rcx, [rbp + 928]
.Lx272_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx272_69
                        cmp              esi, 1
                                                                                        jne   .Lx272_70
                        mov              rcx, rax
                                                                                        jmp   .Lx272_68
.Lx272_70:
                        cmp              esi, 2
                                                                                        jne   .Lx272_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_69
                        mov              rcx, rax
                                                                                        jmp   .Lx272_68
.Lx272_71:
                        cmp              eax, 13
                                                                                        jne   .Lx272_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx272_69
                        cmp              rax, rcx
                                                                                        je    .Lx272_69
                        mov              rcx, rax
                                                                                        jmp   .Lx272_68
.Lx272_69:
                        cmp              r9, rcx
                                                                                        je    .Lx272_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_75
                        cmp              eax, 99
                                                                                        je    .Lx272_75
                        cmp              eax, 13
                                                                                        jne   .Lx272_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx272_75
                                                                                        jmp   .Lx272_72
.Lx272_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_76
                        cmp              eax, 99
                                                                                        je    .Lx272_76
                        cmp              eax, 13
                                                                                        jne   .Lx272_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx272_76
                                                                                        jmp   .Lx272_72
.Lx272_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx272_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx272_72
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
                                                                                        jmp   .Lx272_77
.Lx272_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx272_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx272_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx272_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx272_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx272_72
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
                        lea              r9, [rbp + 912]
.Lx272_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_82
                        cmp              esi, 1
                                                                                        jne   .Lx272_83
                        mov              r9, rax
                                                                                        jmp   .Lx272_81
.Lx272_83:
                        cmp              esi, 2
                                                                                        jne   .Lx272_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_82
                        mov              r9, rax
                                                                                        jmp   .Lx272_81
.Lx272_84:
                        cmp              eax, 13
                                                                                        jne   .Lx272_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx272_82
                        cmp              rax, r9
                                                                                        je    .Lx272_82
                        mov              r9, rax
                                                                                        jmp   .Lx272_81
.Lx272_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_85
                        cmp              eax, 99
                                                                                        je    .Lx272_85
                        cmp              eax, 13
                                                                                        jne   .Lx272_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx272_85
                                                                                        jmp   .Lx272_86
.Lx272_85:
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
                                                                                        jmp   .Lx272_87
.Lx272_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx272_87:
                        lea              rcx, [rbp + 928]
.Lx272_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx272_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx272_89
                        cmp              esi, 1
                                                                                        jne   .Lx272_90
                        mov              rcx, rax
                                                                                        jmp   .Lx272_88
.Lx272_90:
                        cmp              esi, 2
                                                                                        jne   .Lx272_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx272_89
                        mov              rcx, rax
                                                                                        jmp   .Lx272_88
.Lx272_91:
                        cmp              eax, 13
                                                                                        jne   .Lx272_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx272_89
                        cmp              rax, rcx
                                                                                        je    .Lx272_89
                        mov              rcx, rax
                                                                                        jmp   .Lx272_88
.Lx272_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx272_92
                        cmp              eax, 99
                                                                                        je    .Lx272_92
                        cmp              eax, 13
                                                                                        jne   .Lx272_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx272_92
                                                                                        jmp   .Lx272_93
.Lx272_92:
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
                                                                                        jmp   .Lx272_94
.Lx272_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx272_94:
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
                                                                                        jmp   .Lx272_77
.Lx272_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx272_77
.Lx272_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx272_77:
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_builtin_prolog_α
                                                                                        jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                                                                                        jmp   n244_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        add              rsp, 16
                                                                                        jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        add              rsp, 16
                                                                                        jmp   n234_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 800]
                        lea              r8, [rbp + 800]
.Lx277_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx277_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_41
                        cmp              esi, 1
                                                                                        jne   .Lx277_55
                        mov              r8, rax
                                                                                        jmp   .Lx277_40
.Lx277_55:
                        cmp              esi, 2
                                                                                        jne   .Lx277_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx277_41
                        mov              r8, rax
                                                                                        jmp   .Lx277_40
.Lx277_56:
                        cmp              eax, 13
                                                                                        jne   .Lx277_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_41
                        cmp              rax, r8
                                                                                        je    .Lx277_41
                        mov              r8, rax
                                                                                        jmp   .Lx277_40
.Lx277_41:
                        lea              r9, [rbp + 816]
.Lx277_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx277_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_43
                        cmp              esi, 1
                                                                                        jne   .Lx277_57
                        mov              r9, rax
                                                                                        jmp   .Lx277_42
.Lx277_57:
                        cmp              esi, 2
                                                                                        jne   .Lx277_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx277_43
                        mov              r9, rax
                                                                                        jmp   .Lx277_42
.Lx277_58:
                        cmp              eax, 13
                                                                                        jne   .Lx277_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx277_43
                        cmp              rax, r9
                                                                                        je    .Lx277_43
                        mov              r9, rax
                                                                                        jmp   .Lx277_42
.Lx277_43:
                        cmp              r8, r9
                                                                                        je    .Lx277_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx277_44
                        cmp              eax, 99
                                                                                        je    .Lx277_44
                        cmp              eax, 13
                                                                                        jne   .Lx277_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx277_44
                                                                                        jmp   .Lx277_45
.Lx277_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx277_53
                        cmp              eax, 99
                                                                                        je    .Lx277_53
                        cmp              eax, 13
                                                                                        jne   .Lx277_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx277_53
                                                                                        jmp   .Lx277_46
.Lx277_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx277_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx277_53
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
                                                                                        jmp   .Lx277_51
.Lx277_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx277_47
                        cmp              eax, 99
                                                                                        je    .Lx277_47
                        cmp              eax, 13
                                                                                        jne   .Lx277_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx277_47
                                                                                        jmp   .Lx277_48
.Lx277_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx277_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx277_53
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
                                                                                        jmp   .Lx277_51
.Lx277_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx277_49
                        cmp              edx, 14
                                                                                        je    .Lx277_53
                                                                                        jmp   .Lx277_52
.Lx277_49:
                        cmp              edx, 14
                                                                                        je    .Lx277_52
                        cmp              ecx, 7
                                                                                        je    .Lx277_53
                        cmp              edx, 7
                                                                                        je    .Lx277_53
                        cmp              ecx, 6
                                                                                        jne   .Lx277_50
                        cmp              edx, 6
                                                                                        jne   .Lx277_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx277_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx277_51
                                                                                        jmp   .Lx277_52
.Lx277_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx277_53
.Lx277_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx277_54
.Lx277_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx277_54
.Lx277_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx277_54:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_builtin_prolog_α
                                                                                        jmp   n235_var_ref_α
n234_call_builtin_prolog_β:
                                                                                        jmp   n244_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        add              rsp, 16
                                                                                        jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        add              rsp, 16
                                                                                        jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        add              rsp, 16
                                                                                        jmp   n238_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        lea              r8, [rbp + 704]
.Lx284_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_61
                        cmp              esi, 1
                                                                                        jne   .Lx284_62
                        mov              r8, rax
                                                                                        jmp   .Lx284_60
.Lx284_62:
                        cmp              esi, 2
                                                                                        jne   .Lx284_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_61
                        mov              r8, rax
                                                                                        jmp   .Lx284_60
.Lx284_63:
                        cmp              eax, 13
                                                                                        jne   .Lx284_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_61
                        cmp              rax, r8
                                                                                        je    .Lx284_61
                        mov              r8, rax
                                                                                        jmp   .Lx284_60
.Lx284_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_80
                        cmp              eax, 99
                                                                                        je    .Lx284_80
                        cmp              eax, 13
                                                                                        jne   .Lx284_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx284_80
                                                                                        jmp   .Lx284_74
.Lx284_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx284_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx284_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx284_73
                        lea              r9, [rbp + 720]
.Lx284_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_65
                        cmp              esi, 1
                                                                                        jne   .Lx284_66
                        mov              r9, rax
                                                                                        jmp   .Lx284_64
.Lx284_66:
                        cmp              esi, 2
                                                                                        jne   .Lx284_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_65
                        mov              r9, rax
                                                                                        jmp   .Lx284_64
.Lx284_67:
                        cmp              eax, 13
                                                                                        jne   .Lx284_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_65
                        cmp              rax, r9
                                                                                        je    .Lx284_65
                        mov              r9, rax
                                                                                        jmp   .Lx284_64
.Lx284_65:
                        lea              rcx, [rbp + 736]
.Lx284_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx284_69
                        cmp              esi, 1
                                                                                        jne   .Lx284_70
                        mov              rcx, rax
                                                                                        jmp   .Lx284_68
.Lx284_70:
                        cmp              esi, 2
                                                                                        jne   .Lx284_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_69
                        mov              rcx, rax
                                                                                        jmp   .Lx284_68
.Lx284_71:
                        cmp              eax, 13
                                                                                        jne   .Lx284_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx284_69
                        cmp              rax, rcx
                                                                                        je    .Lx284_69
                        mov              rcx, rax
                                                                                        jmp   .Lx284_68
.Lx284_69:
                        cmp              r9, rcx
                                                                                        je    .Lx284_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_75
                        cmp              eax, 99
                                                                                        je    .Lx284_75
                        cmp              eax, 13
                                                                                        jne   .Lx284_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx284_75
                                                                                        jmp   .Lx284_72
.Lx284_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_76
                        cmp              eax, 99
                                                                                        je    .Lx284_76
                        cmp              eax, 13
                                                                                        jne   .Lx284_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx284_76
                                                                                        jmp   .Lx284_72
.Lx284_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx284_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx284_72
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
                                                                                        jmp   .Lx284_77
.Lx284_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx284_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx284_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx284_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx284_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx284_72
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
                        lea              r9, [rbp + 720]
.Lx284_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_82
                        cmp              esi, 1
                                                                                        jne   .Lx284_83
                        mov              r9, rax
                                                                                        jmp   .Lx284_81
.Lx284_83:
                        cmp              esi, 2
                                                                                        jne   .Lx284_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_82
                        mov              r9, rax
                                                                                        jmp   .Lx284_81
.Lx284_84:
                        cmp              eax, 13
                                                                                        jne   .Lx284_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx284_82
                        cmp              rax, r9
                                                                                        je    .Lx284_82
                        mov              r9, rax
                                                                                        jmp   .Lx284_81
.Lx284_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_85
                        cmp              eax, 99
                                                                                        je    .Lx284_85
                        cmp              eax, 13
                                                                                        jne   .Lx284_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx284_85
                                                                                        jmp   .Lx284_86
.Lx284_85:
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
                                                                                        jmp   .Lx284_87
.Lx284_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx284_87:
                        lea              rcx, [rbp + 736]
.Lx284_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx284_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx284_89
                        cmp              esi, 1
                                                                                        jne   .Lx284_90
                        mov              rcx, rax
                                                                                        jmp   .Lx284_88
.Lx284_90:
                        cmp              esi, 2
                                                                                        jne   .Lx284_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx284_89
                        mov              rcx, rax
                                                                                        jmp   .Lx284_88
.Lx284_91:
                        cmp              eax, 13
                                                                                        jne   .Lx284_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx284_89
                        cmp              rax, rcx
                                                                                        je    .Lx284_89
                        mov              rcx, rax
                                                                                        jmp   .Lx284_88
.Lx284_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx284_92
                        cmp              eax, 99
                                                                                        je    .Lx284_92
                        cmp              eax, 13
                                                                                        jne   .Lx284_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx284_92
                                                                                        jmp   .Lx284_93
.Lx284_92:
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
                                                                                        jmp   .Lx284_94
.Lx284_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx284_94:
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
                                                                                        jmp   .Lx284_77
.Lx284_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx284_77
.Lx284_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx284_77:
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_builtin_prolog_α
                                                                                        jmp   n239_var_ref_α
n238_call_builtin_prolog_β:
                                                                                        jmp   n244_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n242_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx292_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx292_21
.Lx292_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx292_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx292_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx292_23
.Lx292_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx292_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx292_24
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx292_25
.Lx292_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
                        call             rt_arg_stage@PLT
.Lx292_25:
                        mov              edi, 3
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx292_1
                        lea              rcx, [rip + .Lx292_3]
                        lea              rdx, [rip + .Lx292_4]
                                                                                        jmp   rax
.Lx292_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx292_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx292_2
.Lx292_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx292_2
.Lx292_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx292_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx292_2
.Lx292_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx292_2
.Lx292_1:
                        call             rt_faildescr@PLT
.Lx292_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_builtin_prolog_α
                                                                                        jmp   n243_suspend_α
n242_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx292_0:
                        .quad            .Lx292_0_s
.Lx292_0_s:
                        .string          "concatenate/3"
#-----------------------------------------------------------------------------------------------------------------------
n243_suspend_α:
                        lea              rax, [rip + n243_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_concatenate$2F3_γ
n243_suspend_β:
                                                                                        jmp   n242_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n244_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    proc_concatenate$2F3_ω
                                                                                        jmp   n245_var_ref_α
n244_call_builtin_prolog_β:
                                                                                        jmp   proc_concatenate$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n246_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx298_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n247_lit_string_α
.Lx298_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              dword ptr [rbp + 484], 2
                        mov              rax, qword ptr [rip + .Lx299_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n248_call_builtin_prolog_α
.Lx299_0:
                        .quad            .Lx299_0_s
.Lx299_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lx300_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx300_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx300_111
                        cmp              esi, 1
                                                                                        jne   .Lx300_112
                        mov              r8, rax
                                                                                        jmp   .Lx300_110
.Lx300_112:
                        cmp              esi, 2
                                                                                        jne   .Lx300_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx300_111
                        mov              r8, rax
                                                                                        jmp   .Lx300_110
.Lx300_113:
                        cmp              eax, 13
                                                                                        jne   .Lx300_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx300_111
                        cmp              rax, r8
                                                                                        je    .Lx300_111
                        mov              r8, rax
                                                                                        jmp   .Lx300_110
.Lx300_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx300_114
                        cmp              eax, 99
                                                                                        je    .Lx300_114
                        cmp              eax, 13
                                                                                        jne   .Lx300_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx300_114
                                                                                        jmp   .Lx300_118
.Lx300_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx300_115
                        cmp              eax, 6
                                                                                        je    .Lx300_114
                        cmp              eax, 1
                                                                                        jne   .Lx300_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx300_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx300_114
                                                                                        jmp   .Lx300_116
.Lx300_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx300_117
.Lx300_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx300_117
.Lx300_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx300_117:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n249_var_ref_α
n248_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              dword ptr [rbp + 372], 2
                        mov              rax, qword ptr [rip + .Lx303_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n251_call_builtin_prolog_α
.Lx303_0:
                        .quad            .Lx303_0_s
.Lx303_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              rsi, qword ptr [rip + .Lx304_2]
                                                                                        jmp   .Lx304_3
.Lx304_2:
                        .quad            .Lx304_2_s
.Lx304_2_s:
                        .string          "[]"
.Lx304_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n252_var_ref_α
n251_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n254_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_builtin_prolog_α:
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
.Lx309_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx309_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx309_41
                        cmp              esi, 1
                                                                                        jne   .Lx309_55
                        mov              r8, rax
                                                                                        jmp   .Lx309_40
.Lx309_55:
                        cmp              esi, 2
                                                                                        jne   .Lx309_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx309_41
                        mov              r8, rax
                                                                                        jmp   .Lx309_40
.Lx309_56:
                        cmp              eax, 13
                                                                                        jne   .Lx309_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx309_41
                        cmp              rax, r8
                                                                                        je    .Lx309_41
                        mov              r8, rax
                                                                                        jmp   .Lx309_40
.Lx309_41:
                        lea              r9, [rbp + 256]
.Lx309_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx309_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx309_43
                        cmp              esi, 1
                                                                                        jne   .Lx309_57
                        mov              r9, rax
                                                                                        jmp   .Lx309_42
.Lx309_57:
                        cmp              esi, 2
                                                                                        jne   .Lx309_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx309_43
                        mov              r9, rax
                                                                                        jmp   .Lx309_42
.Lx309_58:
                        cmp              eax, 13
                                                                                        jne   .Lx309_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx309_43
                        cmp              rax, r9
                                                                                        je    .Lx309_43
                        mov              r9, rax
                                                                                        jmp   .Lx309_42
.Lx309_43:
                        cmp              r8, r9
                                                                                        je    .Lx309_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx309_44
                        cmp              eax, 99
                                                                                        je    .Lx309_44
                        cmp              eax, 13
                                                                                        jne   .Lx309_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx309_44
                                                                                        jmp   .Lx309_45
.Lx309_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx309_53
                        cmp              eax, 99
                                                                                        je    .Lx309_53
                        cmp              eax, 13
                                                                                        jne   .Lx309_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx309_53
                                                                                        jmp   .Lx309_46
.Lx309_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx309_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx309_53
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
                                                                                        jmp   .Lx309_51
.Lx309_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx309_47
                        cmp              eax, 99
                                                                                        je    .Lx309_47
                        cmp              eax, 13
                                                                                        jne   .Lx309_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx309_47
                                                                                        jmp   .Lx309_48
.Lx309_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx309_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx309_53
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
                                                                                        jmp   .Lx309_51
.Lx309_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx309_49
                        cmp              edx, 14
                                                                                        je    .Lx309_53
                                                                                        jmp   .Lx309_52
.Lx309_49:
                        cmp              edx, 14
                                                                                        je    .Lx309_52
                        cmp              ecx, 7
                                                                                        je    .Lx309_53
                        cmp              edx, 7
                                                                                        je    .Lx309_53
                        cmp              ecx, 6
                                                                                        jne   .Lx309_50
                        cmp              edx, 6
                                                                                        jne   .Lx309_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx309_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx309_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx309_51
                                                                                        jmp   .Lx309_52
.Lx309_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx309_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx309_53
.Lx309_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx309_54
.Lx309_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx309_54
.Lx309_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx309_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n255_var_ref_α
n254_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        add              rsp, 16
                                                                                        jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n257_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_builtin_prolog_α:
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
.Lx314_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx314_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_41
                        cmp              esi, 1
                                                                                        jne   .Lx314_55
                        mov              r8, rax
                                                                                        jmp   .Lx314_40
.Lx314_55:
                        cmp              esi, 2
                                                                                        jne   .Lx314_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx314_41
                        mov              r8, rax
                                                                                        jmp   .Lx314_40
.Lx314_56:
                        cmp              eax, 13
                                                                                        jne   .Lx314_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_41
                        cmp              rax, r8
                                                                                        je    .Lx314_41
                        mov              r8, rax
                                                                                        jmp   .Lx314_40
.Lx314_41:
                        lea              r9, [rbp + 176]
.Lx314_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx314_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_43
                        cmp              esi, 1
                                                                                        jne   .Lx314_57
                        mov              r9, rax
                                                                                        jmp   .Lx314_42
.Lx314_57:
                        cmp              esi, 2
                                                                                        jne   .Lx314_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx314_43
                        mov              r9, rax
                                                                                        jmp   .Lx314_42
.Lx314_58:
                        cmp              eax, 13
                                                                                        jne   .Lx314_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx314_43
                        cmp              rax, r9
                                                                                        je    .Lx314_43
                        mov              r9, rax
                                                                                        jmp   .Lx314_42
.Lx314_43:
                        cmp              r8, r9
                                                                                        je    .Lx314_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx314_44
                        cmp              eax, 99
                                                                                        je    .Lx314_44
                        cmp              eax, 13
                                                                                        jne   .Lx314_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx314_44
                                                                                        jmp   .Lx314_45
.Lx314_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx314_53
                        cmp              eax, 99
                                                                                        je    .Lx314_53
                        cmp              eax, 13
                                                                                        jne   .Lx314_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx314_53
                                                                                        jmp   .Lx314_46
.Lx314_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx314_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx314_53
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
                                                                                        jmp   .Lx314_51
.Lx314_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx314_47
                        cmp              eax, 99
                                                                                        je    .Lx314_47
                        cmp              eax, 13
                                                                                        jne   .Lx314_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx314_47
                                                                                        jmp   .Lx314_48
.Lx314_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx314_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx314_53
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
                                                                                        jmp   .Lx314_51
.Lx314_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx314_49
                        cmp              edx, 14
                                                                                        je    .Lx314_53
                                                                                        jmp   .Lx314_52
.Lx314_49:
                        cmp              edx, 14
                                                                                        je    .Lx314_52
                        cmp              ecx, 7
                                                                                        je    .Lx314_53
                        cmp              edx, 7
                                                                                        je    .Lx314_53
                        cmp              ecx, 6
                                                                                        jne   .Lx314_50
                        cmp              edx, 6
                                                                                        jne   .Lx314_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx314_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx314_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx314_51
                                                                                        jmp   .Lx314_52
.Lx314_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx314_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx314_53
.Lx314_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx314_54
.Lx314_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx314_54
.Lx314_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx314_54:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n259_call_builtin_prolog_α
                                                                                        jmp   n258_suspend_α
n257_call_builtin_prolog_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_suspend_α:
                        lea              rax, [rip + n258_suspend_β]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_concatenate$2F3_γ
n258_suspend_β:
                                                                                        jmp   n259_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_builtin_prolog_α:
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
                                                                                        je    proc_concatenate$2F3_ω
                                                                                        jmp   proc_concatenate$2F3_ω
n259_call_builtin_prolog_β:
                                                                                        jmp   proc_concatenate$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_concatenate$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_concatenate$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1088]
#-----------------------------------------------------------------------------------------------------------------------
proc_concatenate$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_concatenate$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_concatenate$2F3_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "nreverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_nreverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1184
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "reverse/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_reverse$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
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
.Lstartup_pname2:       .string          "$reverse_/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_$reverse_$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "concatenate/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_concatenate$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1168
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
                        sub              rsp, 3688
                        mov              rdi, rsp
                        mov              ecx, 3688
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 3680], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_builtin_prolog_α:
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
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx419_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n319_lit_string_α
n318_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:
                        mov              qword ptr [rbp + 3632], 1
                        mov              dword ptr [rbp + 3636], 1
                        mov              rax, qword ptr [rip + .Lx420_0]
                        mov              qword ptr [rbp + 3640], rax
                                                                                        jmp   n320_lit_integer_α
.Lx420_0:
                        .quad            .Lx420_0_s
.Lx420_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:
                        mov              qword ptr [rbp + 3536], 6
                        mov              rax, qword ptr [rip + .Lx421_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n321_lit_string_α
.Lx421_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:
                        mov              qword ptr [rbp + 3520], 1
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Lx422_0]
                        mov              qword ptr [rbp + 3528], rax
                                                                                        jmp   n322_lit_integer_α
.Lx422_0:
                        .quad            .Lx422_0_s
.Lx422_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:
                        mov              qword ptr [rbp + 3424], 6
                        mov              rax, qword ptr [rip + .Lx423_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n323_lit_string_α
.Lx423_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:
                        mov              qword ptr [rbp + 3408], 1
                        mov              dword ptr [rbp + 3412], 1
                        mov              rax, qword ptr [rip + .Lx424_0]
                        mov              qword ptr [rbp + 3416], rax
                                                                                        jmp   n324_lit_integer_α
.Lx424_0:
                        .quad            .Lx424_0_s
.Lx424_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:
                        mov              qword ptr [rbp + 3312], 6
                        mov              rax, qword ptr [rip + .Lx425_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n325_lit_string_α
.Lx425_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:
                        mov              qword ptr [rbp + 3296], 1
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Lx426_0]
                        mov              qword ptr [rbp + 3304], rax
                                                                                        jmp   n326_lit_integer_α
.Lx426_0:
                        .quad            .Lx426_0_s
.Lx426_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:
                        mov              qword ptr [rbp + 3200], 6
                        mov              rax, qword ptr [rip + .Lx427_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n327_lit_string_α
.Lx427_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:
                        mov              qword ptr [rbp + 3184], 1
                        mov              dword ptr [rbp + 3188], 1
                        mov              rax, qword ptr [rip + .Lx428_0]
                        mov              qword ptr [rbp + 3192], rax
                                                                                        jmp   n328_lit_integer_α
.Lx428_0:
                        .quad            .Lx428_0_s
.Lx428_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:
                        mov              qword ptr [rbp + 3088], 6
                        mov              rax, qword ptr [rip + .Lx429_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n329_lit_string_α
.Lx429_0:
                        .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:
                        mov              qword ptr [rbp + 3072], 1
                        mov              dword ptr [rbp + 3076], 1
                        mov              rax, qword ptr [rip + .Lx430_0]
                        mov              qword ptr [rbp + 3080], rax
                                                                                        jmp   n330_lit_integer_α
.Lx430_0:
                        .quad            .Lx430_0_s
.Lx430_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:
                        mov              qword ptr [rbp + 2976], 6
                        mov              rax, qword ptr [rip + .Lx431_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n331_lit_string_α
.Lx431_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:
                        mov              qword ptr [rbp + 2960], 1
                        mov              dword ptr [rbp + 2964], 1
                        mov              rax, qword ptr [rip + .Lx432_0]
                        mov              qword ptr [rbp + 2968], rax
                                                                                        jmp   n332_lit_integer_α
.Lx432_0:
                        .quad            .Lx432_0_s
.Lx432_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:
                        mov              qword ptr [rbp + 2864], 6
                        mov              rax, qword ptr [rip + .Lx433_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n333_lit_string_α
.Lx433_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:
                        mov              qword ptr [rbp + 2848], 1
                        mov              dword ptr [rbp + 2852], 1
                        mov              rax, qword ptr [rip + .Lx434_0]
                        mov              qword ptr [rbp + 2856], rax
                                                                                        jmp   n334_lit_integer_α
.Lx434_0:
                        .quad            .Lx434_0_s
.Lx434_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:
                        mov              qword ptr [rbp + 2752], 6
                        mov              rax, qword ptr [rip + .Lx435_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n335_lit_string_α
.Lx435_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:
                        mov              qword ptr [rbp + 2736], 1
                        mov              dword ptr [rbp + 2740], 1
                        mov              rax, qword ptr [rip + .Lx436_0]
                        mov              qword ptr [rbp + 2744], rax
                                                                                        jmp   n336_lit_integer_α
.Lx436_0:
                        .quad            .Lx436_0_s
.Lx436_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx437_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n337_lit_string_α
.Lx437_0:
                        .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:
                        mov              qword ptr [rbp + 2624], 1
                        mov              dword ptr [rbp + 2628], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 2632], rax
                                                                                        jmp   n338_lit_integer_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:
                        mov              qword ptr [rbp + 2528], 6
                        mov              rax, qword ptr [rip + .Lx439_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n339_lit_string_α
.Lx439_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:
                        mov              qword ptr [rbp + 2512], 1
                        mov              dword ptr [rbp + 2516], 1
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 2520], rax
                                                                                        jmp   n340_lit_integer_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:
                        mov              qword ptr [rbp + 2416], 6
                        mov              rax, qword ptr [rip + .Lx441_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n341_lit_string_α
.Lx441_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:
                        mov              qword ptr [rbp + 2400], 1
                        mov              dword ptr [rbp + 2404], 1
                        mov              rax, qword ptr [rip + .Lx442_0]
                        mov              qword ptr [rbp + 2408], rax
                                                                                        jmp   n342_lit_integer_α
.Lx442_0:
                        .quad            .Lx442_0_s
.Lx442_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:
                        mov              qword ptr [rbp + 2304], 6
                        mov              rax, qword ptr [rip + .Lx443_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n343_lit_string_α
.Lx443_0:
                        .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:
                        mov              qword ptr [rbp + 2288], 1
                        mov              dword ptr [rbp + 2292], 1
                        mov              rax, qword ptr [rip + .Lx444_0]
                        mov              qword ptr [rbp + 2296], rax
                                                                                        jmp   n344_lit_integer_α
.Lx444_0:
                        .quad            .Lx444_0_s
.Lx444_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:
                        mov              qword ptr [rbp + 2192], 6
                        mov              rax, qword ptr [rip + .Lx445_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n345_lit_string_α
.Lx445_0:
                        .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:
                        mov              qword ptr [rbp + 2176], 1
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Lx446_0]
                        mov              qword ptr [rbp + 2184], rax
                                                                                        jmp   n346_lit_integer_α
.Lx446_0:
                        .quad            .Lx446_0_s
.Lx446_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:
                        mov              qword ptr [rbp + 2080], 6
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n347_lit_string_α
.Lx447_0:
                        .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:
                        mov              qword ptr [rbp + 2064], 1
                        mov              dword ptr [rbp + 2068], 1
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n348_lit_integer_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:
                        mov              qword ptr [rbp + 1968], 6
                        mov              rax, qword ptr [rip + .Lx449_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n349_lit_string_α
.Lx449_0:
                        .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:
                        mov              qword ptr [rbp + 1952], 1
                        mov              dword ptr [rbp + 1956], 1
                        mov              rax, qword ptr [rip + .Lx450_0]
                        mov              qword ptr [rbp + 1960], rax
                                                                                        jmp   n350_lit_integer_α
.Lx450_0:
                        .quad            .Lx450_0_s
.Lx450_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:
                        mov              qword ptr [rbp + 1856], 6
                        mov              rax, qword ptr [rip + .Lx451_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n351_lit_string_α
.Lx451_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:
                        mov              qword ptr [rbp + 1840], 1
                        mov              dword ptr [rbp + 1844], 1
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 1848], rax
                                                                                        jmp   n352_lit_integer_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:
                        mov              qword ptr [rbp + 1744], 6
                        mov              rax, qword ptr [rip + .Lx453_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n353_lit_string_α
.Lx453_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:
                        mov              qword ptr [rbp + 1728], 1
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Lx454_0]
                        mov              qword ptr [rbp + 1736], rax
                                                                                        jmp   n354_lit_integer_α
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:
                        mov              qword ptr [rbp + 1632], 6
                        mov              rax, qword ptr [rip + .Lx455_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n355_lit_string_α
.Lx455_0:
                        .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:
                        mov              qword ptr [rbp + 1616], 1
                        mov              dword ptr [rbp + 1620], 1
                        mov              rax, qword ptr [rip + .Lx456_0]
                        mov              qword ptr [rbp + 1624], rax
                                                                                        jmp   n356_lit_integer_α
.Lx456_0:
                        .quad            .Lx456_0_s
.Lx456_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:
                        mov              qword ptr [rbp + 1520], 6
                        mov              rax, qword ptr [rip + .Lx457_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n357_lit_string_α
.Lx457_0:
                        .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:
                        mov              qword ptr [rbp + 1504], 1
                        mov              dword ptr [rbp + 1508], 1
                        mov              rax, qword ptr [rip + .Lx458_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n358_lit_integer_α
.Lx458_0:
                        .quad            .Lx458_0_s
.Lx458_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:
                        mov              qword ptr [rbp + 1408], 6
                        mov              rax, qword ptr [rip + .Lx459_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n359_lit_string_α
.Lx459_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:
                        mov              qword ptr [rbp + 1392], 1
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Lx460_0]
                        mov              qword ptr [rbp + 1400], rax
                                                                                        jmp   n360_lit_integer_α
.Lx460_0:
                        .quad            .Lx460_0_s
.Lx460_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:
                        mov              qword ptr [rbp + 1296], 6
                        mov              rax, qword ptr [rip + .Lx461_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n361_lit_string_α
.Lx461_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:
                        mov              qword ptr [rbp + 1280], 1
                        mov              dword ptr [rbp + 1284], 1
                        mov              rax, qword ptr [rip + .Lx462_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n362_lit_integer_α
.Lx462_0:
                        .quad            .Lx462_0_s
.Lx462_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:
                        mov              qword ptr [rbp + 1184], 6
                        mov              rax, qword ptr [rip + .Lx463_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n363_lit_string_α
.Lx463_0:
                        .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:
                        mov              qword ptr [rbp + 1168], 1
                        mov              dword ptr [rbp + 1172], 1
                        mov              rax, qword ptr [rip + .Lx464_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n364_lit_integer_α
.Lx464_0:
                        .quad            .Lx464_0_s
.Lx464_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx465_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n365_lit_string_α
.Lx465_0:
                        .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:
                        mov              qword ptr [rbp + 1056], 1
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Lx466_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n366_lit_integer_α
.Lx466_0:
                        .quad            .Lx466_0_s
.Lx466_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:
                        mov              qword ptr [rbp + 960], 6
                        mov              rax, qword ptr [rip + .Lx467_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n367_lit_string_α
.Lx467_0:
                        .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n368_lit_integer_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        mov              qword ptr [rbp + 848], 6
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n369_lit_string_α
.Lx469_0:
                        .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n370_lit_integer_α
.Lx470_0:
                        .quad            .Lx470_0_s
.Lx470_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:
                        mov              qword ptr [rbp + 736], 6
                        mov              rax, qword ptr [rip + .Lx471_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n371_lit_string_α
.Lx471_0:
                        .quad            26
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:
                        mov              qword ptr [rbp + 720], 1
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Lx472_0]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n372_lit_integer_α
.Lx472_0:
                        .quad            .Lx472_0_s
.Lx472_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:
                        mov              qword ptr [rbp + 624], 6
                        mov              rax, qword ptr [rip + .Lx473_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n373_lit_string_α
.Lx473_0:
                        .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:
                        mov              qword ptr [rbp + 608], 1
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Lx474_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n374_lit_integer_α
.Lx474_0:
                        .quad            .Lx474_0_s
.Lx474_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:
                        mov              qword ptr [rbp + 512], 6
                        mov              rax, qword ptr [rip + .Lx475_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n375_lit_string_α
.Lx475_0:
                        .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Lx476_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n376_lit_integer_α
.Lx476_0:
                        .quad            .Lx476_0_s
.Lx476_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx477_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n377_lit_string_α
.Lx477_0:
                        .quad            29
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n378_lit_integer_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:
                        mov              qword ptr [rbp + 288], 6
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n379_lit_string_α
.Lx479_0:
                        .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              dword ptr [rbp + 276], 2
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n380_call_builtin_prolog_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n380_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 320]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n381_call_builtin_prolog_α
n380_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n382_call_builtin_prolog_α
n381_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n383_call_builtin_prolog_α
n382_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n384_call_builtin_prolog_α
n383_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n385_call_builtin_prolog_α
n384_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n385_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n386_call_builtin_prolog_α
n385_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n386_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n387_call_builtin_prolog_α
n386_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n387_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n388_call_builtin_prolog_α
n387_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n389_call_builtin_prolog_α
n388_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n389_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n390_call_builtin_prolog_α
n389_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n390_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n391_call_builtin_prolog_α
n390_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n391_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n392_call_builtin_prolog_α
n391_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n392_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n393_call_builtin_prolog_α
n392_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n394_call_builtin_prolog_α
n393_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n394_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n395_call_builtin_prolog_α
n394_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n395_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n396_call_builtin_prolog_α
n395_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n396_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n397_call_builtin_prolog_α
n396_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n397_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2232], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2224]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n398_call_builtin_prolog_α
n397_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n398_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2344], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n399_call_builtin_prolog_α
n398_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n400_call_builtin_prolog_α
n399_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2568], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n401_call_builtin_prolog_α
n400_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2680], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n402_call_builtin_prolog_α
n401_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n403_call_builtin_prolog_α
n402_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2904], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n404_call_builtin_prolog_α
n403_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3016], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n405_call_builtin_prolog_α
n404_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n405_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3128], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n406_call_builtin_prolog_α
n405_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n407_call_builtin_prolog_α
n406_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3352], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rdi, [rbp + 3344]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n408_call_builtin_prolog_α
n407_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3496], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n409_call_builtin_prolog_α
n408_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3576], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3608], rax
                        lea              rdi, [rbp + 3568]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              eax, 99
                                                                                        je    n418_call_builtin_prolog_α
                                                                                        jmp   n410_var_ref_α
n409_call_builtin_prolog_β:
                                                                                        jmp   n418_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 3664]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        add              rsp, 16
                                                                                        jmp   n411_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx514_20
                        mov              rax, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx514_21
.Lx514_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        call             rt_arg_stage@PLT
.Lx514_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx514_22
                        mov              rax, qword ptr [rbp + 3648]
                        mov              rdx, qword ptr [rbp + 3656]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx514_23
.Lx514_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3648]
                        mov              rdx, qword ptr [rbp + 3656]
                        call             rt_arg_stage@PLT
.Lx514_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx514_1
                        lea              rcx, [rip + .Lx514_3]
                        lea              rdx, [rip + .Lx514_4]
                                                                                        jmp   rax
.Lx514_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx514_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx514_2
.Lx514_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx514_2
.Lx514_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx514_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx514_2
.Lx514_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx514_2
.Lx514_1:
                        call             rt_faildescr@PLT
.Lx514_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n418_call_builtin_prolog_α
                                                                                        jmp   n412_var_α
n411_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "nreverse/2"
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n413_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn518:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n411_call_proc_staged_β
                                                                                        jmp   n414_lit_string_α
n413_call_builtin_prolog_β:
                                                                                        jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n415_call_builtin_prolog_α
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n415_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn521:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn521]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n411_call_proc_staged_β
                                                                                        jmp   n416_move_label_α
n415_call_builtin_prolog_β:
                                                                                        jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n416_move_label_α:
                        lea              rax, [rip + n411_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n417_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n417_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_prolog_α:
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
n418_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n417_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 3680]
                        add              rsp, 3688
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 3680]
                        add              rsp, 3688
                        ret
                        .section         .note.GNU-stack,"",@progbits
