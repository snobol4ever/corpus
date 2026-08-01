                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_sel$2F3_α
proc_sel$2F3_α:
                        .global          proc_sel$2F3_α
                        .global          proc_sel$2F3_β
                        .global          proc_sel$2F3_γ
                        .global          proc_sel$2F3_ω
                        sub              rsp, 1264
                        mov              [rsp + 1240], rcx
                        mov              [rsp + 1248], rdx
                        mov              [rsp + 1256], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1232
                        call             rt_jmp_frame_lexprep2@PLT
proc_sel$2F3_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx38_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx38_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx38_101
.Lx38_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx38_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_sel$2F3_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n3_lit_integer_α
.Lx41_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx42_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
.Lx43_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx43_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_111
                        cmp              esi, 1
                                                                                        jne   .Lx43_112
                        mov              r8, rax
                                                                                        jmp   .Lx43_110
.Lx43_112:
                        cmp              esi, 2
                                                                                        jne   .Lx43_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx43_111
                        mov              r8, rax
                                                                                        jmp   .Lx43_110
.Lx43_113:
                        cmp              eax, 13
                                                                                        jne   .Lx43_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx43_111
                        cmp              rax, r8
                                                                                        je    .Lx43_111
                        mov              r8, rax
                                                                                        jmp   .Lx43_110
.Lx43_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx43_114
                        cmp              eax, 99
                                                                                        je    .Lx43_114
                        cmp              eax, 13
                                                                                        jne   .Lx43_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx43_114
                                                                                        jmp   .Lx43_118
.Lx43_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx43_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx43_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx43_115
                                                                                        jmp   .Lx43_114
.Lx43_119:
                        cmp              eax, 6
                                                                                        jne   .Lx43_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx43_114
                                                                                        jmp   .Lx43_115
.Lx43_120:
                        cmp              eax, 1
                                                                                        jne   .Lx43_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx43_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx43_114
                                                                                        jmp   .Lx43_115
.Lx43_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx43_117
.Lx43_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx43_117
.Lx43_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx43_117:
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n17_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        add              rsp, 16
                                                                                        jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        add              rsp, 16
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx50_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_61
                        cmp              esi, 1
                                                                                        jne   .Lx50_62
                        mov              r8, rax
                                                                                        jmp   .Lx50_60
.Lx50_62:
                        cmp              esi, 2
                                                                                        jne   .Lx50_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_61
                        mov              r8, rax
                                                                                        jmp   .Lx50_60
.Lx50_63:
                        cmp              eax, 13
                                                                                        jne   .Lx50_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_61
                        cmp              rax, r8
                                                                                        je    .Lx50_61
                        mov              r8, rax
                                                                                        jmp   .Lx50_60
.Lx50_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_80
                        cmp              eax, 99
                                                                                        je    .Lx50_80
                        cmp              eax, 13
                                                                                        jne   .Lx50_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx50_80
                                                                                        jmp   .Lx50_74
.Lx50_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx50_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx50_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx50_73
                        lea              r9, [rbp + 944]
.Lx50_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_65
                        cmp              esi, 1
                                                                                        jne   .Lx50_66
                        mov              r9, rax
                                                                                        jmp   .Lx50_64
.Lx50_66:
                        cmp              esi, 2
                                                                                        jne   .Lx50_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_65
                        mov              r9, rax
                                                                                        jmp   .Lx50_64
.Lx50_67:
                        cmp              eax, 13
                                                                                        jne   .Lx50_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_65
                        cmp              rax, r9
                                                                                        je    .Lx50_65
                        mov              r9, rax
                                                                                        jmp   .Lx50_64
.Lx50_65:
                        lea              rcx, [rbp + 960]
.Lx50_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx50_69
                        cmp              esi, 1
                                                                                        jne   .Lx50_70
                        mov              rcx, rax
                                                                                        jmp   .Lx50_68
.Lx50_70:
                        cmp              esi, 2
                                                                                        jne   .Lx50_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_69
                        mov              rcx, rax
                                                                                        jmp   .Lx50_68
.Lx50_71:
                        cmp              eax, 13
                                                                                        jne   .Lx50_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx50_69
                        cmp              rax, rcx
                                                                                        je    .Lx50_69
                        mov              rcx, rax
                                                                                        jmp   .Lx50_68
.Lx50_69:
                        cmp              r9, rcx
                                                                                        je    .Lx50_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_75
                        cmp              eax, 99
                                                                                        je    .Lx50_75
                        cmp              eax, 13
                                                                                        jne   .Lx50_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx50_75
                                                                                        jmp   .Lx50_72
.Lx50_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_76
                        cmp              eax, 99
                                                                                        je    .Lx50_76
                        cmp              eax, 13
                                                                                        jne   .Lx50_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx50_76
                                                                                        jmp   .Lx50_72
.Lx50_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx50_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx50_72
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
                                                                                        jmp   .Lx50_77
.Lx50_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx50_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx50_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx50_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx50_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx50_72
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
.Lx50_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_82
                        cmp              esi, 1
                                                                                        jne   .Lx50_83
                        mov              r9, rax
                                                                                        jmp   .Lx50_81
.Lx50_83:
                        cmp              esi, 2
                                                                                        jne   .Lx50_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_82
                        mov              r9, rax
                                                                                        jmp   .Lx50_81
.Lx50_84:
                        cmp              eax, 13
                                                                                        jne   .Lx50_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx50_82
                        cmp              rax, r9
                                                                                        je    .Lx50_82
                        mov              r9, rax
                                                                                        jmp   .Lx50_81
.Lx50_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_85
                        cmp              eax, 99
                                                                                        je    .Lx50_85
                        cmp              eax, 13
                                                                                        jne   .Lx50_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx50_85
                                                                                        jmp   .Lx50_86
.Lx50_85:
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
                                                                                        jmp   .Lx50_87
.Lx50_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx50_87:
                        lea              rcx, [rbp + 960]
.Lx50_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx50_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx50_89
                        cmp              esi, 1
                                                                                        jne   .Lx50_90
                        mov              rcx, rax
                                                                                        jmp   .Lx50_88
.Lx50_90:
                        cmp              esi, 2
                                                                                        jne   .Lx50_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx50_89
                        mov              rcx, rax
                                                                                        jmp   .Lx50_88
.Lx50_91:
                        cmp              eax, 13
                                                                                        jne   .Lx50_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx50_89
                        cmp              rax, rcx
                                                                                        je    .Lx50_89
                        mov              rcx, rax
                                                                                        jmp   .Lx50_88
.Lx50_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx50_92
                        cmp              eax, 99
                                                                                        je    .Lx50_92
                        cmp              eax, 13
                                                                                        jne   .Lx50_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx50_92
                                                                                        jmp   .Lx50_93
.Lx50_92:
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
                                                                                        jmp   .Lx50_94
.Lx50_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx50_94:
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
                                                                                        jmp   .Lx50_77
.Lx50_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx50_77
.Lx50_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx50_77:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
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
.Lx55_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx55_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx55_41
                        cmp              rax, r8
                                                                                        je    .Lx55_41
                        mov              r8, rax
                                                                                        jmp   .Lx55_40
.Lx55_41:
                        lea              r9, [rbp + 848]
.Lx55_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx55_44
                        cmp              eax, 13
                                                                                        jne   .Lx55_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx55_44
                                                                                        jmp   .Lx55_45
.Lx55_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx55_53
                        cmp              eax, 99
                                                                                        je    .Lx55_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx55_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx55_49
                        cmp              edx, 14
                                                                                        je    .Lx55_53
                                                                                        jmp   .Lx55_52
.Lx55_49:
                        cmp              edx, 14
                                                                                        je    .Lx55_52
                        cmp              ecx, 7
                                                                                        je    .Lx55_53
                        cmp              edx, 7
                                                                                        je    .Lx55_53
                        cmp              ecx, 6
                                                                                        jne   .Lx55_50
                        cmp              edx, 6
                                                                                        jne   .Lx55_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx55_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx55_54
.Lx55_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx55_54:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n14_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 752]
                        lea              r8, [rbp + 752]
.Lx60_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              esi, 1
                                                                                        jne   .Lx60_55
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_55:
                        cmp              esi, 2
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_56:
                        cmp              eax, 13
                                                                                        jne   .Lx60_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_41
                        cmp              rax, r8
                                                                                        je    .Lx60_41
                        mov              r8, rax
                                                                                        jmp   .Lx60_40
.Lx60_41:
                        lea              r9, [rbp + 768]
.Lx60_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx60_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              esi, 1
                                                                                        jne   .Lx60_57
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_57:
                        cmp              esi, 2
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_58:
                        cmp              eax, 13
                                                                                        jne   .Lx60_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx60_43
                        cmp              rax, r9
                                                                                        je    .Lx60_43
                        mov              r9, rax
                                                                                        jmp   .Lx60_42
.Lx60_43:
                        cmp              r8, r9
                                                                                        je    .Lx60_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_44
                        cmp              eax, 99
                                                                                        je    .Lx60_44
                        cmp              eax, 13
                                                                                        jne   .Lx60_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx60_44
                                                                                        jmp   .Lx60_45
.Lx60_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_53
                        cmp              eax, 99
                                                                                        je    .Lx60_53
                        cmp              eax, 13
                                                                                        jne   .Lx60_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_46
.Lx60_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx60_47
                        cmp              eax, 99
                                                                                        je    .Lx60_47
                        cmp              eax, 13
                                                                                        jne   .Lx60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx60_47
                                                                                        jmp   .Lx60_48
.Lx60_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx60_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx60_53
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
                                                                                        jmp   .Lx60_51
.Lx60_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx60_49
                        cmp              edx, 14
                                                                                        je    .Lx60_53
                                                                                        jmp   .Lx60_52
.Lx60_49:
                        cmp              edx, 14
                                                                                        je    .Lx60_52
                        cmp              ecx, 7
                                                                                        je    .Lx60_53
                        cmp              edx, 7
                                                                                        je    .Lx60_53
                        cmp              ecx, 6
                                                                                        jne   .Lx60_50
                        cmp              edx, 6
                                                                                        jne   .Lx60_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx60_51
                                                                                        jmp   .Lx60_52
.Lx60_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx60_53
.Lx60_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx60_54
.Lx60_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx60_54
.Lx60_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx60_54:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              eax, 99
                                                                                        je    n16_call_builtin_prolog_α
                                                                                        jmp   n15_suspend_α
n14_call_builtin_prolog_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sel$2F3_γ
n15_suspend_β:
                                                                                        jmp   n16_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    proc_sel$2F3_ω
                                                                                        jmp   n17_var_ref_α
n16_call_builtin_prolog_β:
                                                                                        jmp   proc_sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 656], 6
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rbp + 664], rax
                                                                                        jmp   n19_lit_integer_α
.Lx66_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 672], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 680], rax
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx67_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx68_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx68_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx68_111
                        cmp              esi, 1
                                                                                        jne   .Lx68_112
                        mov              r8, rax
                                                                                        jmp   .Lx68_110
.Lx68_112:
                        cmp              esi, 2
                                                                                        jne   .Lx68_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx68_111
                        mov              r8, rax
                                                                                        jmp   .Lx68_110
.Lx68_113:
                        cmp              eax, 13
                                                                                        jne   .Lx68_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx68_111
                        cmp              rax, r8
                                                                                        je    .Lx68_111
                        mov              r8, rax
                                                                                        jmp   .Lx68_110
.Lx68_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx68_114
                        cmp              eax, 99
                                                                                        je    .Lx68_114
                        cmp              eax, 13
                                                                                        jne   .Lx68_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx68_114
                                                                                        jmp   .Lx68_118
.Lx68_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx68_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx68_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx68_115
                                                                                        jmp   .Lx68_114
.Lx68_119:
                        cmp              eax, 6
                                                                                        jne   .Lx68_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx68_114
                                                                                        jmp   .Lx68_115
.Lx68_120:
                        cmp              eax, 1
                                                                                        jne   .Lx68_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx68_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx68_114
                                                                                        jmp   .Lx68_115
.Lx68_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx68_117
.Lx68_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx68_117
.Lx68_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx68_117:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_builtin_prolog_α
                                                                                        jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                                                                                        jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        add              rsp, 16
                                                                                        jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        add              rsp, 16
                                                                                        jmp   n24_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx75_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_61
                        cmp              esi, 1
                                                                                        jne   .Lx75_62
                        mov              r8, rax
                                                                                        jmp   .Lx75_60
.Lx75_62:
                        cmp              esi, 2
                                                                                        jne   .Lx75_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_61
                        mov              r8, rax
                                                                                        jmp   .Lx75_60
