                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_partition$2F4_α
proc_partition$2F4_α:
                        .global          proc_partition$2F4_α
                        .global          proc_partition$2F4_β
                        .global          proc_partition$2F4_γ
                        .global          proc_partition$2F4_ω
                        sub              rsp, 2240
                        mov              [rsp + 2216], rcx
                        mov              [rsp + 2224], rdx
                        mov              [rsp + 2232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2080
                        mov              edx, 2208
                        call             rt_jmp_frame_lexprep2@PLT
proc_partition$2F4_α_body:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 2080], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx73_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx73_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx73_101
.Lx73_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx73_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_partition$2F4_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        add              rsp, 16
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 2048], 6
                        mov              rax, qword ptr [rip + .Lx76_0]
                        mov              qword ptr [rbp + 2056], rax
                                                                                        jmp   n3_lit_integer_α
.Lx76_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 2064], 6
                        mov              rax, qword ptr [rip + .Lx77_0]
                        mov              qword ptr [rbp + 2072], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx77_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        lea              rdi, [rbp + 1984]
                        lea              r8, [rbp + 1984]
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
                                                                                        jne   .Lx78_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx78_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx78_115
                                                                                        jmp   .Lx78_114
.Lx78_119:
                        cmp              eax, 6
                                                                                        jne   .Lx78_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx78_114
                                                                                        jmp   .Lx78_115
.Lx78_120:
                        cmp              eax, 1
                                                                                        jne   .Lx78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx78_114
                                                                                        jmp   .Lx78_115
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
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              eax, 99
                                                                                        je    n30_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                                        jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        add              rsp, 16
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        add              rsp, 16
                                                                                        jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx
                        add              rsp, 16
                                                                                        jmp   n8_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lx85_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_61
                        cmp              esi, 1
                                                                                        jne   .Lx85_62
                        mov              r8, rax
                                                                                        jmp   .Lx85_60
.Lx85_62:
                        cmp              esi, 2
                                                                                        jne   .Lx85_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_61
                        mov              r8, rax
                                                                                        jmp   .Lx85_60
.Lx85_63:
                        cmp              eax, 13
                                                                                        jne   .Lx85_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_61
                        cmp              rax, r8
                                                                                        je    .Lx85_61
                        mov              r8, rax
                                                                                        jmp   .Lx85_60
.Lx85_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_80
                        cmp              eax, 99
                                                                                        je    .Lx85_80
                        cmp              eax, 13
                                                                                        jne   .Lx85_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx85_80
                                                                                        jmp   .Lx85_74
.Lx85_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx85_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx85_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx85_73
                        lea              r9, [rbp + 1904]
.Lx85_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_65
                        cmp              esi, 1
                                                                                        jne   .Lx85_66
                        mov              r9, rax
                                                                                        jmp   .Lx85_64
.Lx85_66:
                        cmp              esi, 2
                                                                                        jne   .Lx85_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_65
                        mov              r9, rax
                                                                                        jmp   .Lx85_64
.Lx85_67:
                        cmp              eax, 13
                                                                                        jne   .Lx85_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_65
                        cmp              rax, r9
                                                                                        je    .Lx85_65
                        mov              r9, rax
                                                                                        jmp   .Lx85_64
.Lx85_65:
                        lea              rcx, [rbp + 1920]
.Lx85_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx85_69
                        cmp              esi, 1
                                                                                        jne   .Lx85_70
                        mov              rcx, rax
                                                                                        jmp   .Lx85_68
.Lx85_70:
                        cmp              esi, 2
                                                                                        jne   .Lx85_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_69
                        mov              rcx, rax
                                                                                        jmp   .Lx85_68
.Lx85_71:
                        cmp              eax, 13
                                                                                        jne   .Lx85_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx85_69
                        cmp              rax, rcx
                                                                                        je    .Lx85_69
                        mov              rcx, rax
                                                                                        jmp   .Lx85_68
.Lx85_69:
                        cmp              r9, rcx
                                                                                        je    .Lx85_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_75
                        cmp              eax, 99
                                                                                        je    .Lx85_75
                        cmp              eax, 13
                                                                                        jne   .Lx85_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx85_75
                                                                                        jmp   .Lx85_72
.Lx85_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_76
                        cmp              eax, 99
                                                                                        je    .Lx85_76
                        cmp              eax, 13
                                                                                        jne   .Lx85_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx85_76
                                                                                        jmp   .Lx85_72
.Lx85_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx85_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx85_72
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
                                                                                        jmp   .Lx85_77
.Lx85_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx85_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx85_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx85_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx85_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx85_72
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
                        lea              r9, [rbp + 1904]
.Lx85_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_82
                        cmp              esi, 1
                                                                                        jne   .Lx85_83
                        mov              r9, rax
                                                                                        jmp   .Lx85_81
.Lx85_83:
                        cmp              esi, 2
                                                                                        jne   .Lx85_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_82
                        mov              r9, rax
                                                                                        jmp   .Lx85_81
.Lx85_84:
                        cmp              eax, 13
                                                                                        jne   .Lx85_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx85_82
                        cmp              rax, r9
                                                                                        je    .Lx85_82
                        mov              r9, rax
                                                                                        jmp   .Lx85_81
.Lx85_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_85
                        cmp              eax, 99
                                                                                        je    .Lx85_85
                        cmp              eax, 13
                                                                                        jne   .Lx85_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx85_85
                                                                                        jmp   .Lx85_86
.Lx85_85:
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
                                                                                        jmp   .Lx85_87
.Lx85_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx85_87:
                        lea              rcx, [rbp + 1920]
.Lx85_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx85_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx85_89
                        cmp              esi, 1
                                                                                        jne   .Lx85_90
                        mov              rcx, rax
                                                                                        jmp   .Lx85_88
.Lx85_90:
                        cmp              esi, 2
                                                                                        jne   .Lx85_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx85_89
                        mov              rcx, rax
                                                                                        jmp   .Lx85_88
.Lx85_91:
                        cmp              eax, 13
                                                                                        jne   .Lx85_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx85_89
                        cmp              rax, rcx
                                                                                        je    .Lx85_89
                        mov              rcx, rax
                                                                                        jmp   .Lx85_88
.Lx85_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx85_92
                        cmp              eax, 99
                                                                                        je    .Lx85_92
                        cmp              eax, 13
                                                                                        jne   .Lx85_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx85_92
                                                                                        jmp   .Lx85_93
.Lx85_92:
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
                                                                                        jmp   .Lx85_94
.Lx85_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx85_94:
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
                                                                                        jmp   .Lx85_77
.Lx85_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx85_77
.Lx85_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx85_77:
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              eax, 99
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n9_var_ref_α
n8_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        add              rsp, 16
                                                                                        jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        add              rsp, 16
                                                                                        jmp   n11_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1792]
                        lea              r8, [rbp + 1792]
.Lx90_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx90_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_41
                        cmp              esi, 1
                                                                                        jne   .Lx90_55
                        mov              r8, rax
                                                                                        jmp   .Lx90_40
.Lx90_55:
                        cmp              esi, 2
                                                                                        jne   .Lx90_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx90_41
                        mov              r8, rax
                                                                                        jmp   .Lx90_40
.Lx90_56:
                        cmp              eax, 13
                                                                                        jne   .Lx90_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_41
                        cmp              rax, r8
                                                                                        je    .Lx90_41
                        mov              r8, rax
                                                                                        jmp   .Lx90_40
.Lx90_41:
                        lea              r9, [rbp + 1808]
.Lx90_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx90_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_43
                        cmp              esi, 1
                                                                                        jne   .Lx90_57
                        mov              r9, rax
                                                                                        jmp   .Lx90_42
.Lx90_57:
                        cmp              esi, 2
                                                                                        jne   .Lx90_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx90_43
                        mov              r9, rax
                                                                                        jmp   .Lx90_42
.Lx90_58:
                        cmp              eax, 13
                                                                                        jne   .Lx90_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx90_43
                        cmp              rax, r9
                                                                                        je    .Lx90_43
                        mov              r9, rax
                                                                                        jmp   .Lx90_42
.Lx90_43:
                        cmp              r8, r9
                                                                                        je    .Lx90_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_44
                        cmp              eax, 99
                                                                                        je    .Lx90_44
                        cmp              eax, 13
                                                                                        jne   .Lx90_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx90_44
                                                                                        jmp   .Lx90_45
.Lx90_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_53
                        cmp              eax, 99
                                                                                        je    .Lx90_53
                        cmp              eax, 13
                                                                                        jne   .Lx90_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx90_53
                                                                                        jmp   .Lx90_46
.Lx90_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx90_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx90_53
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
                                                                                        jmp   .Lx90_51
.Lx90_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx90_47
                        cmp              eax, 99
                                                                                        je    .Lx90_47
                        cmp              eax, 13
                                                                                        jne   .Lx90_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx90_47
                                                                                        jmp   .Lx90_48
.Lx90_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx90_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx90_53
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
                                                                                        jmp   .Lx90_51
.Lx90_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx90_49
                        cmp              edx, 14
                                                                                        je    .Lx90_53
                                                                                        jmp   .Lx90_52
.Lx90_49:
                        cmp              edx, 14
                                                                                        je    .Lx90_52
                        cmp              ecx, 7
                                                                                        je    .Lx90_53
                        cmp              edx, 7
                                                                                        je    .Lx90_53
                        cmp              ecx, 6
                                                                                        jne   .Lx90_50
                        cmp              edx, 6
                                                                                        jne   .Lx90_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx90_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx90_51
                                                                                        jmp   .Lx90_52
.Lx90_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx90_53
.Lx90_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx90_54
.Lx90_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx90_54
.Lx90_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx90_54:
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n12_var_ref_α
n11_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        add              rsp, 16
                                                                                        jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        add              rsp, 16
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        add              rsp, 16
                                                                                        jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1696]
                        lea              r8, [rbp + 1696]
.Lx97_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_61
                        cmp              esi, 1
                                                                                        jne   .Lx97_62
                        mov              r8, rax
                                                                                        jmp   .Lx97_60
.Lx97_62:
                        cmp              esi, 2
                                                                                        jne   .Lx97_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_61
                        mov              r8, rax
                                                                                        jmp   .Lx97_60
.Lx97_63:
                        cmp              eax, 13
                                                                                        jne   .Lx97_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_61
                        cmp              rax, r8
                                                                                        je    .Lx97_61
                        mov              r8, rax
                                                                                        jmp   .Lx97_60
.Lx97_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_80
                        cmp              eax, 99
                                                                                        je    .Lx97_80
                        cmp              eax, 13
                                                                                        jne   .Lx97_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx97_80
                                                                                        jmp   .Lx97_74
.Lx97_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx97_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx97_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx97_73
                        lea              r9, [rbp + 1712]
.Lx97_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_65
                        cmp              esi, 1
                                                                                        jne   .Lx97_66
                        mov              r9, rax
                                                                                        jmp   .Lx97_64
.Lx97_66:
                        cmp              esi, 2
                                                                                        jne   .Lx97_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_65
                        mov              r9, rax
                                                                                        jmp   .Lx97_64
.Lx97_67:
                        cmp              eax, 13
                                                                                        jne   .Lx97_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_65
                        cmp              rax, r9
                                                                                        je    .Lx97_65
                        mov              r9, rax
                                                                                        jmp   .Lx97_64
.Lx97_65:
                        lea              rcx, [rbp + 1728]
.Lx97_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx97_69
                        cmp              esi, 1
                                                                                        jne   .Lx97_70
                        mov              rcx, rax
                                                                                        jmp   .Lx97_68
.Lx97_70:
                        cmp              esi, 2
                                                                                        jne   .Lx97_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_69
                        mov              rcx, rax
                                                                                        jmp   .Lx97_68
.Lx97_71:
                        cmp              eax, 13
                                                                                        jne   .Lx97_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx97_69
                        cmp              rax, rcx
                                                                                        je    .Lx97_69
                        mov              rcx, rax
                                                                                        jmp   .Lx97_68
.Lx97_69:
                        cmp              r9, rcx
                                                                                        je    .Lx97_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_75
                        cmp              eax, 99
                                                                                        je    .Lx97_75
                        cmp              eax, 13
                                                                                        jne   .Lx97_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx97_75
                                                                                        jmp   .Lx97_72
.Lx97_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_76
                        cmp              eax, 99
                                                                                        je    .Lx97_76
                        cmp              eax, 13
                                                                                        jne   .Lx97_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx97_76
                                                                                        jmp   .Lx97_72
.Lx97_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx97_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx97_72
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
                                                                                        jmp   .Lx97_77
.Lx97_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx97_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx97_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx97_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx97_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx97_72
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
                        lea              r9, [rbp + 1712]