.Lx75_63:
                        cmp              eax, 13
                                                                                        jne   .Lx75_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_61
                        cmp              rax, r8
                                                                                        je    .Lx75_61
                        mov              r8, rax
                                                                                        jmp   .Lx75_60
.Lx75_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_80
                        cmp              eax, 99
                                                                                        je    .Lx75_80
                        cmp              eax, 13
                                                                                        jne   .Lx75_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx75_80
                                                                                        jmp   .Lx75_74
.Lx75_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx75_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx75_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx75_73
                        lea              r9, [rbp + 512]
.Lx75_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_65
                        cmp              esi, 1
                                                                                        jne   .Lx75_66
                        mov              r9, rax
                                                                                        jmp   .Lx75_64
.Lx75_66:
                        cmp              esi, 2
                                                                                        jne   .Lx75_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_65
                        mov              r9, rax
                                                                                        jmp   .Lx75_64
.Lx75_67:
                        cmp              eax, 13
                                                                                        jne   .Lx75_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_65
                        cmp              rax, r9
                                                                                        je    .Lx75_65
                        mov              r9, rax
                                                                                        jmp   .Lx75_64
.Lx75_65:
                        lea              rcx, [rbp + 528]
.Lx75_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx75_69
                        cmp              esi, 1
                                                                                        jne   .Lx75_70
                        mov              rcx, rax
                                                                                        jmp   .Lx75_68
.Lx75_70:
                        cmp              esi, 2
                                                                                        jne   .Lx75_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_69
                        mov              rcx, rax
                                                                                        jmp   .Lx75_68
.Lx75_71:
                        cmp              eax, 13
                                                                                        jne   .Lx75_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx75_69
                        cmp              rax, rcx
                                                                                        je    .Lx75_69
                        mov              rcx, rax
                                                                                        jmp   .Lx75_68
.Lx75_69:
                        cmp              r9, rcx
                                                                                        je    .Lx75_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_75
                        cmp              eax, 99
                                                                                        je    .Lx75_75
                        cmp              eax, 13
                                                                                        jne   .Lx75_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx75_75
                                                                                        jmp   .Lx75_72
.Lx75_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_76
                        cmp              eax, 99
                                                                                        je    .Lx75_76
                        cmp              eax, 13
                                                                                        jne   .Lx75_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx75_76
                                                                                        jmp   .Lx75_72
.Lx75_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx75_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx75_72
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
                                                                                        jmp   .Lx75_77
.Lx75_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx75_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx75_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx75_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx75_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx75_72
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
                        lea              r9, [rbp + 512]
.Lx75_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_82
                        cmp              esi, 1
                                                                                        jne   .Lx75_83
                        mov              r9, rax
                                                                                        jmp   .Lx75_81
.Lx75_83:
                        cmp              esi, 2
                                                                                        jne   .Lx75_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_82
                        mov              r9, rax
                                                                                        jmp   .Lx75_81
.Lx75_84:
                        cmp              eax, 13
                                                                                        jne   .Lx75_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx75_82
                        cmp              rax, r9
                                                                                        je    .Lx75_82
                        mov              r9, rax
                                                                                        jmp   .Lx75_81
.Lx75_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_85
                        cmp              eax, 99
                                                                                        je    .Lx75_85
                        cmp              eax, 13
                                                                                        jne   .Lx75_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx75_85
                                                                                        jmp   .Lx75_86
.Lx75_85:
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
                                                                                        jmp   .Lx75_87
.Lx75_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx75_87:
                        lea              rcx, [rbp + 528]
.Lx75_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx75_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx75_89
                        cmp              esi, 1
                                                                                        jne   .Lx75_90
                        mov              rcx, rax
                                                                                        jmp   .Lx75_88
.Lx75_90:
                        cmp              esi, 2
                                                                                        jne   .Lx75_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx75_89
                        mov              rcx, rax
                                                                                        jmp   .Lx75_88
.Lx75_91:
                        cmp              eax, 13
                                                                                        jne   .Lx75_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx75_89
                        cmp              rax, rcx
                                                                                        je    .Lx75_89
                        mov              rcx, rax
                                                                                        jmp   .Lx75_88
.Lx75_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx75_92
                        cmp              eax, 99
                                                                                        je    .Lx75_92
                        cmp              eax, 13
                                                                                        jne   .Lx75_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx75_92
                                                                                        jmp   .Lx75_93
.Lx75_92:
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
                                                                                        jmp   .Lx75_94
.Lx75_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx75_94:
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
                                                                                        jmp   .Lx75_77
.Lx75_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx75_77
.Lx75_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx75_77:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_builtin_prolog_α
                                                                                        jmp   n25_var_ref_α
n24_call_builtin_prolog_β:
                                                                                        jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        add              rsp, 16
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n28_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 384]
                        lea              r8, [rbp + 384]
.Lx82_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_61
                        cmp              esi, 1
                                                                                        jne   .Lx82_62
                        mov              r8, rax
                                                                                        jmp   .Lx82_60
.Lx82_62:
                        cmp              esi, 2
                                                                                        jne   .Lx82_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_61
                        mov              r8, rax
                                                                                        jmp   .Lx82_60
.Lx82_63:
                        cmp              eax, 13
                                                                                        jne   .Lx82_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_61
                        cmp              rax, r8
                                                                                        je    .Lx82_61
                        mov              r8, rax
                                                                                        jmp   .Lx82_60
.Lx82_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_80
                        cmp              eax, 99
                                                                                        je    .Lx82_80
                        cmp              eax, 13
                                                                                        jne   .Lx82_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx82_80
                                                                                        jmp   .Lx82_74
.Lx82_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx82_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx82_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx82_73
                        lea              r9, [rbp + 400]
.Lx82_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_65
                        cmp              esi, 1
                                                                                        jne   .Lx82_66
                        mov              r9, rax
                                                                                        jmp   .Lx82_64
.Lx82_66:
                        cmp              esi, 2
                                                                                        jne   .Lx82_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_65
                        mov              r9, rax
                                                                                        jmp   .Lx82_64
.Lx82_67:
                        cmp              eax, 13
                                                                                        jne   .Lx82_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_65
                        cmp              rax, r9
                                                                                        je    .Lx82_65
                        mov              r9, rax
                                                                                        jmp   .Lx82_64
.Lx82_65:
                        lea              rcx, [rbp + 416]
.Lx82_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx82_69
                        cmp              esi, 1
                                                                                        jne   .Lx82_70
                        mov              rcx, rax
                                                                                        jmp   .Lx82_68
.Lx82_70:
                        cmp              esi, 2
                                                                                        jne   .Lx82_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_69
                        mov              rcx, rax
                                                                                        jmp   .Lx82_68
.Lx82_71:
                        cmp              eax, 13
                                                                                        jne   .Lx82_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx82_69
                        cmp              rax, rcx
                                                                                        je    .Lx82_69
                        mov              rcx, rax
                                                                                        jmp   .Lx82_68
.Lx82_69:
                        cmp              r9, rcx
                                                                                        je    .Lx82_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_75
                        cmp              eax, 99
                                                                                        je    .Lx82_75
                        cmp              eax, 13
                                                                                        jne   .Lx82_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx82_75
                                                                                        jmp   .Lx82_72
.Lx82_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_76
                        cmp              eax, 99
                                                                                        je    .Lx82_76
                        cmp              eax, 13
                                                                                        jne   .Lx82_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx82_76
                                                                                        jmp   .Lx82_72
.Lx82_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx82_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx82_72
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
                                                                                        jmp   .Lx82_77
.Lx82_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx82_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx82_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx82_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx82_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx82_72
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
                        lea              r9, [rbp + 400]
.Lx82_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_82
                        cmp              esi, 1
                                                                                        jne   .Lx82_83
                        mov              r9, rax
                                                                                        jmp   .Lx82_81
.Lx82_83:
                        cmp              esi, 2
                                                                                        jne   .Lx82_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_82
                        mov              r9, rax
                                                                                        jmp   .Lx82_81
.Lx82_84:
                        cmp              eax, 13
                                                                                        jne   .Lx82_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_82
                        cmp              rax, r9
                                                                                        je    .Lx82_82
                        mov              r9, rax
                                                                                        jmp   .Lx82_81
.Lx82_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_85
                        cmp              eax, 99
                                                                                        je    .Lx82_85
                        cmp              eax, 13
                                                                                        jne   .Lx82_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx82_85
                                                                                        jmp   .Lx82_86
.Lx82_85:
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
                                                                                        jmp   .Lx82_87
.Lx82_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx82_87:
                        lea              rcx, [rbp + 416]
.Lx82_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx82_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx82_89
                        cmp              esi, 1
                                                                                        jne   .Lx82_90
                        mov              rcx, rax
                                                                                        jmp   .Lx82_88
.Lx82_90:
                        cmp              esi, 2
                                                                                        jne   .Lx82_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_89
                        mov              rcx, rax
                                                                                        jmp   .Lx82_88
.Lx82_91:
                        cmp              eax, 13
                                                                                        jne   .Lx82_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx82_89
                        cmp              rax, rcx
                                                                                        je    .Lx82_89
                        mov              rcx, rax
                                                                                        jmp   .Lx82_88
.Lx82_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_92
                        cmp              eax, 99
                                                                                        je    .Lx82_92
                        cmp              eax, 13
                                                                                        jne   .Lx82_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx82_92
                                                                                        jmp   .Lx82_93
.Lx82_92:
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
                                                                                        jmp   .Lx82_94
.Lx82_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx82_94:
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
                                                                                        jmp   .Lx82_77
.Lx82_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx82_77
.Lx82_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx82_77:
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_builtin_prolog_α
                                                                                        jmp   n29_var_ref_α
n28_call_builtin_prolog_β:
                                                                                        jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        add              rsp, 16
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        add              rsp, 16
                                                                                        jmp   n31_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        lea              r8, [rbp + 288]
.Lx87_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              esi, 1
                                                                                        jne   .Lx87_55
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_55:
                        cmp              esi, 2
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_56:
                        cmp              eax, 13
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              rax, r8
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_41:
                        lea              r9, [rbp + 304]
.Lx87_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              esi, 1
                                                                                        jne   .Lx87_57
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_57:
                        cmp              esi, 2
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_58:
                        cmp              eax, 13
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              rax, r9
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_43:
                        cmp              r8, r9
                                                                                        je    .Lx87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_44
                        cmp              eax, 99
                                                                                        je    .Lx87_44
                        cmp              eax, 13
                                                                                        jne   .Lx87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx87_44
                                                                                        jmp   .Lx87_45
.Lx87_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_53
                        cmp              eax, 99
                                                                                        je    .Lx87_53
                        cmp              eax, 13
                                                                                        jne   .Lx87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_46
.Lx87_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_47
                        cmp              eax, 99
                                                                                        je    .Lx87_47
                        cmp              eax, 13
                                                                                        jne   .Lx87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_47
                                                                                        jmp   .Lx87_48
.Lx87_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx87_49
                        cmp              edx, 14
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_52
.Lx87_49:
                        cmp              edx, 14
                                                                                        je    .Lx87_52
                        cmp              ecx, 7
                                                                                        je    .Lx87_53
                        cmp              edx, 7
                                                                                        je    .Lx87_53
                        cmp              ecx, 6
                                                                                        jne   .Lx87_50
                        cmp              edx, 6
                                                                                        jne   .Lx87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx87_51
                                                                                        jmp   .Lx87_52
.Lx87_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
.Lx87_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx87_54
.Lx87_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx87_54
.Lx87_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx87_54:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_builtin_prolog_α
                                                                                        jmp   n32_var_ref_α
n31_call_builtin_prolog_β:
                                                                                        jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx95_21
.Lx95_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx95_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx95_23
.Lx95_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx95_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx95_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx95_25
.Lx95_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx95_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx95_1
                        lea              rcx, [rip + .Lx95_3]
                        lea              rdx, [rip + .Lx95_4]
                                                                                        jmp   rax
.Lx95_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx95_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx95_2
.Lx95_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx95_2
.Lx95_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx95_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx95_2
.Lx95_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx95_2
.Lx95_1:
                        call             rt_faildescr@PLT
.Lx95_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n37_call_builtin_prolog_α
                                                                                        jmp   n36_suspend_α
n35_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx95_0:
                        .quad            .Lx95_0_s
.Lx95_0_s:
                        .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_sel$2F3_γ
n36_suspend_β:
                                                                                        jmp   n35_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
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
                                                                                        je    proc_sel$2F3_ω
                                                                                        jmp   proc_sel$2F3_ω
n37_call_builtin_prolog_β:
                                                                                        jmp   proc_sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1120]
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_sel$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1240]
                        mov              rbp, [rbp + 1256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_sel$2F3_ω:
                        mov              rax, [rbp + 1248]
                        lea              rsp, [rbp + 1264]
                        mov              rbp, [rbp + 1256]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_queens$2F3_α
proc_queens$2F3_α:
                        .global          proc_queens$2F3_α
                        .global          proc_queens$2F3_β
                        .global          proc_queens$2F3_γ
                        .global          proc_queens$2F3_ω
                        sub              rsp, 1424
                        mov              [rsp + 1400], rcx
                        mov              [rsp + 1408], rdx
                        mov              [rsp + 1416], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
proc_queens$2F3_α_body:
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
#-----------------------------------------------------------------------------------------------------------------------
n99_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx140_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx140_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx140_101
.Lx140_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx140_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_queens$2F3_ω
                                                                                        jmp   n100_var_ref_α
n99_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        add              rsp, 16
                                                                                        jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n102_lit_string_α
.Lx143_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:
                        mov              qword ptr [rbp + 1264], 1
                        mov              dword ptr [rbp + 1268], 2
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n103_call_builtin_prolog_α
.Lx144_0:
                        .quad            .Lx144_0_s
.Lx144_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1184]
                        lea              r8, [rbp + 1184]
.Lx145_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx145_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_111
                        cmp              esi, 1
                                                                                        jne   .Lx145_112
                        mov              r8, rax
                                                                                        jmp   .Lx145_110
.Lx145_112:
                        cmp              esi, 2
                                                                                        jne   .Lx145_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx145_111
                        mov              r8, rax
                                                                                        jmp   .Lx145_110
.Lx145_113:
                        cmp              eax, 13
                                                                                        jne   .Lx145_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx145_111
                        cmp              rax, r8
                                                                                        je    .Lx145_111
                        mov              r8, rax
                                                                                        jmp   .Lx145_110
.Lx145_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx145_114
                        cmp              eax, 99
                                                                                        je    .Lx145_114
                        cmp              eax, 13
                                                                                        jne   .Lx145_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx145_114
                                                                                        jmp   .Lx145_118
.Lx145_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx145_115
                        cmp              eax, 6
                                                                                        je    .Lx145_114
                        cmp              eax, 1
                                                                                        jne   .Lx145_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx145_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx145_114
                                                                                        jmp   .Lx145_116
.Lx145_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx145_117
.Lx145_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx145_117
.Lx145_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx145_117:
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 99
                                                                                        je    n115_var_ref_α
                                                                                        jmp   n104_var_ref_α
n103_call_builtin_prolog_β:
                                                                                        jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        add              rsp, 16
                                                                                        jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:
                        mov              qword ptr [rbp + 1152], 1
                        mov              dword ptr [rbp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n106_call_builtin_prolog_α
.Lx148_0:
                        .quad            .Lx148_0_s
.Lx148_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              rsi, qword ptr [rip + .Lx149_2]
                                                                                        jmp   .Lx149_3
.Lx149_2:
                        .quad            .Lx149_2_s
.Lx149_2_s:
                        .string          "[]"
.Lx149_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n114_call_builtin_prolog_α
                                                                                        jmp   n107_var_ref_α
n106_call_builtin_prolog_β:
                                                                                        jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        add              rsp, 16
                                                                                        jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n109_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1024]
                        lea              r8, [rbp + 1024]
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
                        lea              r9, [rbp + 1040]
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
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              eax, 99
                                                                                        je    n114_call_builtin_prolog_α
                                                                                        jmp   n110_var_ref_α
n109_call_builtin_prolog_β:
                                                                                        jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        add              rsp, 16
                                                                                        jmp   n111_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        add              rsp, 16
                                                                                        jmp   n112_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
.Lx159_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_41
                        cmp              esi, 1
                                                                                        jne   .Lx159_55
                        mov              r8, rax
                                                                                        jmp   .Lx159_40
.Lx159_55:
                        cmp              esi, 2
                                                                                        jne   .Lx159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx159_41
                        mov              r8, rax
                                                                                        jmp   .Lx159_40
.Lx159_56:
                        cmp              eax, 13
                                                                                        jne   .Lx159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_41
                        cmp              rax, r8
                                                                                        je    .Lx159_41
                        mov              r8, rax
                                                                                        jmp   .Lx159_40
.Lx159_41:
                        lea              r9, [rbp + 960]
.Lx159_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_43
                        cmp              esi, 1
                                                                                        jne   .Lx159_57
                        mov              r9, rax
                                                                                        jmp   .Lx159_42
.Lx159_57:
                        cmp              esi, 2
                                                                                        jne   .Lx159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx159_43
                        mov              r9, rax
                                                                                        jmp   .Lx159_42
.Lx159_58:
                        cmp              eax, 13
                                                                                        jne   .Lx159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_43
                        cmp              rax, r9
                                                                                        je    .Lx159_43
                        mov              r9, rax
                                                                                        jmp   .Lx159_42
.Lx159_43:
                        cmp              r8, r9
                                                                                        je    .Lx159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_44
                        cmp              eax, 99
                                                                                        je    .Lx159_44
                        cmp              eax, 13
                                                                                        jne   .Lx159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx159_44
                                                                                        jmp   .Lx159_45
.Lx159_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_53
                        cmp              eax, 99
                                                                                        je    .Lx159_53
                        cmp              eax, 13
                                                                                        jne   .Lx159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx159_53
                                                                                        jmp   .Lx159_46
.Lx159_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx159_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx159_53
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
                                                                                        jmp   .Lx159_51
.Lx159_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_47
                        cmp              eax, 99
                                                                                        je    .Lx159_47
                        cmp              eax, 13
                                                                                        jne   .Lx159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx159_47
                                                                                        jmp   .Lx159_48
.Lx159_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx159_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx159_53
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
                                                                                        jmp   .Lx159_51
.Lx159_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx159_49
                        cmp              edx, 14
                                                                                        je    .Lx159_53
                                                                                        jmp   .Lx159_52
.Lx159_49:
                        cmp              edx, 14
                                                                                        je    .Lx159_52
                        cmp              ecx, 7
                                                                                        je    .Lx159_53
                        cmp              edx, 7
                                                                                        je    .Lx159_53
                        cmp              ecx, 6
                                                                                        jne   .Lx159_50
                        cmp              edx, 6
                                                                                        jne   .Lx159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx159_51
                                                                                        jmp   .Lx159_52
.Lx159_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx159_53
.Lx159_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx159_54
.Lx159_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx159_54
.Lx159_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx159_54:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n114_call_builtin_prolog_α
                                                                                        jmp   n113_suspend_α
n112_call_builtin_prolog_β:
                                                                                        jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_suspend_α:
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_queens$2F3_γ
n113_suspend_β:
                                                                                        jmp   n114_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    proc_queens$2F3_ω
                                                                                        jmp   n115_var_ref_α
n114_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        add              rsp, 16
                                                                                        jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        add              rsp, 16
                                                                                        jmp   n117_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_builtin_prolog_α:
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
.Lx167_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx167_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx167_41
                        cmp              esi, 1
                                                                                        jne   .Lx167_55
                        mov              r8, rax
                                                                                        jmp   .Lx167_40
.Lx167_55:
                        cmp              esi, 2
                                                                                        jne   .Lx167_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx167_41
                        mov              r8, rax
                                                                                        jmp   .Lx167_40
.Lx167_56:
                        cmp              eax, 13
                                                                                        jne   .Lx167_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx167_41
                        cmp              rax, r8
                                                                                        je    .Lx167_41
                        mov              r8, rax
                                                                                        jmp   .Lx167_40
.Lx167_41:
                        lea              r9, [rbp + 832]
.Lx167_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx167_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx167_43
                        cmp              esi, 1
                                                                                        jne   .Lx167_57
                        mov              r9, rax
                                                                                        jmp   .Lx167_42
.Lx167_57:
                        cmp              esi, 2
                                                                                        jne   .Lx167_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx167_43
                        mov              r9, rax
                                                                                        jmp   .Lx167_42
.Lx167_58:
                        cmp              eax, 13
                                                                                        jne   .Lx167_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx167_43
                        cmp              rax, r9
                                                                                        je    .Lx167_43
                        mov              r9, rax
                                                                                        jmp   .Lx167_42
.Lx167_43:
                        cmp              r8, r9
                                                                                        je    .Lx167_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx167_44
                        cmp              eax, 99
                                                                                        je    .Lx167_44
                        cmp              eax, 13
                                                                                        jne   .Lx167_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx167_44
                                                                                        jmp   .Lx167_45
.Lx167_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx167_53
                        cmp              eax, 99
                                                                                        je    .Lx167_53
                        cmp              eax, 13
                                                                                        jne   .Lx167_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx167_53
                                                                                        jmp   .Lx167_46
.Lx167_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx167_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx167_53
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
                                                                                        jmp   .Lx167_51
.Lx167_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx167_47
                        cmp              eax, 99
                                                                                        je    .Lx167_47
                        cmp              eax, 13
                                                                                        jne   .Lx167_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx167_47
                                                                                        jmp   .Lx167_48
.Lx167_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx167_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx167_53
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
                                                                                        jmp   .Lx167_51
.Lx167_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx167_49
                        cmp              edx, 14
                                                                                        je    .Lx167_53
                                                                                        jmp   .Lx167_52
.Lx167_49:
                        cmp              edx, 14
                                                                                        je    .Lx167_52
                        cmp              ecx, 7
                                                                                        je    .Lx167_53
                        cmp              edx, 7
                                                                                        je    .Lx167_53
                        cmp              ecx, 6
                                                                                        jne   .Lx167_50
                        cmp              edx, 6
                                                                                        jne   .Lx167_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx167_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx167_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx167_51
                                                                                        jmp   .Lx167_52
.Lx167_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx167_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx167_53
.Lx167_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx167_54
.Lx167_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx167_54
.Lx167_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx167_54:
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n118_var_ref_α
n117_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        add              rsp, 16
                                                                                        jmp   n119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n120_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx172_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx172_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx172_41
                        cmp              esi, 1
                                                                                        jne   .Lx172_55
                        mov              r8, rax
                                                                                        jmp   .Lx172_40
.Lx172_55:
                        cmp              esi, 2
                                                                                        jne   .Lx172_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx172_41
                        mov              r8, rax
                                                                                        jmp   .Lx172_40
.Lx172_56:
                        cmp              eax, 13
                                                                                        jne   .Lx172_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx172_41
                        cmp              rax, r8
                                                                                        je    .Lx172_41
                        mov              r8, rax
                                                                                        jmp   .Lx172_40
.Lx172_41:
                        lea              r9, [rbp + 752]
.Lx172_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx172_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx172_43
                        cmp              esi, 1
                                                                                        jne   .Lx172_57
                        mov              r9, rax
                                                                                        jmp   .Lx172_42
.Lx172_57:
                        cmp              esi, 2
                                                                                        jne   .Lx172_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx172_43
                        mov              r9, rax
                                                                                        jmp   .Lx172_42
.Lx172_58:
                        cmp              eax, 13
                                                                                        jne   .Lx172_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx172_43
                        cmp              rax, r9
                                                                                        je    .Lx172_43
                        mov              r9, rax
                                                                                        jmp   .Lx172_42
.Lx172_43:
                        cmp              r8, r9
                                                                                        je    .Lx172_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx172_44
                        cmp              eax, 99
                                                                                        je    .Lx172_44
                        cmp              eax, 13
                                                                                        jne   .Lx172_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx172_44
                                                                                        jmp   .Lx172_45
.Lx172_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx172_53
                        cmp              eax, 99
                                                                                        je    .Lx172_53
                        cmp              eax, 13
                                                                                        jne   .Lx172_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx172_53
                                                                                        jmp   .Lx172_46
.Lx172_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx172_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx172_53
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
                                                                                        jmp   .Lx172_51
.Lx172_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx172_47
                        cmp              eax, 99
                                                                                        je    .Lx172_47
                        cmp              eax, 13
                                                                                        jne   .Lx172_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx172_47
                                                                                        jmp   .Lx172_48
.Lx172_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx172_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx172_53
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
                                                                                        jmp   .Lx172_51
.Lx172_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx172_49
                        cmp              edx, 14
                                                                                        je    .Lx172_53
                                                                                        jmp   .Lx172_52
.Lx172_49:
                        cmp              edx, 14
                                                                                        je    .Lx172_52
                        cmp              ecx, 7
                                                                                        je    .Lx172_53
                        cmp              edx, 7
                                                                                        je    .Lx172_53
                        cmp              ecx, 6
                                                                                        jne   .Lx172_50
                        cmp              edx, 6
                                                                                        jne   .Lx172_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx172_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx172_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx172_51
                                                                                        jmp   .Lx172_52