.Lx97_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_82
                        cmp              esi, 1
                                                                                        jne   .Lx97_83
                        mov              r9, rax
                                                                                        jmp   .Lx97_81
.Lx97_83:
                        cmp              esi, 2
                                                                                        jne   .Lx97_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_82
                        mov              r9, rax
                                                                                        jmp   .Lx97_81
.Lx97_84:
                        cmp              eax, 13
                                                                                        jne   .Lx97_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx97_82
                        cmp              rax, r9
                                                                                        je    .Lx97_82
                        mov              r9, rax
                                                                                        jmp   .Lx97_81
.Lx97_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_85
                        cmp              eax, 99
                                                                                        je    .Lx97_85
                        cmp              eax, 13
                                                                                        jne   .Lx97_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx97_85
                                                                                        jmp   .Lx97_86
.Lx97_85:
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
                                                                                        jmp   .Lx97_87
.Lx97_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx97_87:
                        lea              rcx, [rbp + 1728]
.Lx97_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx97_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx97_89
                        cmp              esi, 1
                                                                                        jne   .Lx97_90
                        mov              rcx, rax
                                                                                        jmp   .Lx97_88
.Lx97_90:
                        cmp              esi, 2
                                                                                        jne   .Lx97_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx97_89
                        mov              rcx, rax
                                                                                        jmp   .Lx97_88
.Lx97_91:
                        cmp              eax, 13
                                                                                        jne   .Lx97_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx97_89
                        cmp              rax, rcx
                                                                                        je    .Lx97_89
                        mov              rcx, rax
                                                                                        jmp   .Lx97_88
.Lx97_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx97_92
                        cmp              eax, 99
                                                                                        je    .Lx97_92
                        cmp              eax, 13
                                                                                        jne   .Lx97_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx97_92
                                                                                        jmp   .Lx97_93
.Lx97_92:
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
                                                                                        jmp   .Lx97_94
.Lx97_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx97_94:
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
                                                                                        jmp   .Lx97_77
.Lx97_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx97_77
.Lx97_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx97_77:
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              eax, 99
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        add              rsp, 16
                                                                                        jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        add              rsp, 16
                                                                                        jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1600]
                        lea              r8, [rbp + 1600]
.Lx102_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx102_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_41
                        cmp              esi, 1
                                                                                        jne   .Lx102_55
                        mov              r8, rax
                                                                                        jmp   .Lx102_40
.Lx102_55:
                        cmp              esi, 2
                                                                                        jne   .Lx102_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx102_41
                        mov              r8, rax
                                                                                        jmp   .Lx102_40
.Lx102_56:
                        cmp              eax, 13
                                                                                        jne   .Lx102_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_41
                        cmp              rax, r8
                                                                                        je    .Lx102_41
                        mov              r8, rax
                                                                                        jmp   .Lx102_40
.Lx102_41:
                        lea              r9, [rbp + 1616]
.Lx102_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx102_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_43
                        cmp              esi, 1
                                                                                        jne   .Lx102_57
                        mov              r9, rax
                                                                                        jmp   .Lx102_42
.Lx102_57:
                        cmp              esi, 2
                                                                                        jne   .Lx102_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx102_43
                        mov              r9, rax
                                                                                        jmp   .Lx102_42
.Lx102_58:
                        cmp              eax, 13
                                                                                        jne   .Lx102_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx102_43
                        cmp              rax, r9
                                                                                        je    .Lx102_43
                        mov              r9, rax
                                                                                        jmp   .Lx102_42
.Lx102_43:
                        cmp              r8, r9
                                                                                        je    .Lx102_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_44
                        cmp              eax, 99
                                                                                        je    .Lx102_44
                        cmp              eax, 13
                                                                                        jne   .Lx102_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx102_44
                                                                                        jmp   .Lx102_45
.Lx102_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_53
                        cmp              eax, 99
                                                                                        je    .Lx102_53
                        cmp              eax, 13
                                                                                        jne   .Lx102_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx102_53
                                                                                        jmp   .Lx102_46
.Lx102_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx102_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx102_53
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
                                                                                        jmp   .Lx102_51
.Lx102_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx102_47
                        cmp              eax, 99
                                                                                        je    .Lx102_47
                        cmp              eax, 13
                                                                                        jne   .Lx102_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx102_47
                                                                                        jmp   .Lx102_48
.Lx102_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx102_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx102_53
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
                                                                                        jmp   .Lx102_51
.Lx102_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx102_49
                        cmp              edx, 14
                                                                                        je    .Lx102_53
                                                                                        jmp   .Lx102_52
.Lx102_49:
                        cmp              edx, 14
                                                                                        je    .Lx102_52
                        cmp              ecx, 7
                                                                                        je    .Lx102_53
                        cmp              edx, 7
                                                                                        je    .Lx102_53
                        cmp              ecx, 6
                                                                                        jne   .Lx102_50
                        cmp              edx, 6
                                                                                        jne   .Lx102_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx102_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx102_51
                                                                                        jmp   .Lx102_52
.Lx102_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx102_53
.Lx102_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx102_54
.Lx102_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx102_54
.Lx102_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx102_54:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n19_var_α
n18_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1560], rax
                                                                                        jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n21_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_le@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n29_call_builtin_prolog_α
                                                                                        jmp   n22_cut_α
n21_call_builtin_prolog_β:
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_cut_α:
                                                                                        jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        add              rsp, 16
                                                                                        jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        add              rsp, 16
                                                                                        jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        add              rsp, 16
                                                                                        jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        add              rsp, 16
                                                                                        jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α:
                        mov              qword ptr [rbp + 1408], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx118_20
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx118_21
.Lx118_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        call             rt_arg_stage@PLT
.Lx118_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx118_22
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx118_23
.Lx118_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        call             rt_arg_stage@PLT
.Lx118_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx118_24
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx118_25
.Lx118_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        call             rt_arg_stage@PLT
.Lx118_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx118_26
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx118_27
.Lx118_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        call             rt_arg_stage@PLT
.Lx118_27:
                        mov              edi, 0
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx118_1
                        lea              rcx, [rip + .Lx118_3]
                        lea              rdx, [rip + .Lx118_4]
                                                                                        jmp   rax
.Lx118_3:
                        mov              qword ptr [rbp + 1416], rsp
                        mov              rax, qword ptr [rbp + 1408]
                        test             rax, rax
                                                                                        jne   .Lx118_5
                        mov              qword ptr [rbp + 1408], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx118_2
.Lx118_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx118_2
.Lx118_4:
                        mov              rax, qword ptr [rbp + 1408]
                        test             rax, rax
                                                                                        jne   .Lx118_6
                        mov              qword ptr [rbp + 1408], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx118_2
.Lx118_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx118_2
.Lx118_1:
                        call             rt_faildescr@PLT
.Lx118_2:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n28_suspend_α
n27_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1416]
                                                                                        jmp   qword ptr [rsp]
.Lx118_0:
                        .quad            .Lx118_0_s
.Lx118_0_s:
                        .string          "partition/4"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_partition$2F4_γ
n28_suspend_β:
                                                                                        jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    proc_partition$2F4_ω
                                                                                        jmp   n30_var_ref_α
n29_call_builtin_prolog_β:
                                                                                        jmp   proc_partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        add              rsp, 16
                                                                                        jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:
                        mov              qword ptr [rbp + 1264], 6
                        mov              rax, qword ptr [rip + .Lx124_0]
                        mov              qword ptr [rbp + 1272], rax
                                                                                        jmp   n32_lit_integer_α
.Lx124_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:
                        mov              qword ptr [rbp + 1280], 6
                        mov              rax, qword ptr [rip + .Lx125_0]
                        mov              qword ptr [rbp + 1288], rax
                                                                                        jmp   n33_call_builtin_prolog_α
.Lx125_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n33_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1200]
                        lea              r8, [rbp + 1200]
.Lx126_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx126_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx126_111
                        cmp              esi, 1
                                                                                        jne   .Lx126_112
                        mov              r8, rax
                                                                                        jmp   .Lx126_110
.Lx126_112:
                        cmp              esi, 2
                                                                                        jne   .Lx126_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx126_111
                        mov              r8, rax
                                                                                        jmp   .Lx126_110
.Lx126_113:
                        cmp              eax, 13
                                                                                        jne   .Lx126_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx126_111
                        cmp              rax, r8
                                                                                        je    .Lx126_111
                        mov              r8, rax
                                                                                        jmp   .Lx126_110
.Lx126_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx126_114
                        cmp              eax, 99
                                                                                        je    .Lx126_114
                        cmp              eax, 13
                                                                                        jne   .Lx126_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx126_114
                                                                                        jmp   .Lx126_118
.Lx126_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx126_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx126_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx126_115
                                                                                        jmp   .Lx126_114
.Lx126_119:
                        cmp              eax, 6
                                                                                        jne   .Lx126_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx126_114
                                                                                        jmp   .Lx126_115
.Lx126_120:
                        cmp              eax, 1
                                                                                        jne   .Lx126_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx126_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx126_114
                                                                                        jmp   .Lx126_115
.Lx126_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx126_117
.Lx126_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx126_117
.Lx126_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx126_117:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n55_var_ref_α
                                                                                        jmp   n34_var_ref_α
n33_call_builtin_prolog_β:
                                                                                        jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n37_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1104]
                        lea              r8, [rbp + 1104]
.Lx133_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_61
                        cmp              esi, 1
                                                                                        jne   .Lx133_62
                        mov              r8, rax
                                                                                        jmp   .Lx133_60
.Lx133_62:
                        cmp              esi, 2
                                                                                        jne   .Lx133_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_61
                        mov              r8, rax
                                                                                        jmp   .Lx133_60
.Lx133_63:
                        cmp              eax, 13
                                                                                        jne   .Lx133_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_61
                        cmp              rax, r8
                                                                                        je    .Lx133_61
                        mov              r8, rax
                                                                                        jmp   .Lx133_60
.Lx133_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_80
                        cmp              eax, 99
                                                                                        je    .Lx133_80
                        cmp              eax, 13
                                                                                        jne   .Lx133_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx133_80
                                                                                        jmp   .Lx133_74
.Lx133_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx133_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx133_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx133_73
                        lea              r9, [rbp + 1120]
.Lx133_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_65
                        cmp              esi, 1
                                                                                        jne   .Lx133_66
                        mov              r9, rax
                                                                                        jmp   .Lx133_64
.Lx133_66:
                        cmp              esi, 2
                                                                                        jne   .Lx133_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_65
                        mov              r9, rax
                                                                                        jmp   .Lx133_64
.Lx133_67:
                        cmp              eax, 13
                                                                                        jne   .Lx133_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_65
                        cmp              rax, r9
                                                                                        je    .Lx133_65
                        mov              r9, rax
                                                                                        jmp   .Lx133_64
.Lx133_65:
                        lea              rcx, [rbp + 1136]
.Lx133_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx133_69
                        cmp              esi, 1
                                                                                        jne   .Lx133_70
                        mov              rcx, rax
                                                                                        jmp   .Lx133_68
.Lx133_70:
                        cmp              esi, 2
                                                                                        jne   .Lx133_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_69
                        mov              rcx, rax
                                                                                        jmp   .Lx133_68
.Lx133_71:
                        cmp              eax, 13
                                                                                        jne   .Lx133_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx133_69
                        cmp              rax, rcx
                                                                                        je    .Lx133_69
                        mov              rcx, rax
                                                                                        jmp   .Lx133_68
.Lx133_69:
                        cmp              r9, rcx
                                                                                        je    .Lx133_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_75
                        cmp              eax, 99
                                                                                        je    .Lx133_75
                        cmp              eax, 13
                                                                                        jne   .Lx133_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx133_75
                                                                                        jmp   .Lx133_72
.Lx133_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_76
                        cmp              eax, 99
                                                                                        je    .Lx133_76
                        cmp              eax, 13
                                                                                        jne   .Lx133_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx133_76
                                                                                        jmp   .Lx133_72
.Lx133_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx133_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx133_72
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
                                                                                        jmp   .Lx133_77
.Lx133_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx133_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx133_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx133_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx133_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx133_72
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
                        lea              r9, [rbp + 1120]
.Lx133_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_82
                        cmp              esi, 1
                                                                                        jne   .Lx133_83
                        mov              r9, rax
                                                                                        jmp   .Lx133_81
.Lx133_83:
                        cmp              esi, 2
                                                                                        jne   .Lx133_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_82
                        mov              r9, rax
                                                                                        jmp   .Lx133_81
.Lx133_84:
                        cmp              eax, 13
                                                                                        jne   .Lx133_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx133_82
                        cmp              rax, r9
                                                                                        je    .Lx133_82
                        mov              r9, rax
                                                                                        jmp   .Lx133_81
.Lx133_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_85
                        cmp              eax, 99
                                                                                        je    .Lx133_85
                        cmp              eax, 13
                                                                                        jne   .Lx133_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx133_85
                                                                                        jmp   .Lx133_86
.Lx133_85:
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
                                                                                        jmp   .Lx133_87
.Lx133_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx133_87:
                        lea              rcx, [rbp + 1136]
.Lx133_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx133_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx133_89
                        cmp              esi, 1
                                                                                        jne   .Lx133_90
                        mov              rcx, rax
                                                                                        jmp   .Lx133_88
.Lx133_90:
                        cmp              esi, 2
                                                                                        jne   .Lx133_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx133_89
                        mov              rcx, rax
                                                                                        jmp   .Lx133_88
.Lx133_91:
                        cmp              eax, 13
                                                                                        jne   .Lx133_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx133_89
                        cmp              rax, rcx
                                                                                        je    .Lx133_89
                        mov              rcx, rax
                                                                                        jmp   .Lx133_88
.Lx133_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx133_92
                        cmp              eax, 99
                                                                                        je    .Lx133_92
                        cmp              eax, 13
                                                                                        jne   .Lx133_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx133_92
                                                                                        jmp   .Lx133_93
.Lx133_92:
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
                                                                                        jmp   .Lx133_94
.Lx133_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx133_94:
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
                                                                                        jmp   .Lx133_77
.Lx133_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx133_77
.Lx133_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx133_77:
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 99
                                                                                        je    n54_call_builtin_prolog_α
                                                                                        jmp   n38_var_ref_α
n37_call_builtin_prolog_β:
                                                                                        jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        add              rsp, 16
                                                                                        jmp   n40_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
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
                        lea              r9, [rbp + 1024]
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
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n54_call_builtin_prolog_α
                                                                                        jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                                        jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        add              rsp, 16
                                                                                        jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        add              rsp, 16
                                                                                        jmp   n43_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lx143_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx143_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_41
                        cmp              esi, 1
                                                                                        jne   .Lx143_55
                        mov              r8, rax
                                                                                        jmp   .Lx143_40
.Lx143_55:
                        cmp              esi, 2
                                                                                        jne   .Lx143_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx143_41
                        mov              r8, rax
                                                                                        jmp   .Lx143_40
.Lx143_56:
                        cmp              eax, 13
                                                                                        jne   .Lx143_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_41
                        cmp              rax, r8
                                                                                        je    .Lx143_41
                        mov              r8, rax
                                                                                        jmp   .Lx143_40
.Lx143_41:
                        lea              r9, [rbp + 944]
.Lx143_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx143_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_43
                        cmp              esi, 1
                                                                                        jne   .Lx143_57
                        mov              r9, rax
                                                                                        jmp   .Lx143_42
.Lx143_57:
                        cmp              esi, 2
                                                                                        jne   .Lx143_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx143_43
                        mov              r9, rax
                                                                                        jmp   .Lx143_42
.Lx143_58:
                        cmp              eax, 13
                                                                                        jne   .Lx143_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx143_43
                        cmp              rax, r9
                                                                                        je    .Lx143_43
                        mov              r9, rax
                                                                                        jmp   .Lx143_42
.Lx143_43:
                        cmp              r8, r9
                                                                                        je    .Lx143_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx143_44
                        cmp              eax, 99
                                                                                        je    .Lx143_44
                        cmp              eax, 13
                                                                                        jne   .Lx143_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx143_44
                                                                                        jmp   .Lx143_45
.Lx143_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx143_53
                        cmp              eax, 99
                                                                                        je    .Lx143_53
                        cmp              eax, 13
                                                                                        jne   .Lx143_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx143_53
                                                                                        jmp   .Lx143_46
.Lx143_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx143_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx143_53
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
                                                                                        jmp   .Lx143_51
.Lx143_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx143_47
                        cmp              eax, 99
                                                                                        je    .Lx143_47
                        cmp              eax, 13
                                                                                        jne   .Lx143_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx143_47
                                                                                        jmp   .Lx143_48
.Lx143_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx143_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx143_53
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
                                                                                        jmp   .Lx143_51
.Lx143_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx143_49
                        cmp              edx, 14
                                                                                        je    .Lx143_53
                                                                                        jmp   .Lx143_52
.Lx143_49:
                        cmp              edx, 14
                                                                                        je    .Lx143_52
                        cmp              ecx, 7
                                                                                        je    .Lx143_53
                        cmp              edx, 7
                                                                                        je    .Lx143_53
                        cmp              ecx, 6
                                                                                        jne   .Lx143_50
                        cmp              edx, 6
                                                                                        jne   .Lx143_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx143_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx143_51
                                                                                        jmp   .Lx143_52
.Lx143_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx143_53
.Lx143_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx143_54
.Lx143_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx143_54
.Lx143_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx143_54:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n54_call_builtin_prolog_α
                                                                                        jmp   n44_var_ref_α
n43_call_builtin_prolog_β:
                                                                                        jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        add              rsp, 16
                                                                                        jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n47_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lx150_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx150_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx150_61
                        cmp              esi, 1
                                                                                        jne   .Lx150_62
                        mov              r8, rax
                                                                                        jmp   .Lx150_60
.Lx150_62:
                        cmp              esi, 2
                                                                                        jne   .Lx150_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx150_61
                        mov              r8, rax
                                                                                        jmp   .Lx150_60
.Lx150_63:
                        cmp              eax, 13
                                                                                        jne   .Lx150_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx150_61
                        cmp              rax, r8
                                                                                        je    .Lx150_61
                        mov              r8, rax
                                                                                        jmp   .Lx150_60
.Lx150_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx150_80
                        cmp              eax, 99
                                                                                        je    .Lx150_80
                        cmp              eax, 13
                                                                                        jne   .Lx150_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx150_80
                                                                                        jmp   .Lx150_74
.Lx150_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx150_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx150_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx150_73
                        lea              r9, [rbp + 848]
.Lx150_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx150_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx150_65
                        cmp              esi, 1
                                                                                        jne   .Lx150_66
                        mov              r9, rax
                                                                                        jmp   .Lx150_64
.Lx150_66:
                        cmp              esi, 2
                                                                                        jne   .Lx150_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx150_65
                        mov              r9, rax
                                                                                        jmp   .Lx150_64
.Lx150_67:
                        cmp              eax, 13
                                                                                        jne   .Lx150_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx150_65
                        cmp              rax, r9
                                                                                        je    .Lx150_65
                        mov              r9, rax
                                                                                        jmp   .Lx150_64
.Lx150_65:
                        lea              rcx, [rbp + 864]
.Lx150_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx150_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx150_69
                        cmp              esi, 1
                                                                                        jne   .Lx150_70
                        mov              rcx, rax
                                                                                        jmp   .Lx150_68
.Lx150_70:
                        cmp              esi, 2
                                                                                        jne   .Lx150_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx150_69
                        mov              rcx, rax
                                                                                        jmp   .Lx150_68
.Lx150_71:
                        cmp              eax, 13
                                                                                        jne   .Lx150_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx150_69
                        cmp              rax, rcx
                                                                                        je    .Lx150_69
                        mov              rcx, rax
                                                                                        jmp   .Lx150_68
.Lx150_69:
                        cmp              r9, rcx
                                                                                        je    .Lx150_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx150_75
                        cmp              eax, 99
                                                                                        je    .Lx150_75
                        cmp              eax, 13
                                                                                        jne   .Lx150_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx150_75
                                                                                        jmp   .Lx150_72
.Lx150_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx150_76
                        cmp              eax, 99
                                                                                        je    .Lx150_76
                        cmp              eax, 13
                                                                                        jne   .Lx150_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx150_76
                                                                                        jmp   .Lx150_72
.Lx150_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx150_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx150_72
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
                                                                                        jmp   .Lx150_77
.Lx150_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx150_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx150_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx150_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx150_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx150_72
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
                        lea              r9, [rbp + 848]
.Lx150_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx150_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx150_82
                        cmp              esi, 1
                                                                                        jne   .Lx150_83
                        mov              r9, rax
                                                                                        jmp   .Lx150_81
.Lx150_83:
                        cmp              esi, 2
                                                                                        jne   .Lx150_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx150_82
                        mov              r9, rax
                                                                                        jmp   .Lx150_81
.Lx150_84:
                        cmp              eax, 13
                                                                                        jne   .Lx150_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx150_82
                        cmp              rax, r9
                                                                                        je    .Lx150_82
                        mov              r9, rax
                                                                                        jmp   .Lx150_81
.Lx150_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx150_85
                        cmp              eax, 99
                                                                                        je    .Lx150_85
                        cmp              eax, 13
                                                                                        jne   .Lx150_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx150_85
                                                                                        jmp   .Lx150_86
.Lx150_85:
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
                                                                                        jmp   .Lx150_87
.Lx150_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx150_87:
                        lea              rcx, [rbp + 864]
.Lx150_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx150_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx150_89
                        cmp              esi, 1
                                                                                        jne   .Lx150_90
                        mov              rcx, rax
                                                                                        jmp   .Lx150_88
.Lx150_90:
                        cmp              esi, 2
                                                                                        jne   .Lx150_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx150_89
                        mov              rcx, rax
                                                                                        jmp   .Lx150_88
.Lx150_91:
                        cmp              eax, 13
                                                                                        jne   .Lx150_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx150_89
                        cmp              rax, rcx
                                                                                        je    .Lx150_89
                        mov              rcx, rax
                                                                                        jmp   .Lx150_88
.Lx150_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx150_92
                        cmp              eax, 99
                                                                                        je    .Lx150_92
                        cmp              eax, 13
                                                                                        jne   .Lx150_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx150_92
                                                                                        jmp   .Lx150_93
.Lx150_92:
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
                                                                                        jmp   .Lx150_94
.Lx150_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx150_94:
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
                                                                                        jmp   .Lx150_77
.Lx150_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx150_77
.Lx150_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx150_77:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n54_call_builtin_prolog_α
                                                                                        jmp   n48_var_ref_α
n47_call_builtin_prolog_β:
                                                                                        jmp   n54_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        add              rsp, 16
                                                                                        jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        add              rsp, 16
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        add              rsp, 16
                                                                                        jmp   n51_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        add              rsp, 16
                                                                                        jmp   n52_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α:
                        mov              qword ptr [rbp + 704], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_20
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx160_21
.Lx160_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        call             rt_arg_stage@PLT
.Lx160_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_22
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx160_23
.Lx160_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        call             rt_arg_stage@PLT
.Lx160_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_24
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx160_25
.Lx160_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        call             rt_arg_stage@PLT
.Lx160_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_26
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx160_27
.Lx160_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        call             rt_arg_stage@PLT
.Lx160_27:
                        mov              edi, 0
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx160_1
                        lea              rcx, [rip + .Lx160_3]
                        lea              rdx, [rip + .Lx160_4]
                                                                                        jmp   rax
.Lx160_3:
                        mov              qword ptr [rbp + 712], rsp
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx160_5
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx160_2
.Lx160_4:
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax
                                                                                        jne   .Lx160_6
                        mov              qword ptr [rbp + 704], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx160_2
.Lx160_1:
                        call             rt_faildescr@PLT
.Lx160_2:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n54_call_builtin_prolog_α
                                                                                        jmp   n53_suspend_α
n52_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 712]
                                                                                        jmp   qword ptr [rsp]
.Lx160_0:
                        .quad            .Lx160_0_s
.Lx160_0_s:
                        .string          "partition/4"
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_partition$2F4_γ
n53_suspend_β:
                                                                                        jmp   n52_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n54_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    proc_partition$2F4_ω
                                                                                        jmp   n55_var_ref_α
n54_call_builtin_prolog_β:
                                                                                        jmp   proc_partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        add              rsp, 16
                                                                                        jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:
                        mov              qword ptr [rbp + 560], 6
                        mov              rax, qword ptr [rip + .Lx166_0]
                        mov              qword ptr [rbp + 568], rax
                                                                                        jmp   n57_lit_string_α
.Lx166_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:
                        mov              qword ptr [rbp + 576], 1
                        mov              dword ptr [rbp + 580], 2
                        mov              rax, qword ptr [rip + .Lx167_0]
                        mov              qword ptr [rbp + 584], rax
                                                                                        jmp   n58_call_builtin_prolog_α
.Lx167_0:
                        .quad            .Lx167_0_s
.Lx167_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
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
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n59_var_ref_α
n58_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:
                        mov              qword ptr [rbp + 464], 1
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n61_call_builtin_prolog_α
.Lx171_0:
                        .quad            .Lx171_0_s