.Lx172_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx172_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx172_53
.Lx172_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx172_54
.Lx172_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx172_54
.Lx172_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx172_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n121_var_ref_α
n120_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        add              rsp, 16
                                                                                        jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        add              rsp, 16
                                                                                        jmp   n123_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 672]
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
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n124_var_ref_α
n123_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        add              rsp, 16
                                                                                        jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        add              rsp, 16
                                                                                        jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              qword ptr [rbp + 560], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_20
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx185_21
.Lx185_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        call             rt_arg_stage@PLT
.Lx185_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_22
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx185_23
.Lx185_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        call             rt_arg_stage@PLT
.Lx185_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx185_24
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx185_25
.Lx185_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx185_25:
                        mov              edi, 0
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx185_1
                        lea              rcx, [rip + .Lx185_3]
                        lea              rdx, [rip + .Lx185_4]
                                                                                        jmp   rax
.Lx185_3:
                        mov              qword ptr [rbp + 568], rsp
                        mov              rax, qword ptr [rbp + 560]
                        test             rax, rax
                                                                                        jne   .Lx185_5
                        mov              qword ptr [rbp + 560], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx185_2
.Lx185_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx185_2
.Lx185_4:
                        mov              rax, qword ptr [rbp + 560]
                        test             rax, rax
                                                                                        jne   .Lx185_6
                        mov              qword ptr [rbp + 560], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx185_2
.Lx185_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx185_2
.Lx185_1:
                        call             rt_faildescr@PLT
.Lx185_2:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n128_var_ref_α
n127_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 568]
                                                                                        jmp   qword ptr [rsp]
.Lx185_0:
                        .quad            .Lx185_0_s
.Lx185_0_s:
                        .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        add              rsp, 16
                                                                                        jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        add              rsp, 16
                                                                                        jmp   n130_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx191_21
.Lx191_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx191_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx191_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx191_23
.Lx191_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx191_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx191_1
                        lea              rcx, [rip + .Lx191_3]
                        lea              rdx, [rip + .Lx191_4]
                                                                                        jmp   rax
.Lx191_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx191_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx191_2
.Lx191_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx191_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx191_2
.Lx191_1:
                        call             rt_faildescr@PLT
.Lx191_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n127_call_proc_staged_β
                                                                                        jmp   n131_var_ref_α
n130_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx191_0:
                        .quad            .Lx191_0_s
.Lx191_0_s:
                        .string          "not_attack/2"
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:
                        mov              qword ptr [rbp + 352], 1
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rbp + 360], rax
                                                                                        jmp   n133_var_ref_α
.Lx194_0:
                        .quad            .Lx194_0_s
.Lx194_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1312]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n135_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_builtin_prolog_α:
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
                                                                                        je    n139_call_builtin_prolog_α
                                                                                        jmp   n136_var_ref_α
n135_call_builtin_prolog_β:
                                                                                        jmp   n139_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n137_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx203_21
.Lx203_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx203_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx203_23
.Lx203_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx203_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx203_24
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx203_25
.Lx203_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx203_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx203_1
                        lea              rcx, [rip + .Lx203_3]
                        lea              rdx, [rip + .Lx203_4]
                                                                                        jmp   rax
.Lx203_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx203_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx203_2
.Lx203_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx203_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx203_2
.Lx203_1:
                        call             rt_faildescr@PLT
.Lx203_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n130_call_proc_staged_β
                                                                                        jmp   n138_suspend_α
n137_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx203_0:
                        .quad            .Lx203_0_s
.Lx203_0_s:
                        .string          "queens/3"
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_queens$2F3_γ
n138_suspend_β:
                                                                                        jmp   n137_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n139_call_builtin_prolog_α:
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
                                                                                        je    proc_queens$2F3_ω
                                                                                        jmp   proc_queens$2F3_ω
n139_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1280]
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_queens$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1400]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F3_ω:
                        mov              rax, [rbp + 1408]
                        lea              rsp, [rbp + 1424]
                        mov              rbp, [rbp + 1416]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_queens$2F2_α
proc_queens$2F2_α:
                        .global          proc_queens$2F2_α
                        .global          proc_queens$2F2_β
                        .global          proc_queens$2F2_γ
                        .global          proc_queens$2F2_ω
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
proc_queens$2F2_α_body:
                        lea              rax, [rip + n222_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx224_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx224_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx224_101
.Lx224_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx224_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_queens$2F2_ω
                                                                                        jmp   n208_var_ref_α
n207_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        add              rsp, 16
                                                                                        jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n210_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_builtin_prolog_α:
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
.Lx229_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx229_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        cmp              esi, 1
                                                                                        jne   .Lx229_55
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_55:
                        cmp              esi, 2
                                                                                        jne   .Lx229_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_56:
                        cmp              eax, 13
                                                                                        jne   .Lx229_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_41
                        cmp              rax, r8
                                                                                        je    .Lx229_41
                        mov              r8, rax
                                                                                        jmp   .Lx229_40
.Lx229_41:
                        lea              r9, [rbp + 496]
.Lx229_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx229_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        cmp              esi, 1
                                                                                        jne   .Lx229_57
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_57:
                        cmp              esi, 2
                                                                                        jne   .Lx229_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_58:
                        cmp              eax, 13
                                                                                        jne   .Lx229_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx229_43
                        cmp              rax, r9
                                                                                        je    .Lx229_43
                        mov              r9, rax
                                                                                        jmp   .Lx229_42
.Lx229_43:
                        cmp              r8, r9
                                                                                        je    .Lx229_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_44
                        cmp              eax, 99
                                                                                        je    .Lx229_44
                        cmp              eax, 13
                                                                                        jne   .Lx229_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx229_44
                                                                                        jmp   .Lx229_45
.Lx229_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_53
                        cmp              eax, 99
                                                                                        je    .Lx229_53
                        cmp              eax, 13
                                                                                        jne   .Lx229_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx229_53
                                                                                        jmp   .Lx229_46
.Lx229_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx229_53
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
                                                                                        jmp   .Lx229_51
.Lx229_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx229_47
                        cmp              eax, 99
                                                                                        je    .Lx229_47
                        cmp              eax, 13
                                                                                        jne   .Lx229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx229_47
                                                                                        jmp   .Lx229_48
.Lx229_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx229_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx229_53
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
                                                                                        jmp   .Lx229_51
.Lx229_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx229_49
                        cmp              edx, 14
                                                                                        je    .Lx229_53
                                                                                        jmp   .Lx229_52
.Lx229_49:
                        cmp              edx, 14
                                                                                        je    .Lx229_52
                        cmp              ecx, 7
                                                                                        je    .Lx229_53
                        cmp              edx, 7
                                                                                        je    .Lx229_53
                        cmp              ecx, 6
                                                                                        jne   .Lx229_50
                        cmp              edx, 6
                                                                                        jne   .Lx229_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx229_51
                                                                                        jmp   .Lx229_52
.Lx229_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx229_53
.Lx229_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx229_54
.Lx229_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx229_54
.Lx229_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx229_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_builtin_prolog_α
                                                                                        jmp   n211_var_ref_α
n210_call_builtin_prolog_β:
                                                                                        jmp   n223_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        add              rsp, 16
                                                                                        jmp   n212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n213_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_builtin_prolog_α:
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
.Lx234_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx234_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        cmp              esi, 1
                                                                                        jne   .Lx234_55
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_55:
                        cmp              esi, 2
                                                                                        jne   .Lx234_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_56:
                        cmp              eax, 13
                                                                                        jne   .Lx234_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_41
                        cmp              rax, r8
                                                                                        je    .Lx234_41
                        mov              r8, rax
                                                                                        jmp   .Lx234_40
.Lx234_41:
                        lea              r9, [rbp + 416]
.Lx234_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx234_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        cmp              esi, 1
                                                                                        jne   .Lx234_57
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_57:
                        cmp              esi, 2
                                                                                        jne   .Lx234_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_58:
                        cmp              eax, 13
                                                                                        jne   .Lx234_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx234_43
                        cmp              rax, r9
                                                                                        je    .Lx234_43
                        mov              r9, rax
                                                                                        jmp   .Lx234_42
.Lx234_43:
                        cmp              r8, r9
                                                                                        je    .Lx234_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_44
                        cmp              eax, 99
                                                                                        je    .Lx234_44
                        cmp              eax, 13
                                                                                        jne   .Lx234_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx234_44
                                                                                        jmp   .Lx234_45
.Lx234_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_53
                        cmp              eax, 99
                                                                                        je    .Lx234_53
                        cmp              eax, 13
                                                                                        jne   .Lx234_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx234_53
                                                                                        jmp   .Lx234_46
.Lx234_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx234_53
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
                                                                                        jmp   .Lx234_51
.Lx234_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx234_47
                        cmp              eax, 99
                                                                                        je    .Lx234_47
                        cmp              eax, 13
                                                                                        jne   .Lx234_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx234_47
                                                                                        jmp   .Lx234_48
.Lx234_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx234_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx234_53
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
                                                                                        jmp   .Lx234_51
.Lx234_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx234_49
                        cmp              edx, 14
                                                                                        je    .Lx234_53
                                                                                        jmp   .Lx234_52
.Lx234_49:
                        cmp              edx, 14
                                                                                        je    .Lx234_52
                        cmp              ecx, 7
                                                                                        je    .Lx234_53
                        cmp              edx, 7
                                                                                        je    .Lx234_53
                        cmp              ecx, 6
                                                                                        jne   .Lx234_50
                        cmp              edx, 6
                                                                                        jne   .Lx234_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx234_51
                                                                                        jmp   .Lx234_52
.Lx234_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx234_53
.Lx234_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx234_54
.Lx234_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx234_54
.Lx234_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx234_54:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_builtin_prolog_α
                                                                                        jmp   n214_lit_integer_α
n213_call_builtin_prolog_β:
                                                                                        jmp   n223_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:
                        mov              qword ptr [rbp + 336], 6
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n215_var_ref_α
.Lx235_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n217_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        lea              rsi, [rbp + 336]
                        lea              rdx, [rbp + 352]
                        lea              rcx, [rbp + 368]
                        call             proc_range$2F3_dcα
                                                                                        jmp   .Lx241_2
.Lx241_2:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n223_call_builtin_prolog_α
                                                                                        jmp   n218_var_ref_α
n217_call_proc_staged_β:
                                                                                        jmp   n223_call_builtin_prolog_α
.Lx241_0:
                        .quad            .Lx241_0_s
.Lx241_0_s:
                        .string          "range/3"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n220_var_ref_α
.Lx244_0:
                        .quad            .Lx244_0_s
.Lx244_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n221_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx248_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx248_21
.Lx248_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx248_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx248_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx248_23
.Lx248_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx248_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx248_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx248_25
.Lx248_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx248_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx248_1
                        lea              rcx, [rip + .Lx248_3]
                        lea              rdx, [rip + .Lx248_4]
                                                                                        jmp   rax
.Lx248_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx248_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx248_2
.Lx248_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx248_2
.Lx248_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx248_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx248_2
.Lx248_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx248_2
.Lx248_1:
                        call             rt_faildescr@PLT
.Lx248_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n217_call_proc_staged_β
                                                                                        jmp   n222_suspend_α
n221_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx248_0:
                        .quad            .Lx248_0_s
.Lx248_0_s:
                        .string          "queens/3"
#-----------------------------------------------------------------------------------------------------------------------
n222_suspend_α:
                        lea              rax, [rip + n222_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_queens$2F2_γ
n222_suspend_β:
                                                                                        jmp   n221_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n223_call_builtin_prolog_α:
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
                                                                                        je    proc_queens$2F2_ω
                                                                                        jmp   proc_queens$2F2_ω
n223_call_builtin_prolog_β:
                                                                                        jmp   proc_queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_queens$2F2_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_queens$2F2_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_range$2F3_α
proc_range$2F3_α:
                        .global          proc_range$2F3_α
                        .global          proc_range$2F3_β
                        .global          proc_range$2F3_γ
                        .global          proc_range$2F3_ω
                        sub              rsp, 1296
                        mov              [rsp + 1272], rcx
                        mov              [rsp + 1280], rdx
                        mov              [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1184
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
proc_range$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx293_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx293_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx293_101
.Lx293_100:
                        lea              rdi, [rbp + 112]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx293_101:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_range$2F3_ω
                                                                                        jmp   n253_var_ref_α
n252_call_builtin_prolog_β:
                                                                                        jmp   proc_range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n255_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lx298_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx298_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        cmp              esi, 1
                                                                                        jne   .Lx298_55
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_55:
                        cmp              esi, 2
                                                                                        jne   .Lx298_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_56:
                        cmp              eax, 13
                                                                                        jne   .Lx298_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_41
                        cmp              rax, r8
                                                                                        je    .Lx298_41
                        mov              r8, rax
                                                                                        jmp   .Lx298_40
.Lx298_41:
                        lea              r9, [rbp + 1136]
.Lx298_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx298_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        cmp              esi, 1
                                                                                        jne   .Lx298_57
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_57:
                        cmp              esi, 2
                                                                                        jne   .Lx298_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_58:
                        cmp              eax, 13
                                                                                        jne   .Lx298_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx298_43
                        cmp              rax, r9
                                                                                        je    .Lx298_43
                        mov              r9, rax
                                                                                        jmp   .Lx298_42
.Lx298_43:
                        cmp              r8, r9
                                                                                        je    .Lx298_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_44
                        cmp              eax, 99
                                                                                        je    .Lx298_44
                        cmp              eax, 13
                                                                                        jne   .Lx298_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx298_44
                                                                                        jmp   .Lx298_45
.Lx298_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_53
                        cmp              eax, 99
                                                                                        je    .Lx298_53
                        cmp              eax, 13
                                                                                        jne   .Lx298_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx298_53
                                                                                        jmp   .Lx298_46
.Lx298_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx298_53
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
                                                                                        jmp   .Lx298_51
.Lx298_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx298_47
                        cmp              eax, 99
                                                                                        je    .Lx298_47
                        cmp              eax, 13
                                                                                        jne   .Lx298_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx298_47
                                                                                        jmp   .Lx298_48
.Lx298_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx298_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx298_53
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
                                                                                        jmp   .Lx298_51
.Lx298_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx298_49
                        cmp              edx, 14
                                                                                        je    .Lx298_53
                                                                                        jmp   .Lx298_52
.Lx298_49:
                        cmp              edx, 14
                                                                                        je    .Lx298_52
                        cmp              ecx, 7
                                                                                        je    .Lx298_53
                        cmp              edx, 7
                                                                                        je    .Lx298_53
                        cmp              ecx, 6
                                                                                        jne   .Lx298_50
                        cmp              edx, 6
                                                                                        jne   .Lx298_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx298_51
                                                                                        jmp   .Lx298_52
.Lx298_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx298_53
.Lx298_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx298_54
.Lx298_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx298_54
.Lx298_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx298_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n267_call_builtin_prolog_α
                                                                                        jmp   n256_var_ref_α
n255_call_builtin_prolog_β:
                                                                                        jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n258_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
.Lx303_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx303_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx303_41
                        cmp              esi, 1
                                                                                        jne   .Lx303_55
                        mov              r8, rax
                                                                                        jmp   .Lx303_40
.Lx303_55:
                        cmp              esi, 2
                                                                                        jne   .Lx303_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx303_41
                        mov              r8, rax
                                                                                        jmp   .Lx303_40
.Lx303_56:
                        cmp              eax, 13
                                                                                        jne   .Lx303_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx303_41
                        cmp              rax, r8
                                                                                        je    .Lx303_41
                        mov              r8, rax
                                                                                        jmp   .Lx303_40
.Lx303_41:
                        lea              r9, [rbp + 1056]
.Lx303_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx303_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx303_43
                        cmp              esi, 1
                                                                                        jne   .Lx303_57
                        mov              r9, rax
                                                                                        jmp   .Lx303_42
.Lx303_57:
                        cmp              esi, 2
                                                                                        jne   .Lx303_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx303_43
                        mov              r9, rax
                                                                                        jmp   .Lx303_42
.Lx303_58:
                        cmp              eax, 13
                                                                                        jne   .Lx303_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx303_43
                        cmp              rax, r9
                                                                                        je    .Lx303_43
                        mov              r9, rax
                                                                                        jmp   .Lx303_42
.Lx303_43:
                        cmp              r8, r9
                                                                                        je    .Lx303_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx303_44
                        cmp              eax, 99
                                                                                        je    .Lx303_44
                        cmp              eax, 13
                                                                                        jne   .Lx303_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx303_44
                                                                                        jmp   .Lx303_45
.Lx303_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx303_53
                        cmp              eax, 99
                                                                                        je    .Lx303_53
                        cmp              eax, 13
                                                                                        jne   .Lx303_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx303_53
                                                                                        jmp   .Lx303_46
.Lx303_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx303_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx303_53
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
                                                                                        jmp   .Lx303_51
.Lx303_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx303_47
                        cmp              eax, 99
                                                                                        je    .Lx303_47
                        cmp              eax, 13
                                                                                        jne   .Lx303_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx303_47
                                                                                        jmp   .Lx303_48
.Lx303_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx303_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx303_53
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
                                                                                        jmp   .Lx303_51
.Lx303_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx303_49
                        cmp              edx, 14
                                                                                        je    .Lx303_53
                                                                                        jmp   .Lx303_52
.Lx303_49:
                        cmp              edx, 14
                                                                                        je    .Lx303_52
                        cmp              ecx, 7
                                                                                        je    .Lx303_53
                        cmp              edx, 7
                                                                                        je    .Lx303_53
                        cmp              ecx, 6
                                                                                        jne   .Lx303_50
                        cmp              edx, 6
                                                                                        jne   .Lx303_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx303_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx303_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx303_51
                                                                                        jmp   .Lx303_52
.Lx303_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx303_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx303_53
.Lx303_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx303_54
.Lx303_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx303_54
.Lx303_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx303_54:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n267_call_builtin_prolog_α
                                                                                        jmp   n259_var_ref_α
n258_call_builtin_prolog_β:
                                                                                        jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:
                        mov              qword ptr [rbp + 1008], 1
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rbp + 1016], rax
                                                                                        jmp   n261_var_ref_α
.Lx306_0:
                        .quad            .Lx306_0_s
.Lx306_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:
                        mov              qword ptr [rbp + 896], 1
                        mov              dword ptr [rbp + 900], 2
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n263_call_builtin_prolog_α
.Lx309_0:
                        .quad            .Lx309_0_s
.Lx309_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n267_call_builtin_prolog_α
                                                                                        jmp   n264_call_builtin_prolog_α
n263_call_builtin_prolog_β:
                                                                                        jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 848]
                        lea              r8, [rbp + 848]
.Lx311_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_41
                        cmp              esi, 1
                                                                                        jne   .Lx311_55
                        mov              r8, rax
                                                                                        jmp   .Lx311_40
.Lx311_55:
                        cmp              esi, 2
                                                                                        jne   .Lx311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx311_41
                        mov              r8, rax
                                                                                        jmp   .Lx311_40
.Lx311_56:
                        cmp              eax, 13
                                                                                        jne   .Lx311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_41
                        cmp              rax, r8
                                                                                        je    .Lx311_41
                        mov              r8, rax
                                                                                        jmp   .Lx311_40
.Lx311_41:
                        lea              r9, [rbp + 864]
.Lx311_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_43
                        cmp              esi, 1
                                                                                        jne   .Lx311_57
                        mov              r9, rax
                                                                                        jmp   .Lx311_42
.Lx311_57:
                        cmp              esi, 2
                                                                                        jne   .Lx311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx311_43
                        mov              r9, rax
                                                                                        jmp   .Lx311_42
.Lx311_58:
                        cmp              eax, 13
                                                                                        jne   .Lx311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx311_43
                        cmp              rax, r9
                                                                                        je    .Lx311_43
                        mov              r9, rax
                                                                                        jmp   .Lx311_42
.Lx311_43:
                        cmp              r8, r9
                                                                                        je    .Lx311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx311_44
                        cmp              eax, 99
                                                                                        je    .Lx311_44
                        cmp              eax, 13
                                                                                        jne   .Lx311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx311_44
                                                                                        jmp   .Lx311_45
.Lx311_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx311_53
                        cmp              eax, 99
                                                                                        je    .Lx311_53
                        cmp              eax, 13
                                                                                        jne   .Lx311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx311_53
                                                                                        jmp   .Lx311_46
.Lx311_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx311_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx311_53
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
                                                                                        jmp   .Lx311_51
.Lx311_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx311_47
                        cmp              eax, 99
                                                                                        je    .Lx311_47
                        cmp              eax, 13
                                                                                        jne   .Lx311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx311_47
                                                                                        jmp   .Lx311_48
.Lx311_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx311_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx311_53
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
                                                                                        jmp   .Lx311_51
.Lx311_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx311_49
                        cmp              edx, 14
                                                                                        je    .Lx311_53
                                                                                        jmp   .Lx311_52
.Lx311_49:
                        cmp              edx, 14
                                                                                        je    .Lx311_52
                        cmp              ecx, 7
                                                                                        je    .Lx311_53
                        cmp              edx, 7
                                                                                        je    .Lx311_53
                        cmp              ecx, 6
                                                                                        jne   .Lx311_50
                        cmp              edx, 6
                                                                                        jne   .Lx311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx311_51
                                                                                        jmp   .Lx311_52
.Lx311_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx311_53
.Lx311_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx311_54
.Lx311_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx311_54
.Lx311_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx311_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n267_call_builtin_prolog_α
                                                                                        jmp   n265_cut_α
n264_call_builtin_prolog_β:
                                                                                        jmp   n267_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_cut_α:
                                                                                        jmp   n266_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n266_move_label_α:
                        lea              rax, [rip + n267_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_range$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n267_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              eax, 99
                                                                                        je    proc_range$2F3_ω
                                                                                        jmp   n268_var_ref_α
n267_call_builtin_prolog_β:
                                                                                        jmp   proc_range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        add              rsp, 16
                                                                                        jmp   n269_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n270_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        lea              r8, [rbp + 736]
.Lx320_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              esi, 1
                                                                                        jne   .Lx320_55
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_55:
                        cmp              esi, 2
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_56:
                        cmp              eax, 13
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              rax, r8
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_41:
                        lea              r9, [rbp + 752]
.Lx320_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              esi, 1
                                                                                        jne   .Lx320_57
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_57:
                        cmp              esi, 2
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_58:
                        cmp              eax, 13
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              rax, r9
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_43:
                        cmp              r8, r9
                                                                                        je    .Lx320_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_44
                        cmp              eax, 99
                                                                                        je    .Lx320_44
                        cmp              eax, 13
                                                                                        jne   .Lx320_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx320_44
                                                                                        jmp   .Lx320_45
.Lx320_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_53
                        cmp              eax, 99
                                                                                        je    .Lx320_53
                        cmp              eax, 13
                                                                                        jne   .Lx320_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_46
.Lx320_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
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
                                                                                        jmp   .Lx320_51
.Lx320_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_47
                        cmp              eax, 99
                                                                                        je    .Lx320_47
                        cmp              eax, 13
                                                                                        jne   .Lx320_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_47
                                                                                        jmp   .Lx320_48
.Lx320_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
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
                                                                                        jmp   .Lx320_51
.Lx320_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx320_49
                        cmp              edx, 14
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_52
.Lx320_49:
                        cmp              edx, 14
                                                                                        je    .Lx320_52
                        cmp              ecx, 7
                                                                                        je    .Lx320_53
                        cmp              edx, 7
                                                                                        je    .Lx320_53
                        cmp              ecx, 6
                                                                                        jne   .Lx320_50
                        cmp              edx, 6
                                                                                        jne   .Lx320_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx320_51
                                                                                        jmp   .Lx320_52
.Lx320_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
.Lx320_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx320_54
.Lx320_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx320_54
.Lx320_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx320_54:
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n271_var_ref_α
n270_call_builtin_prolog_β:
                                                                                        jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        add              rsp, 16
                                                                                        jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        add              rsp, 16
                                                                                        jmp   n273_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_builtin_prolog_α:
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
.Lx325_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx325_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        cmp              esi, 1
                                                                                        jne   .Lx325_55
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_55:
                        cmp              esi, 2
                                                                                        jne   .Lx325_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_56:
                        cmp              eax, 13
                                                                                        jne   .Lx325_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_41
                        cmp              rax, r8
                                                                                        je    .Lx325_41
                        mov              r8, rax
                                                                                        jmp   .Lx325_40
.Lx325_41:
                        lea              r9, [rbp + 672]
.Lx325_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx325_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        cmp              esi, 1
                                                                                        jne   .Lx325_57
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_57:
                        cmp              esi, 2
                                                                                        jne   .Lx325_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_58:
                        cmp              eax, 13
                                                                                        jne   .Lx325_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx325_43
                        cmp              rax, r9
                                                                                        je    .Lx325_43
                        mov              r9, rax
                                                                                        jmp   .Lx325_42
.Lx325_43:
                        cmp              r8, r9
                                                                                        je    .Lx325_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_44
                        cmp              eax, 99
                                                                                        je    .Lx325_44
                        cmp              eax, 13
                                                                                        jne   .Lx325_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx325_44
                                                                                        jmp   .Lx325_45
.Lx325_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_53
                        cmp              eax, 99
                                                                                        je    .Lx325_53
                        cmp              eax, 13
                                                                                        jne   .Lx325_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx325_53
                                                                                        jmp   .Lx325_46
.Lx325_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx325_53
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
                                                                                        jmp   .Lx325_51
.Lx325_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx325_47
                        cmp              eax, 99
                                                                                        je    .Lx325_47
                        cmp              eax, 13
                                                                                        jne   .Lx325_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx325_47
                                                                                        jmp   .Lx325_48
.Lx325_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx325_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx325_53
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
                                                                                        jmp   .Lx325_51
.Lx325_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx325_49
                        cmp              edx, 14
                                                                                        je    .Lx325_53
                                                                                        jmp   .Lx325_52
.Lx325_49:
                        cmp              edx, 14
                                                                                        je    .Lx325_52
                        cmp              ecx, 7
                                                                                        je    .Lx325_53
                        cmp              edx, 7
                                                                                        je    .Lx325_53
                        cmp              ecx, 6
                                                                                        jne   .Lx325_50
                        cmp              edx, 6
                                                                                        jne   .Lx325_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx325_51
                                                                                        jmp   .Lx325_52
.Lx325_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx325_53
.Lx325_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx325_54
.Lx325_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx325_54
.Lx325_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx325_54:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n274_var_ref_α
n273_call_builtin_prolog_β:
                                                                                        jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        add              rsp, 16
                                                                                        jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        add              rsp, 16
                                                                                        jmp   n276_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n277_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        lea              r8, [rbp + 560]
.Lx332_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_61
                        cmp              esi, 1
                                                                                        jne   .Lx332_62
                        mov              r8, rax
                                                                                        jmp   .Lx332_60
.Lx332_62:
                        cmp              esi, 2
                                                                                        jne   .Lx332_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_61
                        mov              r8, rax
                                                                                        jmp   .Lx332_60
.Lx332_63:
                        cmp              eax, 13
                                                                                        jne   .Lx332_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_61
                        cmp              rax, r8
                                                                                        je    .Lx332_61
                        mov              r8, rax
                                                                                        jmp   .Lx332_60
.Lx332_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_80
                        cmp              eax, 99
                                                                                        je    .Lx332_80
                        cmp              eax, 13
                                                                                        jne   .Lx332_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx332_80
                                                                                        jmp   .Lx332_74
.Lx332_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx332_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx332_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx332_73
                        lea              r9, [rbp + 576]
.Lx332_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_65
                        cmp              esi, 1
                                                                                        jne   .Lx332_66
                        mov              r9, rax
                                                                                        jmp   .Lx332_64
.Lx332_66:
                        cmp              esi, 2
                                                                                        jne   .Lx332_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_65
                        mov              r9, rax
                                                                                        jmp   .Lx332_64
.Lx332_67:
                        cmp              eax, 13
                                                                                        jne   .Lx332_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_65
                        cmp              rax, r9
                                                                                        je    .Lx332_65
                        mov              r9, rax
                                                                                        jmp   .Lx332_64
.Lx332_65:
                        lea              rcx, [rbp + 592]
.Lx332_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_69
                        cmp              esi, 1
                                                                                        jne   .Lx332_70
                        mov              rcx, rax
                                                                                        jmp   .Lx332_68
.Lx332_70:
                        cmp              esi, 2
                                                                                        jne   .Lx332_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_69
                        mov              rcx, rax
                                                                                        jmp   .Lx332_68
.Lx332_71:
                        cmp              eax, 13
                                                                                        jne   .Lx332_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_69
                        cmp              rax, rcx
                                                                                        je    .Lx332_69
                        mov              rcx, rax
                                                                                        jmp   .Lx332_68
.Lx332_69:
                        cmp              r9, rcx
                                                                                        je    .Lx332_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_75
                        cmp              eax, 99
                                                                                        je    .Lx332_75
                        cmp              eax, 13
                                                                                        jne   .Lx332_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx332_75
                                                                                        jmp   .Lx332_72
.Lx332_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_76
                        cmp              eax, 99
                                                                                        je    .Lx332_76
                        cmp              eax, 13
                                                                                        jne   .Lx332_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx332_76
                                                                                        jmp   .Lx332_72
.Lx332_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx332_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx332_72
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
                                                                                        jmp   .Lx332_77
.Lx332_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx332_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx332_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx332_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx332_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx332_72
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
                        lea              r9, [rbp + 576]
.Lx332_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_82
                        cmp              esi, 1
                                                                                        jne   .Lx332_83
                        mov              r9, rax
                                                                                        jmp   .Lx332_81
.Lx332_83:
                        cmp              esi, 2
                                                                                        jne   .Lx332_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_82
                        mov              r9, rax
                                                                                        jmp   .Lx332_81
.Lx332_84:
                        cmp              eax, 13
                                                                                        jne   .Lx332_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_82
                        cmp              rax, r9
                                                                                        je    .Lx332_82
                        mov              r9, rax
                                                                                        jmp   .Lx332_81
.Lx332_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_85
                        cmp              eax, 99
                                                                                        je    .Lx332_85
                        cmp              eax, 13
                                                                                        jne   .Lx332_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx332_85
                                                                                        jmp   .Lx332_86
.Lx332_85:
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
                                                                                        jmp   .Lx332_87
.Lx332_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx332_87:
                        lea              rcx, [rbp + 592]
.Lx332_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_89
                        cmp              esi, 1
                                                                                        jne   .Lx332_90
                        mov              rcx, rax
                                                                                        jmp   .Lx332_88
.Lx332_90:
                        cmp              esi, 2
                                                                                        jne   .Lx332_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_89
                        mov              rcx, rax
                                                                                        jmp   .Lx332_88
.Lx332_91:
                        cmp              eax, 13
                                                                                        jne   .Lx332_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx332_89
                        cmp              rax, rcx
                                                                                        je    .Lx332_89
                        mov              rcx, rax
                                                                                        jmp   .Lx332_88
.Lx332_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_92
                        cmp              eax, 99
                                                                                        je    .Lx332_92
                        cmp              eax, 13
                                                                                        jne   .Lx332_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx332_92
                                                                                        jmp   .Lx332_93
.Lx332_92:
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
                                                                                        jmp   .Lx332_94
.Lx332_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx332_94:
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
                                                                                        jmp   .Lx332_77
.Lx332_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx332_77
.Lx332_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx332_77:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n278_var_α
n277_call_builtin_prolog_β:
                                                                                        jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n280_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n281_var_ref_α
n280_call_builtin_prolog_β:
                                                                                        jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        add              rsp, 16
                                                                                        jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:
                        mov              qword ptr [rbp + 432], 6
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rbp + 440], rax
                                                                                        jmp   n284_call_builtin_prolog_α
.Lx342_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n284_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n285_call_builtin_prolog_α
n284_call_builtin_prolog_β:
                                                                                        jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n286_var_ref_α
n285_call_builtin_prolog_β:
                                                                                        jmp   n292_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        lea              rsi, [rbp + 240]
                        lea              rdx, [rbp + 256]
                        lea              rcx, [rbp + 272]
                        call             proc_range$2F3_dcα
                                                                                        jmp   .Lx352_2
.Lx352_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n292_call_builtin_prolog_α
                                                                                        jmp   n290_move_label_α
n289_call_proc_staged_β:
                                                                                        jmp   n292_call_builtin_prolog_α
.Lx352_0:
                        .quad            .Lx352_0_s
.Lx352_0_s:
                        .string          "range/3"
#-----------------------------------------------------------------------------------------------------------------------
n290_move_label_α:
                        lea              rax, [rip + n289_call_proc_staged_β]
                        mov              qword ptr [rbp + 80], rax
                                                                                        jmp   proc_range$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n291_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 80]