.Lx171_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              rsi, qword ptr [rip + .Lx172_2]
                                                                                        jmp   .Lx172_3
.Lx172_2:
                        .quad            .Lx172_2_s
.Lx172_2_s:
                        .string          "[]"
.Lx172_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n62_var_ref_α
n61_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        add              rsp, 16
                                                                                        jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        add              rsp, 16
                                                                                        jmp   n64_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 352]
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
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n65_var_ref_α
n64_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:
                        mov              qword ptr [rbp + 304], 1
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Lx180_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n67_call_builtin_prolog_α
.Lx180_0:
                        .quad            .Lx180_0_s
.Lx180_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lx181_2]
                                                                                        jmp   .Lx181_3
.Lx181_2:
                        .quad            .Lx181_2_s
.Lx181_2_s:
                        .string          "[]"
.Lx181_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n68_var_ref_α
n67_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:
                        mov              qword ptr [rbp + 224], 1
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Lx184_0]
                        mov              qword ptr [rbp + 232], rax
                                                                                        jmp   n70_call_builtin_prolog_α
.Lx184_0:
                        .quad            .Lx184_0_s
.Lx184_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              rsi, qword ptr [rip + .Lx185_2]
                                                                                        jmp   .Lx185_3
.Lx185_2:
                        .quad            .Lx185_2_s
.Lx185_2_s:
                        .string          "[]"
.Lx185_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n72_call_builtin_prolog_α
                                                                                        jmp   n71_suspend_α
n70_call_builtin_prolog_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_partition$2F4_γ
n71_suspend_β:
                                                                                        jmp   n72_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_builtin_prolog_α:
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
                                                                                        je    proc_partition$2F4_ω
                                                                                        jmp   proc_partition$2F4_ω
n72_call_builtin_prolog_β:
                                                                                        jmp   proc_partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_partition$2F4_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_partition$2F4_β:
                                                                                        jmp   qword ptr [rbp + 2080]
#-----------------------------------------------------------------------------------------------------------------------
proc_partition$2F4_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_partition$2F4_res]
                        push             rax
                        mov              rax, [rbp + 2216]
                        mov              rbp, [rbp + 2232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_partition$2F4_ω:
                        mov              rax, [rbp + 2224]
                        lea              rsp, [rbp + 2240]
                        mov              rbp, [rbp + 2232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_qsort$2F3_α
proc_qsort$2F3_α:
                        .global          proc_qsort$2F3_α
                        .global          proc_qsort$2F3_β
                        .global          proc_qsort$2F3_γ
                        .global          proc_qsort$2F3_ω
                        sub              rsp, 1664
                        mov              [rsp + 1640], rcx
                        mov              [rsp + 1648], rdx
                        mov              [rsp + 1656], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1632
                        call             rt_jmp_frame_lexprep2@PLT
proc_qsort$2F3_α_body:
                        lea              rax, [rip + n220_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
#-----------------------------------------------------------------------------------------------------------------------
n189_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx237_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx237_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx237_101
.Lx237_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx237_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_qsort$2F3_ω
                                                                                        jmp   n190_var_ref_α
n189_call_builtin_prolog_β:
                                                                                        jmp   proc_qsort$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        add              rsp, 16
                                                                                        jmp   n191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 6
                        mov              rax, qword ptr [rip + .Lx240_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n192_lit_integer_α
.Lx240_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:
                        mov              qword ptr [rbp + 1472], 6
                        mov              rax, qword ptr [rip + .Lx241_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n193_call_builtin_prolog_α
.Lx241_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n193_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1392]
                        lea              r8, [rbp + 1392]
.Lx242_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx242_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx242_111
                        cmp              esi, 1
                                                                                        jne   .Lx242_112
                        mov              r8, rax
                                                                                        jmp   .Lx242_110
.Lx242_112:
                        cmp              esi, 2
                                                                                        jne   .Lx242_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx242_111
                        mov              r8, rax
                                                                                        jmp   .Lx242_110
.Lx242_113:
                        cmp              eax, 13
                                                                                        jne   .Lx242_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx242_111
                        cmp              rax, r8
                                                                                        je    .Lx242_111
                        mov              r8, rax
                                                                                        jmp   .Lx242_110
.Lx242_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx242_114
                        cmp              eax, 99
                                                                                        je    .Lx242_114
                        cmp              eax, 13
                                                                                        jne   .Lx242_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx242_114
                                                                                        jmp   .Lx242_118
.Lx242_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx242_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx242_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx242_115
                                                                                        jmp   .Lx242_114
.Lx242_119:
                        cmp              eax, 6
                                                                                        jne   .Lx242_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx242_114
                                                                                        jmp   .Lx242_115
.Lx242_120:
                        cmp              eax, 1
                                                                                        jne   .Lx242_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx242_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx242_114
                                                                                        jmp   .Lx242_115
.Lx242_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx242_117
.Lx242_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx242_117
.Lx242_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx242_117:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    n222_var_ref_α
                                                                                        jmp   n194_var_ref_α
n193_call_builtin_prolog_β:
                                                                                        jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        add              rsp, 16
                                                                                        jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        add              rsp, 16
                                                                                        jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        add              rsp, 16
                                                                                        jmp   n197_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1296]
                        lea              r8, [rbp + 1296]
.Lx249_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_61
                        cmp              esi, 1
                                                                                        jne   .Lx249_62
                        mov              r8, rax
                                                                                        jmp   .Lx249_60
.Lx249_62:
                        cmp              esi, 2
                                                                                        jne   .Lx249_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_61
                        mov              r8, rax
                                                                                        jmp   .Lx249_60
.Lx249_63:
                        cmp              eax, 13
                                                                                        jne   .Lx249_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_61
                        cmp              rax, r8
                                                                                        je    .Lx249_61
                        mov              r8, rax
                                                                                        jmp   .Lx249_60
.Lx249_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_80
                        cmp              eax, 99
                                                                                        je    .Lx249_80
                        cmp              eax, 13
                                                                                        jne   .Lx249_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx249_80
                                                                                        jmp   .Lx249_74
.Lx249_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx249_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx249_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx249_73
                        lea              r9, [rbp + 1312]
.Lx249_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_65
                        cmp              esi, 1
                                                                                        jne   .Lx249_66
                        mov              r9, rax
                                                                                        jmp   .Lx249_64
.Lx249_66:
                        cmp              esi, 2
                                                                                        jne   .Lx249_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_65
                        mov              r9, rax
                                                                                        jmp   .Lx249_64
.Lx249_67:
                        cmp              eax, 13
                                                                                        jne   .Lx249_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_65
                        cmp              rax, r9
                                                                                        je    .Lx249_65
                        mov              r9, rax
                                                                                        jmp   .Lx249_64
.Lx249_65:
                        lea              rcx, [rbp + 1328]
.Lx249_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx249_69
                        cmp              esi, 1
                                                                                        jne   .Lx249_70
                        mov              rcx, rax
                                                                                        jmp   .Lx249_68
.Lx249_70:
                        cmp              esi, 2
                                                                                        jne   .Lx249_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_69
                        mov              rcx, rax
                                                                                        jmp   .Lx249_68
.Lx249_71:
                        cmp              eax, 13
                                                                                        jne   .Lx249_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx249_69
                        cmp              rax, rcx
                                                                                        je    .Lx249_69
                        mov              rcx, rax
                                                                                        jmp   .Lx249_68
.Lx249_69:
                        cmp              r9, rcx
                                                                                        je    .Lx249_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_75
                        cmp              eax, 99
                                                                                        je    .Lx249_75
                        cmp              eax, 13
                                                                                        jne   .Lx249_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_75
                                                                                        jmp   .Lx249_72
.Lx249_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_76
                        cmp              eax, 99
                                                                                        je    .Lx249_76
                        cmp              eax, 13
                                                                                        jne   .Lx249_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx249_76
                                                                                        jmp   .Lx249_72
.Lx249_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx249_72
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
                                                                                        jmp   .Lx249_77
.Lx249_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx249_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx249_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx249_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx249_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx249_72
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
                        lea              r9, [rbp + 1312]
.Lx249_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_82
                        cmp              esi, 1
                                                                                        jne   .Lx249_83
                        mov              r9, rax
                                                                                        jmp   .Lx249_81
.Lx249_83:
                        cmp              esi, 2
                                                                                        jne   .Lx249_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_82
                        mov              r9, rax
                                                                                        jmp   .Lx249_81
.Lx249_84:
                        cmp              eax, 13
                                                                                        jne   .Lx249_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx249_82
                        cmp              rax, r9
                                                                                        je    .Lx249_82
                        mov              r9, rax
                                                                                        jmp   .Lx249_81
.Lx249_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_85
                        cmp              eax, 99
                                                                                        je    .Lx249_85
                        cmp              eax, 13
                                                                                        jne   .Lx249_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx249_85
                                                                                        jmp   .Lx249_86
.Lx249_85:
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
                                                                                        jmp   .Lx249_87
.Lx249_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx249_87:
                        lea              rcx, [rbp + 1328]
.Lx249_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx249_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx249_89
                        cmp              esi, 1
                                                                                        jne   .Lx249_90
                        mov              rcx, rax
                                                                                        jmp   .Lx249_88
.Lx249_90:
                        cmp              esi, 2
                                                                                        jne   .Lx249_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx249_89
                        mov              rcx, rax
                                                                                        jmp   .Lx249_88
.Lx249_91:
                        cmp              eax, 13
                                                                                        jne   .Lx249_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx249_89
                        cmp              rax, rcx
                                                                                        je    .Lx249_89
                        mov              rcx, rax
                                                                                        jmp   .Lx249_88
.Lx249_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx249_92
                        cmp              eax, 99
                                                                                        je    .Lx249_92
                        cmp              eax, 13
                                                                                        jne   .Lx249_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx249_92
                                                                                        jmp   .Lx249_93
.Lx249_92:
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
                                                                                        jmp   .Lx249_94
.Lx249_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx249_94:
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
                                                                                        jmp   .Lx249_77
.Lx249_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx249_77
.Lx249_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx249_77:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_builtin_prolog_α
                                                                                        jmp   n198_var_ref_α
n197_call_builtin_prolog_β:
                                                                                        jmp   n221_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        add              rsp, 16
                                                                                        jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        add              rsp, 16
                                                                                        jmp   n200_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_builtin_prolog_α:
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
.Lx254_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              esi, 1
                                                                                        jne   .Lx254_55
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_55:
                        cmp              esi, 2
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_56:
                        cmp              eax, 13
                                                                                        jne   .Lx254_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_41
                        cmp              rax, r8
                                                                                        je    .Lx254_41
                        mov              r8, rax
                                                                                        jmp   .Lx254_40
.Lx254_41:
                        lea              r9, [rbp + 1216]
.Lx254_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx254_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              esi, 1
                                                                                        jne   .Lx254_57
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_57:
                        cmp              esi, 2
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_58:
                        cmp              eax, 13
                                                                                        jne   .Lx254_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx254_43
                        cmp              rax, r9
                                                                                        je    .Lx254_43
                        mov              r9, rax
                                                                                        jmp   .Lx254_42
.Lx254_43:
                        cmp              r8, r9
                                                                                        je    .Lx254_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_44
                        cmp              eax, 99
                                                                                        je    .Lx254_44
                        cmp              eax, 13
                                                                                        jne   .Lx254_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx254_44
                                                                                        jmp   .Lx254_45
.Lx254_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_53
                        cmp              eax, 99
                                                                                        je    .Lx254_53
                        cmp              eax, 13
                                                                                        jne   .Lx254_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_46
.Lx254_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx254_47
                        cmp              eax, 99
                                                                                        je    .Lx254_47
                        cmp              eax, 13
                                                                                        jne   .Lx254_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx254_47
                                                                                        jmp   .Lx254_48
.Lx254_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx254_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx254_53
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
                                                                                        jmp   .Lx254_51
.Lx254_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx254_49
                        cmp              edx, 14
                                                                                        je    .Lx254_53
                                                                                        jmp   .Lx254_52
.Lx254_49:
                        cmp              edx, 14
                                                                                        je    .Lx254_52
                        cmp              ecx, 7
                                                                                        je    .Lx254_53
                        cmp              edx, 7
                                                                                        je    .Lx254_53
                        cmp              ecx, 6
                                                                                        jne   .Lx254_50
                        cmp              edx, 6
                                                                                        jne   .Lx254_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx254_51
                                                                                        jmp   .Lx254_52
.Lx254_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx254_53
.Lx254_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx254_54
.Lx254_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx254_54
.Lx254_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx254_54:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_builtin_prolog_α
                                                                                        jmp   n201_var_ref_α
n200_call_builtin_prolog_β:
                                                                                        jmp   n221_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        add              rsp, 16
                                                                                        jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        add              rsp, 16
                                                                                        jmp   n203_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_builtin_prolog_α:
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
.Lx259_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx259_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_41
                        cmp              esi, 1
                                                                                        jne   .Lx259_55
                        mov              r8, rax
                                                                                        jmp   .Lx259_40
.Lx259_55:
                        cmp              esi, 2
                                                                                        jne   .Lx259_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx259_41
                        mov              r8, rax
                                                                                        jmp   .Lx259_40
.Lx259_56:
                        cmp              eax, 13
                                                                                        jne   .Lx259_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_41
                        cmp              rax, r8
                                                                                        je    .Lx259_41
                        mov              r8, rax
                                                                                        jmp   .Lx259_40
.Lx259_41:
                        lea              r9, [rbp + 1136]
.Lx259_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx259_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_43
                        cmp              esi, 1
                                                                                        jne   .Lx259_57
                        mov              r9, rax
                                                                                        jmp   .Lx259_42
.Lx259_57:
                        cmp              esi, 2
                                                                                        jne   .Lx259_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx259_43
                        mov              r9, rax
                                                                                        jmp   .Lx259_42
.Lx259_58:
                        cmp              eax, 13
                                                                                        jne   .Lx259_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx259_43
                        cmp              rax, r9
                                                                                        je    .Lx259_43
                        mov              r9, rax
                                                                                        jmp   .Lx259_42
.Lx259_43:
                        cmp              r8, r9
                                                                                        je    .Lx259_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx259_44
                        cmp              eax, 99
                                                                                        je    .Lx259_44
                        cmp              eax, 13
                                                                                        jne   .Lx259_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx259_44
                                                                                        jmp   .Lx259_45
.Lx259_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx259_53
                        cmp              eax, 99
                                                                                        je    .Lx259_53
                        cmp              eax, 13
                                                                                        jne   .Lx259_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx259_53
                                                                                        jmp   .Lx259_46
.Lx259_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx259_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx259_53
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
                                                                                        jmp   .Lx259_51
.Lx259_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx259_47
                        cmp              eax, 99
                                                                                        je    .Lx259_47
                        cmp              eax, 13
                                                                                        jne   .Lx259_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx259_47
                                                                                        jmp   .Lx259_48
.Lx259_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx259_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx259_53
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
                                                                                        jmp   .Lx259_51
.Lx259_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx259_49
                        cmp              edx, 14
                                                                                        je    .Lx259_53
                                                                                        jmp   .Lx259_52
.Lx259_49:
                        cmp              edx, 14
                                                                                        je    .Lx259_52
                        cmp              ecx, 7
                                                                                        je    .Lx259_53
                        cmp              edx, 7
                                                                                        je    .Lx259_53
                        cmp              ecx, 6
                                                                                        jne   .Lx259_50
                        cmp              edx, 6
                                                                                        jne   .Lx259_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx259_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx259_51
                                                                                        jmp   .Lx259_52
.Lx259_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx259_53
.Lx259_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx259_54
.Lx259_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx259_54
.Lx259_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx259_54:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_builtin_prolog_α
                                                                                        jmp   n204_var_ref_α
n203_call_builtin_prolog_β:
                                                                                        jmp   n221_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        add              rsp, 16
                                                                                        jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        add              rsp, 16
                                                                                        jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        add              rsp, 16
                                                                                        jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        add              rsp, 16
                                                                                        jmp   n208_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              qword ptr [rbp + 1008], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_20
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx269_21
.Lx269_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        call             rt_arg_stage@PLT
.Lx269_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_22
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx269_23
.Lx269_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        call             rt_arg_stage@PLT
.Lx269_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_24
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx269_25
.Lx269_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        call             rt_arg_stage@PLT
.Lx269_25:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_26
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 48], rax
                        mov              qword ptr [r10 + 56], rdx
                                                                                        jmp   .Lx269_27
.Lx269_26:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        call             rt_arg_stage@PLT
.Lx269_27:
                        mov              edi, 0
                        mov              esi, 4
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx269_1
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4]
                                                                                        jmp   rax
.Lx269_3:
                        mov              qword ptr [rbp + 1016], rsp
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx269_5
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_4:
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax
                                                                                        jne   .Lx269_6
                        mov              qword ptr [rbp + 1008], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_1:
                        call             rt_faildescr@PLT
.Lx269_2:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_builtin_prolog_α
                                                                                        jmp   n209_var_ref_α
n208_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1016]
                                                                                        jmp   qword ptr [rsp]
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "partition/4"
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        add              rsp, 16
                                                                                        jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        add              rsp, 16
                                                                                        jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        add              rsp, 16
                                                                                        jmp   n212_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              qword ptr [rbp + 848], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_20
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx277_21
.Lx277_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        call             rt_arg_stage@PLT
.Lx277_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_22
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx277_23
.Lx277_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        call             rt_arg_stage@PLT
.Lx277_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx277_24
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx277_25
.Lx277_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        call             rt_arg_stage@PLT
.Lx277_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx277_1
                        lea              rcx, [rip + .Lx277_3]
                        lea              rdx, [rip + .Lx277_4]
                                                                                        jmp   rax
.Lx277_3:
                        mov              qword ptr [rbp + 856], rsp
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx277_5
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx277_2
.Lx277_4:
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax
                                                                                        jne   .Lx277_6
                        mov              qword ptr [rbp + 848], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx277_2
.Lx277_1:
                        call             rt_faildescr@PLT
.Lx277_2:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    n208_call_proc_staged_β
                                                                                        jmp   n213_var_ref_α
n212_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 856]
                                                                                        jmp   qword ptr [rsp]
.Lx277_0:
                        .quad            .Lx277_0_s
.Lx277_0_s:
                        .string          "qsort/3"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        add              rsp, 16
                                                                                        jmp   n214_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        add              rsp, 16
                                                                                        jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:
                        mov              qword ptr [rbp + 768], 1
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Lx282_0]
                        mov              qword ptr [rbp + 776], rax
                                                                                        jmp   n216_var_ref_α
.Lx282_0:
                        .quad            .Lx282_0_s
.Lx282_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        add              rsp, 16
                                                                                        jmp   n217_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        add              rsp, 16
                                                                                        jmp   n218_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              eax, 99
                                                                                        je    n221_call_builtin_prolog_α
                                                                                        jmp   n219_call_proc_staged_α
n218_call_builtin_prolog_β:
                                                                                        jmp   n221_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              qword ptr [rbp + 592], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_20
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx289_21
.Lx289_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        call             rt_arg_stage@PLT
.Lx289_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_22
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx289_23
.Lx289_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        call             rt_arg_stage@PLT
.Lx289_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx289_24
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx289_25
.Lx289_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        call             rt_arg_stage@PLT
.Lx289_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx289_1
                        lea              rcx, [rip + .Lx289_3]
                        lea              rdx, [rip + .Lx289_4]
                                                                                        jmp   rax
.Lx289_3:
                        mov              qword ptr [rbp + 600], rsp
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx289_5
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx289_2
.Lx289_4:
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax
                                                                                        jne   .Lx289_6
                        mov              qword ptr [rbp + 592], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx289_2
.Lx289_1:
                        call             rt_faildescr@PLT
.Lx289_2:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              eax, 99
                                                                                        je    n212_call_proc_staged_β
                                                                                        jmp   n220_suspend_α
n219_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 600]
                                                                                        jmp   qword ptr [rsp]
.Lx289_0:
                        .quad            .Lx289_0_s
.Lx289_0_s:
                        .string          "qsort/3"
#-----------------------------------------------------------------------------------------------------------------------
n220_suspend_α:
                        lea              rax, [rip + n220_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_qsort$2F3_γ
n220_suspend_β:
                                                                                        jmp   n219_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n221_call_builtin_prolog_α:
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
                                                                                        je    proc_qsort$2F3_ω
                                                                                        jmp   n222_var_ref_α
n221_call_builtin_prolog_β:
                                                                                        jmp   proc_qsort$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        add              rsp, 16
                                                                                        jmp   n223_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:
                        mov              qword ptr [rbp + 464], 6
                        mov              rax, qword ptr [rip + .Lx295_0]
                        mov              qword ptr [rbp + 472], rax
                                                                                        jmp   n224_lit_string_α
.Lx295_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              dword ptr [rbp + 484], 2
                        mov              rax, qword ptr [rip + .Lx296_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n225_call_builtin_prolog_α
.Lx296_0:
                        .quad            .Lx296_0_s
.Lx296_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n225_call_builtin_prolog_α:
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
.Lx297_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx297_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_111
                        cmp              esi, 1
                                                                                        jne   .Lx297_112
                        mov              r8, rax
                                                                                        jmp   .Lx297_110
.Lx297_112:
                        cmp              esi, 2
                                                                                        jne   .Lx297_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx297_111
                        mov              r8, rax
                                                                                        jmp   .Lx297_110
.Lx297_113:
                        cmp              eax, 13
                                                                                        jne   .Lx297_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx297_111
                        cmp              rax, r8
                                                                                        je    .Lx297_111
                        mov              r8, rax
                                                                                        jmp   .Lx297_110
.Lx297_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx297_114
                        cmp              eax, 99
                                                                                        je    .Lx297_114
                        cmp              eax, 13
                                                                                        jne   .Lx297_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx297_114
                                                                                        jmp   .Lx297_118
.Lx297_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx297_115
                        cmp              eax, 6
                                                                                        je    .Lx297_114
                        cmp              eax, 1
                                                                                        jne   .Lx297_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx297_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx297_114
                                                                                        jmp   .Lx297_116
.Lx297_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx297_117
.Lx297_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx297_117
.Lx297_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx297_117:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_builtin_prolog_α
                                                                                        jmp   n226_var_ref_α
n225_call_builtin_prolog_β:
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        add              rsp, 16
                                                                                        jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              dword ptr [rbp + 372], 2
                        mov              rax, qword ptr [rip + .Lx300_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n228_call_builtin_prolog_α
.Lx300_0:
                        .quad            .Lx300_0_s
.Lx300_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n228_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              rsi, qword ptr [rip + .Lx301_2]
                                                                                        jmp   .Lx301_3
.Lx301_2:
                        .quad            .Lx301_2_s
.Lx301_2_s:
                        .string          "[]"
.Lx301_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_builtin_prolog_α
                                                                                        jmp   n229_var_ref_α
n228_call_builtin_prolog_β:
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        add              rsp, 16
                                                                                        jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        add              rsp, 16
                                                                                        jmp   n231_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_builtin_prolog_α:
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
.Lx306_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        cmp              esi, 1
                                                                                        jne   .Lx306_55
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_55:
                        cmp              esi, 2
                                                                                        jne   .Lx306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_56:
                        cmp              eax, 13
                                                                                        jne   .Lx306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_41
                        cmp              rax, r8
                                                                                        je    .Lx306_41
                        mov              r8, rax
                                                                                        jmp   .Lx306_40
.Lx306_41:
                        lea              r9, [rbp + 256]
.Lx306_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        cmp              esi, 1
                                                                                        jne   .Lx306_57
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_57:
                        cmp              esi, 2
                                                                                        jne   .Lx306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_58:
                        cmp              eax, 13
                                                                                        jne   .Lx306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx306_43
                        cmp              rax, r9
                                                                                        je    .Lx306_43
                        mov              r9, rax
                                                                                        jmp   .Lx306_42
.Lx306_43:
                        cmp              r8, r9
                                                                                        je    .Lx306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_44
                        cmp              eax, 99
                                                                                        je    .Lx306_44
                        cmp              eax, 13
                                                                                        jne   .Lx306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx306_44
                                                                                        jmp   .Lx306_45
.Lx306_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_53
                        cmp              eax, 99
                                                                                        je    .Lx306_53
                        cmp              eax, 13
                                                                                        jne   .Lx306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx306_53
                                                                                        jmp   .Lx306_46
.Lx306_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx306_53
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
                                                                                        jmp   .Lx306_51
.Lx306_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx306_47
                        cmp              eax, 99
                                                                                        je    .Lx306_47
                        cmp              eax, 13
                                                                                        jne   .Lx306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx306_47
                                                                                        jmp   .Lx306_48
.Lx306_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx306_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx306_53
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
                                                                                        jmp   .Lx306_51
.Lx306_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx306_49
                        cmp              edx, 14
                                                                                        je    .Lx306_53
                                                                                        jmp   .Lx306_52
.Lx306_49:
                        cmp              edx, 14
                                                                                        je    .Lx306_52
                        cmp              ecx, 7
                                                                                        je    .Lx306_53
                        cmp              edx, 7
                                                                                        je    .Lx306_53
                        cmp              ecx, 6
                                                                                        jne   .Lx306_50
                        cmp              edx, 6
                                                                                        jne   .Lx306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx306_51
                                                                                        jmp   .Lx306_52
.Lx306_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx306_53
.Lx306_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx306_54
.Lx306_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx306_54
.Lx306_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx306_54:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_builtin_prolog_α
                                                                                        jmp   n232_var_ref_α
n231_call_builtin_prolog_β:
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        add              rsp, 16
                                                                                        jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        add              rsp, 16
                                                                                        jmp   n234_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_builtin_prolog_α:
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
                        lea              r9, [rbp + 176]
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
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_builtin_prolog_α
                                                                                        jmp   n235_suspend_α
n234_call_builtin_prolog_β:
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_suspend_α:
                        lea              rax, [rip + n235_suspend_β]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_qsort$2F3_γ
n235_suspend_β:
                                                                                        jmp   n236_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_builtin_prolog_α:
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
                                                                                        je    proc_qsort$2F3_ω
                                                                                        jmp   proc_qsort$2F3_ω
n236_call_builtin_prolog_β:
                                                                                        jmp   proc_qsort$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_qsort$2F3_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_qsort$2F3_β:
                                                                                        jmp   qword ptr [rbp + 1488]
#-----------------------------------------------------------------------------------------------------------------------
proc_qsort$2F3_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_qsort$2F3_res]
                        push             rax
                        mov              rax, [rbp + 1640]
                        mov              rbp, [rbp + 1656]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_qsort$2F3_ω:
                        mov              rax, [rbp + 1648]
                        lea              rsp, [rbp + 1664]
                        mov              rbp, [rbp + 1656]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "partition/4"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_partition$2F4_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 4
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "qsort/3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_qsort$2F3_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 3
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
                        sub              rsp, 5960
                        mov              rdi, rsp
                        mov              ecx, 5960
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 5952], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_builtin_prolog_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx477_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx477_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx477_101
.Lx477_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx477_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n316_lit_string_α
n315_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:
                        mov              qword ptr [rbp + 5888], 1
                        mov              dword ptr [rbp + 5892], 1
                        mov              rax, qword ptr [rip + .Lx478_0]
                        mov              qword ptr [rbp + 5896], rax
                                                                                        jmp   n317_lit_integer_α
.Lx478_0:
                        .quad            .Lx478_0_s
.Lx478_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:
                        mov              qword ptr [rbp + 5792], 6
                        mov              rax, qword ptr [rip + .Lx479_0]
                        mov              qword ptr [rbp + 5800], rax
                                                                                        jmp   n318_lit_string_α
.Lx479_0:
                        .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:
                        mov              qword ptr [rbp + 5776], 1
                        mov              dword ptr [rbp + 5780], 1
                        mov              rax, qword ptr [rip + .Lx480_0]
                        mov              qword ptr [rbp + 5784], rax
                                                                                        jmp   n319_lit_integer_α
.Lx480_0:
                        .quad            .Lx480_0_s
.Lx480_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:
                        mov              qword ptr [rbp + 5680], 6
                        mov              rax, qword ptr [rip + .Lx481_0]
                        mov              qword ptr [rbp + 5688], rax
                                                                                        jmp   n320_lit_string_α
.Lx481_0:
                        .quad            74
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:
                        mov              qword ptr [rbp + 5664], 1
                        mov              dword ptr [rbp + 5668], 1
                        mov              rax, qword ptr [rip + .Lx482_0]
                        mov              qword ptr [rbp + 5672], rax
                                                                                        jmp   n321_lit_integer_α
.Lx482_0:
                        .quad            .Lx482_0_s
.Lx482_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:
                        mov              qword ptr [rbp + 5568], 6
                        mov              rax, qword ptr [rip + .Lx483_0]
                        mov              qword ptr [rbp + 5576], rax
                                                                                        jmp   n322_lit_string_α
.Lx483_0:
                        .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:
                        mov              qword ptr [rbp + 5552], 1
                        mov              dword ptr [rbp + 5556], 1
                        mov              rax, qword ptr [rip + .Lx484_0]
                        mov              qword ptr [rbp + 5560], rax
                                                                                        jmp   n323_lit_integer_α
.Lx484_0:
                        .quad            .Lx484_0_s
.Lx484_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:
                        mov              qword ptr [rbp + 5456], 6
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 5464], rax
                                                                                        jmp   n324_lit_string_α