n291_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   proc_range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    proc_range$2F3_ω
                                                                                        jmp   proc_range$2F3_ω
n292_call_builtin_prolog_β:
                                                                                        jmp   proc_range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_range$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_range$2F3_β:
                                                                                        jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_range$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 1272]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_range$2F3_ω:
                        mov              rax, [rbp + 1280]
                        lea              rsp, [rbp + 1296]
                        mov              rbp, [rbp + 1288]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_range$2F3_dcα:
                        pop              r11
                        sub              rsp, 1312
                        mov              qword ptr [rsp + 1288], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 1264], r11
                        lea              rax, [rip + .Lx358_2]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rax, [rip + .Lx358_3]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              qword ptr [rbp + 24], rdx
                        mov              qword ptr [rbp + 32], rcx
                        mov              rdi, rbp
                        mov              esi, 1184
                        mov              edx, 1264
                        mov              ecx, 3
                        mov              r8d, 3
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_range$2F3_α_body
.Lx358_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -1296
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx358_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -1296
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_not_attack$2F2_α
proc_not_attack$2F2_α:
                        .global          proc_not_attack$2F2_α
                        .global          proc_not_attack$2F2_β
                        .global          proc_not_attack$2F2_γ
                        .global          proc_not_attack$2F2_ω
                        sub              rsp, 512
                        mov              [rsp + 488], rcx
                        mov              [rsp + 496], rdx
                        mov              [rsp + 504], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F2_α_body:
                        lea              rax, [rip + n370_suspend_β]
                        mov              qword ptr [rbp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n359_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx372_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx372_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx372_101
.Lx372_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx372_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_not_attack$2F2_ω
                                                                                        jmp   n360_var_ref_α
n359_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        add              rsp, 16
                                                                                        jmp   n362_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_builtin_prolog_α:
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
.Lx377_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx377_41
                        cmp              rax, r8
                                                                                        je    .Lx377_41
                        mov              r8, rax
                                                                                        jmp   .Lx377_40
.Lx377_41:
                        lea              r9, [rbp + 368]
.Lx377_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx377_44
                        cmp              eax, 13
                                                                                        jne   .Lx377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx377_44
                                                                                        jmp   .Lx377_45
.Lx377_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx377_53
                        cmp              eax, 99
                                                                                        je    .Lx377_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx377_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx377_49
                        cmp              edx, 14
                                                                                        je    .Lx377_53
                                                                                        jmp   .Lx377_52
.Lx377_49:
                        cmp              edx, 14
                                                                                        je    .Lx377_52
                        cmp              ecx, 7
                                                                                        je    .Lx377_53
                        cmp              edx, 7
                                                                                        je    .Lx377_53
                        cmp              ecx, 6
                                                                                        jne   .Lx377_50
                        cmp              edx, 6
                                                                                        jne   .Lx377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx377_54
.Lx377_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx377_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n371_call_builtin_prolog_α
                                                                                        jmp   n363_var_ref_α
n362_call_builtin_prolog_β:
                                                                                        jmp   n371_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        add              rsp, 16
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        add              rsp, 16
                                                                                        jmp   n365_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_builtin_prolog_α:
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
.Lx382_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx382_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx382_41
                        cmp              rax, r8
                                                                                        je    .Lx382_41
                        mov              r8, rax
                                                                                        jmp   .Lx382_40
.Lx382_41:
                        lea              r9, [rbp + 288]
.Lx382_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx382_44
                        cmp              eax, 13
                                                                                        jne   .Lx382_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx382_44
                                                                                        jmp   .Lx382_45
.Lx382_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx382_53
                        cmp              eax, 99
                                                                                        je    .Lx382_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx382_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx382_49
                        cmp              edx, 14
                                                                                        je    .Lx382_53
                                                                                        jmp   .Lx382_52
.Lx382_49:
                        cmp              edx, 14
                                                                                        je    .Lx382_52
                        cmp              ecx, 7
                                                                                        je    .Lx382_53
                        cmp              edx, 7
                                                                                        je    .Lx382_53
                        cmp              ecx, 6
                                                                                        jne   .Lx382_50
                        cmp              edx, 6
                                                                                        jne   .Lx382_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx382_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx382_54
.Lx382_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx382_54:
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    n371_call_builtin_prolog_α
                                                                                        jmp   n366_var_ref_α
n365_call_builtin_prolog_β:
                                                                                        jmp   n371_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 432]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 448]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:
                        mov              qword ptr [rbp + 240], 6
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n369_call_proc_staged_α
.Lx387_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        mov              qword ptr [rbp + 176], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_20
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx389_21
.Lx389_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        call             rt_arg_stage@PLT
.Lx389_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_22
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx389_23
.Lx389_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx389_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx389_24
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx389_25
.Lx389_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx389_25:
                        mov              edi, 5
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx389_1
                        lea              rcx, [rip + .Lx389_3]
                        lea              rdx, [rip + .Lx389_4]
                                                                                        jmp   rax
.Lx389_3:
                        mov              qword ptr [rbp + 184], rsp
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx389_5
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx389_2
.Lx389_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx389_2
.Lx389_4:
                        mov              rax, qword ptr [rbp + 176]
                        test             rax, rax
                                                                                        jne   .Lx389_6
                        mov              qword ptr [rbp + 176], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx389_2