.Lx485_0:
                        .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:
                        mov              qword ptr [rbp + 5440], 1
                        mov              dword ptr [rbp + 5444], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 5448], rax
                                                                                        jmp   n325_lit_integer_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_integer_α:
                        mov              qword ptr [rbp + 5344], 6
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rbp + 5352], rax
                                                                                        jmp   n326_lit_string_α
.Lx487_0:
                        .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:
                        mov              qword ptr [rbp + 5328], 1
                        mov              dword ptr [rbp + 5332], 1
                        mov              rax, qword ptr [rip + .Lx488_0]
                        mov              qword ptr [rbp + 5336], rax
                                                                                        jmp   n327_lit_integer_α
.Lx488_0:
                        .quad            .Lx488_0_s
.Lx488_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:
                        mov              qword ptr [rbp + 5232], 6
                        mov              rax, qword ptr [rip + .Lx489_0]
                        mov              qword ptr [rbp + 5240], rax
                                                                                        jmp   n328_lit_string_α
.Lx489_0:
                        .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:
                        mov              qword ptr [rbp + 5216], 1
                        mov              dword ptr [rbp + 5220], 1
                        mov              rax, qword ptr [rip + .Lx490_0]
                        mov              qword ptr [rbp + 5224], rax
                                                                                        jmp   n329_lit_integer_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_integer_α:
                        mov              qword ptr [rbp + 5120], 6
                        mov              rax, qword ptr [rip + .Lx491_0]
                        mov              qword ptr [rbp + 5128], rax
                                                                                        jmp   n330_lit_string_α
.Lx491_0:
                        .quad            46
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:
                        mov              qword ptr [rbp + 5104], 1
                        mov              dword ptr [rbp + 5108], 1
                        mov              rax, qword ptr [rip + .Lx492_0]
                        mov              qword ptr [rbp + 5112], rax
                                                                                        jmp   n331_lit_integer_α
.Lx492_0:
                        .quad            .Lx492_0_s
.Lx492_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:
                        mov              qword ptr [rbp + 5008], 6
                        mov              rax, qword ptr [rip + .Lx493_0]
                        mov              qword ptr [rbp + 5016], rax
                                                                                        jmp   n332_lit_string_α
.Lx493_0:
                        .quad            83
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:
                        mov              qword ptr [rbp + 4992], 1
                        mov              dword ptr [rbp + 4996], 1
                        mov              rax, qword ptr [rip + .Lx494_0]
                        mov              qword ptr [rbp + 5000], rax
                                                                                        jmp   n333_lit_integer_α
.Lx494_0:
                        .quad            .Lx494_0_s
.Lx494_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:
                        mov              qword ptr [rbp + 4896], 6
                        mov              rax, qword ptr [rip + .Lx495_0]
                        mov              qword ptr [rbp + 4904], rax
                                                                                        jmp   n334_lit_string_α
.Lx495_0:
                        .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:
                        mov              qword ptr [rbp + 4880], 1
                        mov              dword ptr [rbp + 4884], 1
                        mov              rax, qword ptr [rip + .Lx496_0]
                        mov              qword ptr [rbp + 4888], rax
                                                                                        jmp   n335_lit_integer_α
.Lx496_0:
                        .quad            .Lx496_0_s
.Lx496_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:
                        mov              qword ptr [rbp + 4784], 6
                        mov              rax, qword ptr [rip + .Lx497_0]
                        mov              qword ptr [rbp + 4792], rax
                                                                                        jmp   n336_lit_string_α
.Lx497_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:
                        mov              qword ptr [rbp + 4768], 1
                        mov              dword ptr [rbp + 4772], 1
                        mov              rax, qword ptr [rip + .Lx498_0]
                        mov              qword ptr [rbp + 4776], rax
                                                                                        jmp   n337_lit_integer_α
.Lx498_0:
                        .quad            .Lx498_0_s
.Lx498_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:
                        mov              qword ptr [rbp + 4672], 6
                        mov              rax, qword ptr [rip + .Lx499_0]
                        mov              qword ptr [rbp + 4680], rax
                                                                                        jmp   n338_lit_string_α
.Lx499_0:
                        .quad            32
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:
                        mov              qword ptr [rbp + 4656], 1
                        mov              dword ptr [rbp + 4660], 1
                        mov              rax, qword ptr [rip + .Lx500_0]
                        mov              qword ptr [rbp + 4664], rax
                                                                                        jmp   n339_lit_integer_α
.Lx500_0:
                        .quad            .Lx500_0_s
.Lx500_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:
                        mov              qword ptr [rbp + 4560], 6
                        mov              rax, qword ptr [rip + .Lx501_0]
                        mov              qword ptr [rbp + 4568], rax
                                                                                        jmp   n340_lit_string_α
.Lx501_0:
                        .quad            53
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:
                        mov              qword ptr [rbp + 4544], 1
                        mov              dword ptr [rbp + 4548], 1
                        mov              rax, qword ptr [rip + .Lx502_0]
                        mov              qword ptr [rbp + 4552], rax
                                                                                        jmp   n341_lit_integer_α
.Lx502_0:
                        .quad            .Lx502_0_s
.Lx502_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_integer_α:
                        mov              qword ptr [rbp + 4448], 6
                        mov              rax, qword ptr [rip + .Lx503_0]
                        mov              qword ptr [rbp + 4456], rax
                                                                                        jmp   n342_lit_string_α
.Lx503_0:
                        .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:
                        mov              qword ptr [rbp + 4432], 1
                        mov              dword ptr [rbp + 4436], 1
                        mov              rax, qword ptr [rip + .Lx504_0]
                        mov              qword ptr [rbp + 4440], rax
                                                                                        jmp   n343_lit_integer_α
.Lx504_0:
                        .quad            .Lx504_0_s
.Lx504_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:
                        mov              qword ptr [rbp + 4336], 6
                        mov              rax, qword ptr [rip + .Lx505_0]
                        mov              qword ptr [rbp + 4344], rax
                                                                                        jmp   n344_lit_string_α
.Lx505_0:
                        .quad            85
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:
                        mov              qword ptr [rbp + 4320], 1
                        mov              dword ptr [rbp + 4324], 1
                        mov              rax, qword ptr [rip + .Lx506_0]
                        mov              qword ptr [rbp + 4328], rax
                                                                                        jmp   n345_lit_integer_α
.Lx506_0:
                        .quad            .Lx506_0_s
.Lx506_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:
                        mov              qword ptr [rbp + 4224], 6
                        mov              rax, qword ptr [rip + .Lx507_0]
                        mov              qword ptr [rbp + 4232], rax
                                                                                        jmp   n346_lit_string_α
.Lx507_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:
                        mov              qword ptr [rbp + 4208], 1
                        mov              dword ptr [rbp + 4212], 1
                        mov              rax, qword ptr [rip + .Lx508_0]
                        mov              qword ptr [rbp + 4216], rax
                                                                                        jmp   n347_lit_integer_α
.Lx508_0:
                        .quad            .Lx508_0_s
.Lx508_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:
                        mov              qword ptr [rbp + 4112], 6
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 4120], rax
                                                                                        jmp   n348_lit_string_α
.Lx509_0:
                        .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:
                        mov              qword ptr [rbp + 4096], 1
                        mov              dword ptr [rbp + 4100], 1
                        mov              rax, qword ptr [rip + .Lx510_0]
                        mov              qword ptr [rbp + 4104], rax
                                                                                        jmp   n349_lit_integer_α
.Lx510_0:
                        .quad            .Lx510_0_s
.Lx510_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:
                        mov              qword ptr [rbp + 4000], 6
                        mov              rax, qword ptr [rip + .Lx511_0]
                        mov              qword ptr [rbp + 4008], rax
                                                                                        jmp   n350_lit_string_α
.Lx511_0:
                        .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:
                        mov              qword ptr [rbp + 3984], 1
                        mov              dword ptr [rbp + 3988], 1
                        mov              rax, qword ptr [rip + .Lx512_0]
                        mov              qword ptr [rbp + 3992], rax
                                                                                        jmp   n351_lit_integer_α
.Lx512_0:
                        .quad            .Lx512_0_s
.Lx512_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:
                        mov              qword ptr [rbp + 3888], 6
                        mov              rax, qword ptr [rip + .Lx513_0]
                        mov              qword ptr [rbp + 3896], rax
                                                                                        jmp   n352_lit_string_α