.Lx389_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx389_2
.Lx389_1:
                        call             rt_faildescr@PLT
.Lx389_2:
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n371_call_builtin_prolog_α
                                                                                        jmp   n370_suspend_α
n369_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 184]
                                                                                        jmp   qword ptr [rsp]
.Lx389_0:
                        .quad            .Lx389_0_s
.Lx389_0_s:
                        .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n370_suspend_α:
                        lea              rax, [rip + n370_suspend_β]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_not_attack$2F2_γ
n370_suspend_β:
                                                                                        jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n371_call_builtin_prolog_α:
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
                                                                                        je    proc_not_attack$2F2_ω
                                                                                        jmp   proc_not_attack$2F2_ω
n371_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_β:
                                                                                        jmp   qword ptr [rbp + 416]
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_not_attack$2F2_res]
                        push             rax
                        mov              rax, [rbp + 488]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F2_ω:
                        mov              rax, [rbp + 496]
                        lea              rsp, [rbp + 512]
                        mov              rbp, [rbp + 504]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_not_attack$2F3_α
proc_not_attack$2F3_α:
                        .global          proc_not_attack$2F3_α
                        .global          proc_not_attack$2F3_β
                        .global          proc_not_attack$2F3_γ
                        .global          proc_not_attack$2F3_ω
                        sub              rsp, 1680
                        mov              [rsp + 1656], rcx
                        mov              [rsp + 1664], rdx
                        mov              [rsp + 1672], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1648
                        call             rt_jmp_frame_lexprep2@PLT
proc_not_attack$2F3_α_body:
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rbp + 1536], rax
#-----------------------------------------------------------------------------------------------------------------------
n393_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx444_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx444_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx444_101
.Lx444_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx444_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   n394_var_ref_α
n393_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:
                        mov              qword ptr [rbp + 1504], 6
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rbp + 1512], rax
                                                                                        jmp   n396_lit_string_α
.Lx447_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              dword ptr [rbp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n397_call_builtin_prolog_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n397_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1448], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1440]
                        lea              r8, [rbp + 1440]
.Lx449_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx449_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_111
                        cmp              esi, 1
                                                                                        jne   .Lx449_112
                        mov              r8, rax
                                                                                        jmp   .Lx449_110
.Lx449_112:
                        cmp              esi, 2
                                                                                        jne   .Lx449_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx449_111
                        mov              r8, rax
                                                                                        jmp   .Lx449_110
.Lx449_113:
                        cmp              eax, 13
                                                                                        jne   .Lx449_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx449_111
                        cmp              rax, r8
                                                                                        je    .Lx449_111
                        mov              r8, rax
                                                                                        jmp   .Lx449_110
.Lx449_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx449_114
                        cmp              eax, 99
                                                                                        je    .Lx449_114
                        cmp              eax, 13
                                                                                        jne   .Lx449_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx449_114
                                                                                        jmp   .Lx449_118
.Lx449_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx449_115
                        cmp              eax, 6
                                                                                        je    .Lx449_114
                        cmp              eax, 1
                                                                                        jne   .Lx449_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx449_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx449_114
                                                                                        jmp   .Lx449_116
.Lx449_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx449_117
.Lx449_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx449_117
.Lx449_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx449_117:
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n409_var_ref_α
                                                                                        jmp   n398_var_ref_α
n397_call_builtin_prolog_β:
                                                                                        jmp   n409_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        add              rsp, 16
                                                                                        jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              dword ptr [rbp + 1412], 2
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n400_call_builtin_prolog_α
.Lx452_0:
                        .quad            .Lx452_0_s
.Lx452_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n400_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              rsi, qword ptr [rip + .Lx453_2]
                                                                                        jmp   .Lx453_3
.Lx453_2:
                        .quad            .Lx453_2_s
.Lx453_2_s:
                        .string          "[]"
.Lx453_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              eax, 99
                                                                                        je    n408_call_builtin_prolog_α
                                                                                        jmp   n401_var_ref_α
n400_call_builtin_prolog_β:
                                                                                        jmp   n408_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        add              rsp, 16
                                                                                        jmp   n402_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        add              rsp, 16
                                                                                        jmp   n403_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1280]
                        lea              r8, [rbp + 1280]
.Lx458_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx458_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx458_41
                        cmp              esi, 1
                                                                                        jne   .Lx458_55
                        mov              r8, rax
                                                                                        jmp   .Lx458_40
.Lx458_55:
                        cmp              esi, 2
                                                                                        jne   .Lx458_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx458_41
                        mov              r8, rax
                                                                                        jmp   .Lx458_40
.Lx458_56:
                        cmp              eax, 13
                                                                                        jne   .Lx458_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx458_41
                        cmp              rax, r8
                                                                                        je    .Lx458_41
                        mov              r8, rax
                                                                                        jmp   .Lx458_40
.Lx458_41:
                        lea              r9, [rbp + 1296]
.Lx458_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx458_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx458_43
                        cmp              esi, 1
                                                                                        jne   .Lx458_57
                        mov              r9, rax
                                                                                        jmp   .Lx458_42
.Lx458_57:
                        cmp              esi, 2
                                                                                        jne   .Lx458_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx458_43
                        mov              r9, rax
                                                                                        jmp   .Lx458_42
.Lx458_58:
                        cmp              eax, 13
                                                                                        jne   .Lx458_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx458_43
                        cmp              rax, r9
                                                                                        je    .Lx458_43
                        mov              r9, rax
                                                                                        jmp   .Lx458_42
.Lx458_43:
                        cmp              r8, r9
                                                                                        je    .Lx458_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx458_44
                        cmp              eax, 99
                                                                                        je    .Lx458_44
                        cmp              eax, 13
                                                                                        jne   .Lx458_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx458_44
                                                                                        jmp   .Lx458_45
.Lx458_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx458_53
                        cmp              eax, 99
                                                                                        je    .Lx458_53
                        cmp              eax, 13
                                                                                        jne   .Lx458_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx458_53
                                                                                        jmp   .Lx458_46
.Lx458_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx458_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx458_53
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
                                                                                        jmp   .Lx458_51
.Lx458_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx458_47
                        cmp              eax, 99
                                                                                        je    .Lx458_47
                        cmp              eax, 13
                                                                                        jne   .Lx458_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx458_47
                                                                                        jmp   .Lx458_48
.Lx458_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx458_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx458_53
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
                                                                                        jmp   .Lx458_51
.Lx458_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx458_49
                        cmp              edx, 14
                                                                                        je    .Lx458_53
                                                                                        jmp   .Lx458_52
.Lx458_49:
                        cmp              edx, 14
                                                                                        je    .Lx458_52
                        cmp              ecx, 7
                                                                                        je    .Lx458_53
                        cmp              edx, 7
                                                                                        je    .Lx458_53
                        cmp              ecx, 6
                                                                                        jne   .Lx458_50
                        cmp              edx, 6
                                                                                        jne   .Lx458_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx458_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx458_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx458_51
                                                                                        jmp   .Lx458_52
.Lx458_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx458_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx458_53
.Lx458_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx458_54
.Lx458_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx458_54
.Lx458_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx458_54:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n408_call_builtin_prolog_α
                                                                                        jmp   n404_var_ref_α
n403_call_builtin_prolog_β:
                                                                                        jmp   n408_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        add              rsp, 16
                                                                                        jmp   n405_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        add              rsp, 16
                                                                                        jmp   n406_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n406_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1200]
                        lea              r8, [rbp + 1200]
.Lx463_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
                                                                                        jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx463_41
                        cmp              rax, r8
                                                                                        je    .Lx463_41
                        mov              r8, rax
                                                                                        jmp   .Lx463_40
.Lx463_41:
                        lea              r9, [rbp + 1216]
.Lx463_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
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
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx463_44
                        cmp              eax, 13
                                                                                        jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx463_44
                                                                                        jmp   .Lx463_45
.Lx463_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx463_53
                        cmp              eax, 99
                                                                                        je    .Lx463_53
                        cmp              eax, 13
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
                        cmp              eax, 99
                                                                                        je    .Lx463_47
                        cmp              eax, 13
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
                        cmp              ecx, 14
                                                                                        jne   .Lx463_49
                        cmp              edx, 14
                                                                                        je    .Lx463_53
                                                                                        jmp   .Lx463_52
.Lx463_49:
                        cmp              edx, 14
                                                                                        je    .Lx463_52
                        cmp              ecx, 7
                                                                                        je    .Lx463_53
                        cmp              edx, 7
                                                                                        je    .Lx463_53
                        cmp              ecx, 6
                                                                                        jne   .Lx463_50
                        cmp              edx, 6
                                                                                        jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
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
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx463_54
.Lx463_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx463_54:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n408_call_builtin_prolog_α
                                                                                        jmp   n407_suspend_α
n406_call_builtin_prolog_β:
                                                                                        jmp   n408_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n407_suspend_α:
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_not_attack$2F3_γ
n407_suspend_β:
                                                                                        jmp   n408_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              eax, 99
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   n409_var_ref_α
n408_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:
                        mov              qword ptr [rbp + 1104], 6
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rbp + 1112], rax
                                                                                        jmp   n411_lit_integer_α
.Lx469_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:
                        mov              qword ptr [rbp + 1120], 6
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rbp + 1128], rax
                                                                                        jmp   n412_call_builtin_prolog_α
.Lx470_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n412_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1040]
                        lea              r8, [rbp + 1040]
.Lx471_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx471_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx471_111
                        cmp              esi, 1
                                                                                        jne   .Lx471_112
                        mov              r8, rax
                                                                                        jmp   .Lx471_110
.Lx471_112:
                        cmp              esi, 2
                                                                                        jne   .Lx471_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx471_111
                        mov              r8, rax
                                                                                        jmp   .Lx471_110
.Lx471_113:
                        cmp              eax, 13
                                                                                        jne   .Lx471_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx471_111
                        cmp              rax, r8
                                                                                        je    .Lx471_111
                        mov              r8, rax
                                                                                        jmp   .Lx471_110
.Lx471_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx471_114
                        cmp              eax, 99
                                                                                        je    .Lx471_114
                        cmp              eax, 13
                                                                                        jne   .Lx471_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx471_114
                                                                                        jmp   .Lx471_118
.Lx471_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx471_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx471_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx471_115
                                                                                        jmp   .Lx471_114
.Lx471_119:
                        cmp              eax, 6
                                                                                        jne   .Lx471_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx471_114
                                                                                        jmp   .Lx471_115
.Lx471_120:
                        cmp              eax, 1
                                                                                        jne   .Lx471_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx471_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx471_114
                                                                                        jmp   .Lx471_115
.Lx471_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx471_117
.Lx471_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx471_117
.Lx471_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx471_117:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n413_var_ref_α
n412_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n414_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        add              rsp, 16
                                                                                        jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        add              rsp, 16
                                                                                        jmp   n416_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 944]
                        lea              r8, [rbp + 944]
.Lx478_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_61
                        cmp              esi, 1
                                                                                        jne   .Lx478_62
                        mov              r8, rax
                                                                                        jmp   .Lx478_60
.Lx478_62:
                        cmp              esi, 2
                                                                                        jne   .Lx478_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_61
                        mov              r8, rax
                                                                                        jmp   .Lx478_60
.Lx478_63:
                        cmp              eax, 13
                                                                                        jne   .Lx478_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_61
                        cmp              rax, r8
                                                                                        je    .Lx478_61
                        mov              r8, rax
                                                                                        jmp   .Lx478_60
.Lx478_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_80
                        cmp              eax, 99
                                                                                        je    .Lx478_80
                        cmp              eax, 13
                                                                                        jne   .Lx478_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx478_80
                                                                                        jmp   .Lx478_74
.Lx478_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx478_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx478_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx478_73
                        lea              r9, [rbp + 960]
.Lx478_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_65
                        cmp              esi, 1
                                                                                        jne   .Lx478_66
                        mov              r9, rax
                                                                                        jmp   .Lx478_64
.Lx478_66:
                        cmp              esi, 2
                                                                                        jne   .Lx478_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_65
                        mov              r9, rax
                                                                                        jmp   .Lx478_64
.Lx478_67:
                        cmp              eax, 13
                                                                                        jne   .Lx478_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_65
                        cmp              rax, r9
                                                                                        je    .Lx478_65
                        mov              r9, rax
                                                                                        jmp   .Lx478_64
.Lx478_65:
                        lea              rcx, [rbp + 976]
.Lx478_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx478_69
                        cmp              esi, 1
                                                                                        jne   .Lx478_70
                        mov              rcx, rax
                                                                                        jmp   .Lx478_68
.Lx478_70:
                        cmp              esi, 2
                                                                                        jne   .Lx478_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_69
                        mov              rcx, rax
                                                                                        jmp   .Lx478_68