.Lx513_0:
                        .quad            82
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:
                        mov              qword ptr [rbp + 3872], 1
                        mov              dword ptr [rbp + 3876], 1
                        mov              rax, qword ptr [rip + .Lx514_0]
                        mov              qword ptr [rbp + 3880], rax
                                                                                        jmp   n353_lit_integer_α
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:
                        mov              qword ptr [rbp + 3776], 6
                        mov              rax, qword ptr [rip + .Lx515_0]
                        mov              qword ptr [rbp + 3784], rax
                                                                                        jmp   n354_lit_string_α
.Lx515_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:
                        mov              qword ptr [rbp + 3760], 1
                        mov              dword ptr [rbp + 3764], 1
                        mov              rax, qword ptr [rip + .Lx516_0]
                        mov              qword ptr [rbp + 3768], rax
                                                                                        jmp   n355_lit_integer_α
.Lx516_0:
                        .quad            .Lx516_0_s
.Lx516_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:
                        mov              qword ptr [rbp + 3664], 6
                        mov              rax, qword ptr [rip + .Lx517_0]
                        mov              qword ptr [rbp + 3672], rax
                                                                                        jmp   n356_lit_string_α
.Lx517_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:
                        mov              qword ptr [rbp + 3648], 1
                        mov              dword ptr [rbp + 3652], 1
                        mov              rax, qword ptr [rip + .Lx518_0]
                        mov              qword ptr [rbp + 3656], rax
                                                                                        jmp   n357_lit_integer_α
.Lx518_0:
                        .quad            .Lx518_0_s
.Lx518_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:
                        mov              qword ptr [rbp + 3552], 6
                        mov              rax, qword ptr [rip + .Lx519_0]
                        mov              qword ptr [rbp + 3560], rax
                                                                                        jmp   n358_lit_string_α
.Lx519_0:
                        .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:
                        mov              qword ptr [rbp + 3536], 1
                        mov              dword ptr [rbp + 3540], 1
                        mov              rax, qword ptr [rip + .Lx520_0]
                        mov              qword ptr [rbp + 3544], rax
                                                                                        jmp   n359_lit_integer_α
.Lx520_0:
                        .quad            .Lx520_0_s
.Lx520_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_integer_α:
                        mov              qword ptr [rbp + 3440], 6
                        mov              rax, qword ptr [rip + .Lx521_0]
                        mov              qword ptr [rbp + 3448], rax
                                                                                        jmp   n360_lit_string_α
.Lx521_0:
                        .quad            29
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:
                        mov              qword ptr [rbp + 3424], 1
                        mov              dword ptr [rbp + 3428], 1
                        mov              rax, qword ptr [rip + .Lx522_0]
                        mov              qword ptr [rbp + 3432], rax
                                                                                        jmp   n361_lit_integer_α
.Lx522_0:
                        .quad            .Lx522_0_s
.Lx522_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:
                        mov              qword ptr [rbp + 3328], 6
                        mov              rax, qword ptr [rip + .Lx523_0]
                        mov              qword ptr [rbp + 3336], rax
                                                                                        jmp   n362_lit_string_α
.Lx523_0:
                        .quad            39
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:
                        mov              qword ptr [rbp + 3312], 1
                        mov              dword ptr [rbp + 3316], 1
                        mov              rax, qword ptr [rip + .Lx524_0]
                        mov              qword ptr [rbp + 3320], rax
                                                                                        jmp   n363_lit_integer_α
.Lx524_0:
                        .quad            .Lx524_0_s
.Lx524_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_integer_α:
                        mov              qword ptr [rbp + 3216], 6
                        mov              rax, qword ptr [rip + .Lx525_0]
                        mov              qword ptr [rbp + 3224], rax
                                                                                        jmp   n364_lit_string_α
.Lx525_0:
                        .quad            81
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:
                        mov              qword ptr [rbp + 3200], 1
                        mov              dword ptr [rbp + 3204], 1
                        mov              rax, qword ptr [rip + .Lx526_0]
                        mov              qword ptr [rbp + 3208], rax
                                                                                        jmp   n365_lit_integer_α
.Lx526_0:
                        .quad            .Lx526_0_s
.Lx526_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:
                        mov              qword ptr [rbp + 3104], 6
                        mov              rax, qword ptr [rip + .Lx527_0]
                        mov              qword ptr [rbp + 3112], rax
                                                                                        jmp   n366_lit_string_α
.Lx527_0:
                        .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:
                        mov              qword ptr [rbp + 3088], 1
                        mov              dword ptr [rbp + 3092], 1
                        mov              rax, qword ptr [rip + .Lx528_0]
                        mov              qword ptr [rbp + 3096], rax
                                                                                        jmp   n367_lit_integer_α
.Lx528_0:
                        .quad            .Lx528_0_s
.Lx528_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_integer_α:
                        mov              qword ptr [rbp + 2992], 6
                        mov              rax, qword ptr [rip + .Lx529_0]
                        mov              qword ptr [rbp + 3000], rax
                                                                                        jmp   n368_lit_string_α
.Lx529_0:
                        .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 2976], 1
                        mov              dword ptr [rbp + 2980], 1
                        mov              rax, qword ptr [rip + .Lx530_0]
                        mov              qword ptr [rbp + 2984], rax
                                                                                        jmp   n369_lit_integer_α
.Lx530_0:
                        .quad            .Lx530_0_s
.Lx530_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_integer_α:
                        mov              qword ptr [rbp + 2880], 6
                        mov              rax, qword ptr [rip + .Lx531_0]
                        mov              qword ptr [rbp + 2888], rax
                                                                                        jmp   n370_lit_string_α
.Lx531_0:
                        .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:
                        mov              qword ptr [rbp + 2864], 1
                        mov              dword ptr [rbp + 2868], 1
                        mov              rax, qword ptr [rip + .Lx532_0]
                        mov              qword ptr [rbp + 2872], rax
                                                                                        jmp   n371_lit_integer_α
.Lx532_0:
                        .quad            .Lx532_0_s
.Lx532_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:
                        mov              qword ptr [rbp + 2768], 6
                        mov              rax, qword ptr [rip + .Lx533_0]
                        mov              qword ptr [rbp + 2776], rax
                                                                                        jmp   n372_lit_string_α
.Lx533_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:
                        mov              qword ptr [rbp + 2752], 1
                        mov              dword ptr [rbp + 2756], 1
                        mov              rax, qword ptr [rip + .Lx534_0]
                        mov              qword ptr [rbp + 2760], rax
                                                                                        jmp   n373_lit_integer_α
.Lx534_0:
                        .quad            .Lx534_0_s
.Lx534_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:
                        mov              qword ptr [rbp + 2656], 6
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n374_lit_string_α
.Lx535_0:
                        .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:
                        mov              qword ptr [rbp + 2640], 1
                        mov              dword ptr [rbp + 2644], 1
                        mov              rax, qword ptr [rip + .Lx536_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n375_lit_integer_α
.Lx536_0:
                        .quad            .Lx536_0_s
.Lx536_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_integer_α:
                        mov              qword ptr [rbp + 2544], 6
                        mov              rax, qword ptr [rip + .Lx537_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n376_lit_string_α
.Lx537_0:
                        .quad            51
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:
                        mov              qword ptr [rbp + 2528], 1
                        mov              dword ptr [rbp + 2532], 1
                        mov              rax, qword ptr [rip + .Lx538_0]
                        mov              qword ptr [rbp + 2536], rax
                                                                                        jmp   n377_lit_integer_α
.Lx538_0:
                        .quad            .Lx538_0_s
.Lx538_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:
                        mov              qword ptr [rbp + 2432], 6
                        mov              rax, qword ptr [rip + .Lx539_0]
                        mov              qword ptr [rbp + 2440], rax
                                                                                        jmp   n378_lit_string_α
.Lx539_0:
                        .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:
                        mov              qword ptr [rbp + 2416], 1
                        mov              dword ptr [rbp + 2420], 1
                        mov              rax, qword ptr [rip + .Lx540_0]
                        mov              qword ptr [rbp + 2424], rax
                                                                                        jmp   n379_lit_integer_α
.Lx540_0:
                        .quad            .Lx540_0_s
.Lx540_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx541_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n380_lit_string_α
.Lx541_0:
                        .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:
                        mov              qword ptr [rbp + 2304], 1
                        mov              dword ptr [rbp + 2308], 1
                        mov              rax, qword ptr [rip + .Lx542_0]
                        mov              qword ptr [rbp + 2312], rax
                                                                                        jmp   n381_lit_integer_α
.Lx542_0:
                        .quad            .Lx542_0_s
.Lx542_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:
                        mov              qword ptr [rbp + 2208], 6
                        mov              rax, qword ptr [rip + .Lx543_0]
                        mov              qword ptr [rbp + 2216], rax
                                                                                        jmp   n382_lit_string_α
.Lx543_0:
                        .quad            85
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:
                        mov              qword ptr [rbp + 2192], 1
                        mov              dword ptr [rbp + 2196], 1
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rbp + 2200], rax
                                                                                        jmp   n383_lit_integer_α
.Lx544_0:
                        .quad            .Lx544_0_s
.Lx544_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:
                        mov              qword ptr [rbp + 2096], 6
                        mov              rax, qword ptr [rip + .Lx545_0]
                        mov              qword ptr [rbp + 2104], rax
                                                                                        jmp   n384_lit_string_α
.Lx545_0:
                        .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:
                        mov              qword ptr [rbp + 2080], 1
                        mov              dword ptr [rbp + 2084], 1
                        mov              rax, qword ptr [rip + .Lx546_0]
                        mov              qword ptr [rbp + 2088], rax
                                                                                        jmp   n385_lit_integer_α
.Lx546_0:
                        .quad            .Lx546_0_s
.Lx546_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:
                        mov              qword ptr [rbp + 1984], 6
                        mov              rax, qword ptr [rip + .Lx547_0]
                        mov              qword ptr [rbp + 1992], rax
                                                                                        jmp   n386_lit_string_α
.Lx547_0:
                        .quad            31
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:
                        mov              qword ptr [rbp + 1968], 1
                        mov              dword ptr [rbp + 1972], 1
                        mov              rax, qword ptr [rip + .Lx548_0]
                        mov              qword ptr [rbp + 1976], rax
                                                                                        jmp   n387_lit_integer_α
.Lx548_0:
                        .quad            .Lx548_0_s
.Lx548_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_integer_α:
                        mov              qword ptr [rbp + 1872], 6
                        mov              rax, qword ptr [rip + .Lx549_0]
                        mov              qword ptr [rbp + 1880], rax
                                                                                        jmp   n388_lit_string_α
.Lx549_0:
                        .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:
                        mov              qword ptr [rbp + 1856], 1
                        mov              dword ptr [rbp + 1860], 1
                        mov              rax, qword ptr [rip + .Lx550_0]
                        mov              qword ptr [rbp + 1864], rax
                                                                                        jmp   n389_lit_integer_α
.Lx550_0:
                        .quad            .Lx550_0_s
.Lx550_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:
                        mov              qword ptr [rbp + 1760], 6
                        mov              rax, qword ptr [rip + .Lx551_0]
                        mov              qword ptr [rbp + 1768], rax
                                                                                        jmp   n390_lit_string_α
.Lx551_0:
                        .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:
                        mov              qword ptr [rbp + 1744], 1
                        mov              dword ptr [rbp + 1748], 1
                        mov              rax, qword ptr [rip + .Lx552_0]
                        mov              qword ptr [rbp + 1752], rax
                                                                                        jmp   n391_lit_integer_α
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 6
                        mov              rax, qword ptr [rip + .Lx553_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n392_lit_string_α
.Lx553_0:
                        .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:
                        mov              qword ptr [rbp + 1632], 1
                        mov              dword ptr [rbp + 1636], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n393_lit_integer_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 6
                        mov              rax, qword ptr [rip + .Lx555_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n394_lit_string_α
.Lx555_0:
                        .quad            95
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:
                        mov              qword ptr [rbp + 1520], 1
                        mov              dword ptr [rbp + 1524], 1
                        mov              rax, qword ptr [rip + .Lx556_0]
                        mov              qword ptr [rbp + 1528], rax
                                                                                        jmp   n395_lit_integer_α
.Lx556_0:
                        .quad            .Lx556_0_s
.Lx556_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:
                        mov              qword ptr [rbp + 1424], 6
                        mov              rax, qword ptr [rip + .Lx557_0]
                        mov              qword ptr [rbp + 1432], rax
                                                                                        jmp   n396_lit_string_α
.Lx557_0:
                        .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:
                        mov              qword ptr [rbp + 1408], 1
                        mov              dword ptr [rbp + 1412], 1
                        mov              rax, qword ptr [rip + .Lx558_0]
                        mov              qword ptr [rbp + 1416], rax
                                                                                        jmp   n397_lit_integer_α
.Lx558_0:
                        .quad            .Lx558_0_s
.Lx558_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_integer_α:
                        mov              qword ptr [rbp + 1312], 6
                        mov              rax, qword ptr [rip + .Lx559_0]
                        mov              qword ptr [rbp + 1320], rax
                                                                                        jmp   n398_lit_string_α
.Lx559_0:
                        .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:
                        mov              qword ptr [rbp + 1296], 1
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Lx560_0]
                        mov              qword ptr [rbp + 1304], rax
                                                                                        jmp   n399_lit_integer_α
.Lx560_0:
                        .quad            .Lx560_0_s
.Lx560_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:
                        mov              qword ptr [rbp + 1200], 6
                        mov              rax, qword ptr [rip + .Lx561_0]
                        mov              qword ptr [rbp + 1208], rax
                                                                                        jmp   n400_lit_string_α
.Lx561_0:
                        .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:
                        mov              qword ptr [rbp + 1184], 1
                        mov              dword ptr [rbp + 1188], 1
                        mov              rax, qword ptr [rip + .Lx562_0]
                        mov              qword ptr [rbp + 1192], rax
                                                                                        jmp   n401_lit_integer_α
.Lx562_0:
                        .quad            .Lx562_0_s
.Lx562_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx563_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n402_lit_string_α
.Lx563_0:
                        .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:
                        mov              qword ptr [rbp + 1072], 1
                        mov              dword ptr [rbp + 1076], 1
                        mov              rax, qword ptr [rip + .Lx564_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n403_lit_integer_α
.Lx564_0:
                        .quad            .Lx564_0_s
.Lx564_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx565_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n404_lit_string_α
.Lx565_0:
                        .quad            74
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:
                        mov              qword ptr [rbp + 960], 1
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Lx566_0]
                        mov              qword ptr [rbp + 968], rax
                                                                                        jmp   n405_lit_integer_α
.Lx566_0:
                        .quad            .Lx566_0_s
.Lx566_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:
                        mov              qword ptr [rbp + 864], 6
                        mov              rax, qword ptr [rip + .Lx567_0]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n406_lit_string_α
.Lx567_0:
                        .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              dword ptr [rbp + 852], 1
                        mov              rax, qword ptr [rip + .Lx568_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n407_lit_integer_α
.Lx568_0:
                        .quad            .Lx568_0_s
.Lx568_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:
                        mov              qword ptr [rbp + 752], 6
                        mov              rax, qword ptr [rip + .Lx569_0]
                        mov              qword ptr [rbp + 760], rax
                                                                                        jmp   n408_lit_string_α
.Lx569_0:
                        .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:
                        mov              qword ptr [rbp + 736], 1
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Lx570_0]
                        mov              qword ptr [rbp + 744], rax
                                                                                        jmp   n409_lit_integer_α
.Lx570_0:
                        .quad            .Lx570_0_s
.Lx570_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx571_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n410_lit_string_α
.Lx571_0:
                        .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:
                        mov              qword ptr [rbp + 624], 1
                        mov              dword ptr [rbp + 628], 1
                        mov              rax, qword ptr [rip + .Lx572_0]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n411_lit_integer_α
.Lx572_0:
                        .quad            .Lx572_0_s
.Lx572_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx573_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n412_lit_string_α
.Lx573_0:
                        .quad            53
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:
                        mov              qword ptr [rbp + 512], 1
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Lx574_0]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n413_lit_integer_α
.Lx574_0:
                        .quad            .Lx574_0_s
.Lx574_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx575_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n414_lit_string_α
.Lx575_0:
                        .quad            59
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:
                        mov              qword ptr [rbp + 400], 1
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Lx576_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n415_lit_integer_α
.Lx576_0:
                        .quad            .Lx576_0_s
.Lx576_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:
                        mov              qword ptr [rbp + 304], 6
                        mov              rax, qword ptr [rip + .Lx577_0]
                        mov              qword ptr [rbp + 312], rax
                                                                                        jmp   n416_lit_string_α
.Lx577_0:
                        .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              dword ptr [rbp + 292], 2
                        mov              rax, qword ptr [rip + .Lx578_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n417_call_builtin_prolog_α
.Lx578_0:
                        .quad            .Lx578_0_s
.Lx578_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n417_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n418_call_builtin_prolog_α
n417_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n419_call_builtin_prolog_α
n418_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n419_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n420_call_builtin_prolog_α
n419_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n420_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n421_call_builtin_prolog_α
n420_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n422_call_builtin_prolog_α
n421_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n423_call_builtin_prolog_α
n422_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n423_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n424_call_builtin_prolog_α
n423_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n425_call_builtin_prolog_α
n424_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n426_call_builtin_prolog_α
n425_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n427_call_builtin_prolog_α
n426_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n428_call_builtin_prolog_α
n427_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1568]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n429_call_builtin_prolog_α
n428_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n429_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1720], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n430_call_builtin_prolog_α
n429_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1832], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n431_call_builtin_prolog_α
n430_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n431_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1904]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n432_call_builtin_prolog_α
n431_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2016]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n433_call_builtin_prolog_α
n432_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n433_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2168], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n434_call_builtin_prolog_α
n433_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n434_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2240]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n435_call_builtin_prolog_α
n434_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2352]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n436_call_builtin_prolog_α
n435_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n436_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n437_call_builtin_prolog_α
n436_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n438_call_builtin_prolog_α
n437_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2728], rax
                        lea              rdi, [rbp + 2688]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n439_call_builtin_prolog_α