.Lx478_71:
                        cmp              eax, 13
                                                                                        jne   .Lx478_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx478_69
                        cmp              rax, rcx
                                                                                        je    .Lx478_69
                        mov              rcx, rax
                                                                                        jmp   .Lx478_68
.Lx478_69:
                        cmp              r9, rcx
                                                                                        je    .Lx478_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_75
                        cmp              eax, 99
                                                                                        je    .Lx478_75
                        cmp              eax, 13
                                                                                        jne   .Lx478_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx478_75
                                                                                        jmp   .Lx478_72
.Lx478_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_76
                        cmp              eax, 99
                                                                                        je    .Lx478_76
                        cmp              eax, 13
                                                                                        jne   .Lx478_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx478_76
                                                                                        jmp   .Lx478_72
.Lx478_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx478_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx478_72
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
                                                                                        jmp   .Lx478_77
.Lx478_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx478_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx478_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx478_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx478_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx478_72
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
                        lea              r9, [rbp + 960]
.Lx478_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_82
                        cmp              esi, 1
                                                                                        jne   .Lx478_83
                        mov              r9, rax
                                                                                        jmp   .Lx478_81
.Lx478_83:
                        cmp              esi, 2
                                                                                        jne   .Lx478_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_82
                        mov              r9, rax
                                                                                        jmp   .Lx478_81
.Lx478_84:
                        cmp              eax, 13
                                                                                        jne   .Lx478_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx478_82
                        cmp              rax, r9
                                                                                        je    .Lx478_82
                        mov              r9, rax
                                                                                        jmp   .Lx478_81
.Lx478_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_85
                        cmp              eax, 99
                                                                                        je    .Lx478_85
                        cmp              eax, 13
                                                                                        jne   .Lx478_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx478_85
                                                                                        jmp   .Lx478_86
.Lx478_85:
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
                                                                                        jmp   .Lx478_87
.Lx478_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx478_87:
                        lea              rcx, [rbp + 976]
.Lx478_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx478_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx478_89
                        cmp              esi, 1
                                                                                        jne   .Lx478_90
                        mov              rcx, rax
                                                                                        jmp   .Lx478_88
.Lx478_90:
                        cmp              esi, 2
                                                                                        jne   .Lx478_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx478_89
                        mov              rcx, rax
                                                                                        jmp   .Lx478_88
.Lx478_91:
                        cmp              eax, 13
                                                                                        jne   .Lx478_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx478_89
                        cmp              rax, rcx
                                                                                        je    .Lx478_89
                        mov              rcx, rax
                                                                                        jmp   .Lx478_88
.Lx478_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx478_92
                        cmp              eax, 99
                                                                                        je    .Lx478_92
                        cmp              eax, 13
                                                                                        jne   .Lx478_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx478_92
                                                                                        jmp   .Lx478_93
.Lx478_92:
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
                                                                                        jmp   .Lx478_94
.Lx478_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx478_94:
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
                                                                                        jmp   .Lx478_77
.Lx478_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx478_77
.Lx478_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx478_77:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n417_var_ref_α
n416_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n418_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n419_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
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
.Lx483_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx483_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_41
                        cmp              esi, 1
                                                                                        jne   .Lx483_55
                        mov              r8, rax
                                                                                        jmp   .Lx483_40
.Lx483_55:
                        cmp              esi, 2
                                                                                        jne   .Lx483_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx483_41
                        mov              r8, rax
                                                                                        jmp   .Lx483_40
.Lx483_56:
                        cmp              eax, 13
                                                                                        jne   .Lx483_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_41
                        cmp              rax, r8
                                                                                        je    .Lx483_41
                        mov              r8, rax
                                                                                        jmp   .Lx483_40
.Lx483_41:
                        lea              r9, [rbp + 864]
.Lx483_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx483_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_43
                        cmp              esi, 1
                                                                                        jne   .Lx483_57
                        mov              r9, rax
                                                                                        jmp   .Lx483_42
.Lx483_57:
                        cmp              esi, 2
                                                                                        jne   .Lx483_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx483_43
                        mov              r9, rax
                                                                                        jmp   .Lx483_42
.Lx483_58:
                        cmp              eax, 13
                                                                                        jne   .Lx483_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx483_43
                        cmp              rax, r9
                                                                                        je    .Lx483_43
                        mov              r9, rax
                                                                                        jmp   .Lx483_42
.Lx483_43:
                        cmp              r8, r9
                                                                                        je    .Lx483_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx483_44
                        cmp              eax, 99
                                                                                        je    .Lx483_44
                        cmp              eax, 13
                                                                                        jne   .Lx483_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx483_44
                                                                                        jmp   .Lx483_45
.Lx483_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx483_53
                        cmp              eax, 99
                                                                                        je    .Lx483_53
                        cmp              eax, 13
                                                                                        jne   .Lx483_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx483_53
                                                                                        jmp   .Lx483_46
.Lx483_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx483_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx483_53
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
                                                                                        jmp   .Lx483_51
.Lx483_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx483_47
                        cmp              eax, 99
                                                                                        je    .Lx483_47
                        cmp              eax, 13
                                                                                        jne   .Lx483_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx483_47
                                                                                        jmp   .Lx483_48
.Lx483_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx483_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx483_53
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
                                                                                        jmp   .Lx483_51
.Lx483_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx483_49
                        cmp              edx, 14
                                                                                        je    .Lx483_53
                                                                                        jmp   .Lx483_52
.Lx483_49:
                        cmp              edx, 14
                                                                                        je    .Lx483_52
                        cmp              ecx, 7
                                                                                        je    .Lx483_53
                        cmp              edx, 7
                                                                                        je    .Lx483_53
                        cmp              ecx, 6
                                                                                        jne   .Lx483_50
                        cmp              edx, 6
                                                                                        jne   .Lx483_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx483_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx483_51
                                                                                        jmp   .Lx483_52
.Lx483_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx483_53
.Lx483_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx483_54
.Lx483_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx483_54
.Lx483_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx483_54:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n420_var_ref_α
n419_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n421_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        add              rsp, 16
                                                                                        jmp   n422_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 768]
                        lea              r8, [rbp + 768]
.Lx488_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx488_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        cmp              esi, 1
                                                                                        jne   .Lx488_55
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_55:
                        cmp              esi, 2
                                                                                        jne   .Lx488_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_56:
                        cmp              eax, 13
                                                                                        jne   .Lx488_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_41
                        cmp              rax, r8
                                                                                        je    .Lx488_41
                        mov              r8, rax
                                                                                        jmp   .Lx488_40
.Lx488_41:
                        lea              r9, [rbp + 784]
.Lx488_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx488_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        cmp              esi, 1
                                                                                        jne   .Lx488_57
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_57:
                        cmp              esi, 2
                                                                                        jne   .Lx488_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_58:
                        cmp              eax, 13
                                                                                        jne   .Lx488_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx488_43
                        cmp              rax, r9
                                                                                        je    .Lx488_43
                        mov              r9, rax
                                                                                        jmp   .Lx488_42
.Lx488_43:
                        cmp              r8, r9
                                                                                        je    .Lx488_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_44
                        cmp              eax, 99
                                                                                        je    .Lx488_44
                        cmp              eax, 13
                                                                                        jne   .Lx488_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx488_44
                                                                                        jmp   .Lx488_45
.Lx488_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_53
                        cmp              eax, 99
                                                                                        je    .Lx488_53
                        cmp              eax, 13
                                                                                        jne   .Lx488_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx488_53
                                                                                        jmp   .Lx488_46
.Lx488_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx488_53
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
                                                                                        jmp   .Lx488_51
.Lx488_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx488_47
                        cmp              eax, 99
                                                                                        je    .Lx488_47
                        cmp              eax, 13
                                                                                        jne   .Lx488_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx488_47
                                                                                        jmp   .Lx488_48
.Lx488_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx488_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx488_53
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
                                                                                        jmp   .Lx488_51
.Lx488_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx488_49
                        cmp              edx, 14
                                                                                        je    .Lx488_53
                                                                                        jmp   .Lx488_52
.Lx488_49:
                        cmp              edx, 14
                                                                                        je    .Lx488_52
                        cmp              ecx, 7
                                                                                        je    .Lx488_53
                        cmp              edx, 7
                                                                                        je    .Lx488_53
                        cmp              ecx, 6
                                                                                        jne   .Lx488_50
                        cmp              edx, 6
                                                                                        jne   .Lx488_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx488_51
                                                                                        jmp   .Lx488_52
.Lx488_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx488_53
.Lx488_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx488_54
.Lx488_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx488_54
.Lx488_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx488_54:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n423_var_α
n422_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n424_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 728], rax
                                                                                        jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n426_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
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
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n427_call_builtin_prolog_α
n426_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n428_var_α
n427_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n431_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n432_call_builtin_prolog_α
n431_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n433_var_ref_α
n432_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        add              rsp, 16
                                                                                        jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n435_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n436_call_builtin_prolog_α
.Lx509_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n437_call_builtin_prolog_α
n436_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n438_var_ref_α
n437_call_builtin_prolog_β:
                                                                                        jmp   n443_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        add              rsp, 16
                                                                                        jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        add              rsp, 16
                                                                                        jmp   n440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        add              rsp, 16
                                                                                        jmp   n441_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx519_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx519_21
.Lx519_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx519_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx519_22
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx519_23
.Lx519_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        call             rt_arg_stage@PLT
.Lx519_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx519_24
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx519_25
.Lx519_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx519_25:
                        mov              edi, 5
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx519_1
                        lea              rcx, [rip + .Lx519_3]
                        lea              rdx, [rip + .Lx519_4]
                                                                                        jmp   rax
.Lx519_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx519_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx519_2
.Lx519_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx519_2
.Lx519_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx519_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx519_2
.Lx519_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx519_2
.Lx519_1:
                        call             rt_faildescr@PLT
.Lx519_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n443_call_builtin_prolog_α
                                                                                        jmp   n442_suspend_α
n441_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx519_0:
                        .quad            .Lx519_0_s
.Lx519_0_s:
                        .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n442_suspend_α:
                        lea              rax, [rip + n442_suspend_β]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_not_attack$2F3_γ
n442_suspend_β:
                                                                                        jmp   n441_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
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
                                                                                        je    proc_not_attack$2F3_ω
                                                                                        jmp   proc_not_attack$2F3_ω
n443_call_builtin_prolog_β:
                                                                                        jmp   proc_not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1536]
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_not_attack$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1656]
                        mov              rbp, [rbp + 1672]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_not_attack$2F3_ω:
                        mov              rax, [rbp + 1664]
                        lea              rsp, [rbp + 1680]
                        mov              rbp, [rbp + 1672]
                                                                                        jmp   rax
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
                        mov              esi, 1216
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "queens/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_queens$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1376
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "queens/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_queens$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "range/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_range$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1248
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_range$2F3_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "not_attack/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_not_attack$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 464
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "not_attack/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_not_attack$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 3
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1632
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
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
                        sub              rsp, 328
                        mov              rdi, rsp
                        mov              ecx, 328
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 320], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n523_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx534_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx534_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx534_101
.Lx534_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx534_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n524_lit_integer_α
n523_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n525_var_ref_α
.Lx535_0:
                        .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n526_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx539_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx539_21
.Lx539_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx539_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx539_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx539_23
.Lx539_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx539_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx539_1
                        lea              rcx, [rip + .Lx539_3]
                        lea              rdx, [rip + .Lx539_4]
                                                                                        jmp   rax
.Lx539_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx539_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx539_2
.Lx539_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx539_2
.Lx539_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx539_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx539_2
.Lx539_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx539_2
.Lx539_1:
                        call             rt_faildescr@PLT
.Lx539_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n533_call_builtin_prolog_α
                                                                                        jmp   n527_var_α
n526_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx539_0:
                        .quad            .Lx539_0_s
.Lx539_0_s:
                        .string          "queens/2"
#-----------------------------------------------------------------------------------------------------------------------
n527_var_α:
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n528_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn543:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn543]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n526_call_proc_staged_β
                                                                                        jmp   n529_lit_string_α
n528_call_builtin_prolog_β:
                                                                                        jmp   n526_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n530_call_builtin_prolog_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n530_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn546:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n526_call_proc_staged_β
                                                                                        jmp   n531_move_label_α
n530_call_builtin_prolog_β:
                                                                                        jmp   n526_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n531_move_label_α:
                        lea              rax, [rip + n526_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n532_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n532_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n533_call_builtin_prolog_α:
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
n533_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n532_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 320]
                        add              rsp, 328
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 320]
                        add              rsp, 328
                        ret
                        .section         .note.GNU-stack,"",@progbits