n438_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2840], rax
                        lea              rdi, [rbp + 2800]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2784], rax
                        mov              qword ptr [rbp + 2792], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n440_call_builtin_prolog_α
n439_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n440_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2912]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2896], rax
                        mov              qword ptr [rbp + 2904], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n441_call_builtin_prolog_α
n440_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 3064], rax
                        lea              rdi, [rbp + 3024]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n442_call_builtin_prolog_α
n441_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3176], rax
                        lea              rdi, [rbp + 3136]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n443_call_builtin_prolog_α
n442_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3288], rax
                        lea              rdi, [rbp + 3248]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3232], rax
                        mov              qword ptr [rbp + 3240], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n444_call_builtin_prolog_α
n443_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n444_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3400], rax
                        lea              rdi, [rbp + 3360]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3344], rax
                        mov              qword ptr [rbp + 3352], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n445_call_builtin_prolog_α
n444_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n445_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3512], rax
                        lea              rdi, [rbp + 3472]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3456], rax
                        mov              qword ptr [rbp + 3464], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n446_call_builtin_prolog_α
n445_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n446_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3584]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n447_call_builtin_prolog_α
n446_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n447_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3736], rax
                        lea              rdi, [rbp + 3696]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3680], rax
                        mov              qword ptr [rbp + 3688], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n448_call_builtin_prolog_α
n447_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n448_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3848], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n449_call_builtin_prolog_α
n448_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n449_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3960], rax
                        lea              rdi, [rbp + 3920]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n450_call_builtin_prolog_α
n449_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 4072], rax
                        lea              rdi, [rbp + 4032]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n451_call_builtin_prolog_α
n450_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4184], rax
                        lea              rdi, [rbp + 4144]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n452_call_builtin_prolog_α
n451_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4264], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4280], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4296], rax
                        lea              rdi, [rbp + 4256]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n453_call_builtin_prolog_α
n452_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4368]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n454_call_builtin_prolog_α
n453_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4488], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4480]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n455_call_builtin_prolog_α
n454_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4592]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n456_call_builtin_prolog_α
n455_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n456_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4728], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4744], rax
                        lea              rdi, [rbp + 4704]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n457_call_builtin_prolog_α
n456_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n457_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4840], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4856], rax
                        lea              rdi, [rbp + 4816]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n458_call_builtin_prolog_α
n457_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n458_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 4800]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 4808]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4928]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n459_call_builtin_prolog_α
n458_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n459_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 5080], rax
                        lea              rdi, [rbp + 5040]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n460_call_builtin_prolog_α
n459_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n460_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5176], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5192], rax
                        lea              rdi, [rbp + 5152]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n461_call_builtin_prolog_α
n460_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n461_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5272], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5288], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5304], rax
                        lea              rdi, [rbp + 5264]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5248], rax
                        mov              qword ptr [rbp + 5256], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n462_call_builtin_prolog_α
n461_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5400], rax
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5416], rax
                        lea              rdi, [rbp + 5376]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5360], rax
                        mov              qword ptr [rbp + 5368], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n463_call_builtin_prolog_α
n462_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n463_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5496], rax
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5512], rax
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5528], rax
                        lea              rdi, [rbp + 5488]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5472], rax
                        mov              qword ptr [rbp + 5480], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n464_call_builtin_prolog_α
n463_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5624], rax
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5640], rax
                        lea              rdi, [rbp + 5600]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5584], rax
                        mov              qword ptr [rbp + 5592], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n465_call_builtin_prolog_α
n464_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n465_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5752], rax
                        lea              rdi, [rbp + 5712]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n466_call_builtin_prolog_α
n465_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5896]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5864], rax
                        lea              rdi, [rbp + 5824]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n467_var_ref_α
n466_call_builtin_prolog_β:
                                                                                        jmp   n476_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:
                        sub              rsp, 16
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 5936]
                        mov              qword ptr [rbp + 5904], rax
                        mov              qword ptr [rbp + 5912], rdx
                        add              rsp, 16
                                                                                        jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:
                        mov              qword ptr [rbp + 5920], 1
                        mov              dword ptr [rbp + 5924], 2
                        mov              rax, qword ptr [rip + .Lx631_0]
                        mov              qword ptr [rbp + 5928], rax
                                                                                        jmp   n469_call_proc_staged_α
.Lx631_0:
                        .quad            .Lx631_0_s
.Lx631_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n469_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx633_20
                        mov              rax, qword ptr [rbp + 5808]
                        mov              rdx, qword ptr [rbp + 5816]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx633_21
.Lx633_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5808]
                        mov              rdx, qword ptr [rbp + 5816]
                        call             rt_arg_stage@PLT
.Lx633_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx633_22
                        mov              rax, qword ptr [rbp + 5904]
                        mov              rdx, qword ptr [rbp + 5912]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx633_23
.Lx633_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5904]
                        mov              rdx, qword ptr [rbp + 5912]
                        call             rt_arg_stage@PLT
.Lx633_23:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx633_24
                        mov              rax, qword ptr [rbp + 5920]
                        mov              rdx, qword ptr [rbp + 5928]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 32], rax
                        mov              qword ptr [r10 + 40], rdx
                                                                                        jmp   .Lx633_25
.Lx633_24:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5920]
                        mov              rdx, qword ptr [rbp + 5928]
                        call             rt_arg_stage@PLT
.Lx633_25:
                        mov              edi, 1
                        mov              esi, 3
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx633_1
                        lea              rcx, [rip + .Lx633_3]
                        lea              rdx, [rip + .Lx633_4]
                                                                                        jmp   rax
.Lx633_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx633_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx633_2
.Lx633_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx633_2
.Lx633_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx633_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx633_2
.Lx633_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx633_2
.Lx633_1:
                        call             rt_faildescr@PLT
.Lx633_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n476_call_builtin_prolog_α
                                                                                        jmp   n470_var_α
n469_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx633_0:
                        .quad            .Lx633_0_s
.Lx633_0_s:
                        .string          "qsort/3"
#-----------------------------------------------------------------------------------------------------------------------
n470_var_α:
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n471_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn637:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn637]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n469_call_proc_staged_β
                                                                                        jmp   n472_lit_string_α
n471_call_builtin_prolog_β:
                                                                                        jmp   n469_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx638_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n473_call_builtin_prolog_α
.Lx638_0:
                        .quad            .Lx638_0_s
.Lx638_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n473_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn640:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn640]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n469_call_proc_staged_β
                                                                                        jmp   n474_move_label_α
n473_call_builtin_prolog_β:
                                                                                        jmp   n469_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n474_move_label_α:
                        lea              rax, [rip + n469_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:
                        sub              rsp, 32
                                                                                        jmp   qword ptr [rbp + 16]
n475_disjunction_β:
                        sub              rsp, 32
                        add              rsp, 32
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n476_call_builtin_prolog_α:
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
n476_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n475_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 5952]
                        add              rsp, 5960
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 5952]
                        add              rsp, 5960
                        ret
                        .section         .note.GNU-stack,"",@progbits
