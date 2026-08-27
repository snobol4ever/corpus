                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sel$2F3:
                        sub              rsp, 1264
                        mov              qword ptr [rsp + 1240], rcx
                        mov              qword ptr [rsp + 1248], rdx
                        mov              qword ptr [rsp + 1256], rsp
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1232
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sel$2F3_α_body:
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx38_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx38_101
.Lx38_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx38_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx38_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx38_101
.Lx38_100:              lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx38_101:              mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lx41_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n3_lit_integer_α
.Lx41_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx42_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n4_call_prolog_α
.Lx42_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        lea              r8, [rsp + 1024]
.Lx43_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx43_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx43_111
                        cmp              esi, 1;                              jne   .Lx43_112
                        mov              r8, rax;                             jmp   .Lx43_110
.Lx43_112:              cmp              esi, 2;                              jne   .Lx43_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx43_111
                        mov              r8, rax;                             jmp   .Lx43_110
.Lx43_113:              cmp              al, 72;                              jne   .Lx43_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx43_111
                        cmp              rax, r8;                             je    .Lx43_111
                        mov              r8, rax;                             jmp   .Lx43_110
.Lx43_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx43_114
                        cmp              al, 104;                             je    .Lx43_114
                        cmp              al, 72;                              jne   .Lx43_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx43_114
                                                                              jmp   .Lx43_118
.Lx43_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx43_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx43_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx43_115
                                                                              jmp   .Lx43_114
.Lx43_119:              cmp              al, 3;                               jne   .Lx43_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx43_114
                                                                              jmp   .Lx43_115
.Lx43_120:              cmp              al, 2;                               jne   .Lx43_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx43_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx43_114
                                                                              jmp   .Lx43_115
.Lx43_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx43_117
.Lx43_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx43_117
.Lx43_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx43_117:              mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n17_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n8_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_prolog_α:       mov              r11, 9
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
.Lx50_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx50_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx50_61
                        cmp              esi, 1;                              jne   .Lx50_62
                        mov              r8, rax;                             jmp   .Lx50_60
.Lx50_62:               cmp              esi, 2;                              jne   .Lx50_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_61
                        mov              r8, rax;                             jmp   .Lx50_60
.Lx50_63:               cmp              al, 72;                              jne   .Lx50_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx50_61
                        cmp              rax, r8;                             je    .Lx50_61
                        mov              r8, rax;                             jmp   .Lx50_60
.Lx50_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx50_80
                        cmp              al, 104;                             je    .Lx50_80
                        cmp              al, 72;                              jne   .Lx50_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx50_80
                                                                              jmp   .Lx50_74
.Lx50_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx50_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx50_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx50_73
                        lea              r9, [rsp + 944]
.Lx50_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx50_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_65
                        cmp              esi, 1;                              jne   .Lx50_66
                        mov              r9, rax;                             jmp   .Lx50_64
.Lx50_66:               cmp              esi, 2;                              jne   .Lx50_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_65
                        mov              r9, rax;                             jmp   .Lx50_64
.Lx50_67:               cmp              al, 72;                              jne   .Lx50_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_65
                        cmp              rax, r9;                             je    .Lx50_65
                        mov              r9, rax;                             jmp   .Lx50_64
.Lx50_65:               lea              rcx, [rsp + 960]
.Lx50_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx50_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx50_69
                        cmp              esi, 1;                              jne   .Lx50_70
                        mov              rcx, rax;                            jmp   .Lx50_68
.Lx50_70:               cmp              esi, 2;                              jne   .Lx50_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_69
                        mov              rcx, rax;                            jmp   .Lx50_68
.Lx50_71:               cmp              al, 72;                              jne   .Lx50_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx50_69
                        cmp              rax, rcx;                            je    .Lx50_69
                        mov              rcx, rax;                            jmp   .Lx50_68
.Lx50_69:               cmp              r9, rcx;                             je    .Lx50_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx50_75
                        cmp              al, 104;                             je    .Lx50_75
                        cmp              al, 72;                              jne   .Lx50_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx50_75
                                                                              jmp   .Lx50_72
.Lx50_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx50_76
                        cmp              al, 104;                             je    .Lx50_76
                        cmp              al, 72;                              jne   .Lx50_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx50_76
                                                                              jmp   .Lx50_72
.Lx50_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx50_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx50_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx50_77
.Lx50_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx50_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx50_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx50_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx50_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx50_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 944]
.Lx50_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx50_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_82
                        cmp              esi, 1;                              jne   .Lx50_83
                        mov              r9, rax;                             jmp   .Lx50_81
.Lx50_83:               cmp              esi, 2;                              jne   .Lx50_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_82
                        mov              r9, rax;                             jmp   .Lx50_81
.Lx50_84:               cmp              al, 72;                              jne   .Lx50_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx50_82
                        cmp              rax, r9;                             je    .Lx50_82
                        mov              r9, rax;                             jmp   .Lx50_81
.Lx50_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx50_85
                        cmp              al, 104;                             je    .Lx50_85
                        cmp              al, 72;                              jne   .Lx50_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx50_85
                                                                              jmp   .Lx50_86
.Lx50_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx50_87
.Lx50_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx50_87:               lea              rcx, [rsp + 960]
.Lx50_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx50_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx50_89
                        cmp              esi, 1;                              jne   .Lx50_90
                        mov              rcx, rax;                            jmp   .Lx50_88
.Lx50_90:               cmp              esi, 2;                              jne   .Lx50_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx50_89
                        mov              rcx, rax;                            jmp   .Lx50_88
.Lx50_91:               cmp              al, 72;                              jne   .Lx50_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx50_89
                        cmp              rax, rcx;                            je    .Lx50_89
                        mov              rcx, rax;                            jmp   .Lx50_88
.Lx50_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx50_92
                        cmp              al, 104;                             je    .Lx50_92
                        cmp              al, 72;                              jne   .Lx50_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx50_92
                                                                              jmp   .Lx50_93
.Lx50_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx50_94
.Lx50_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx50_94:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx50_77
.Lx50_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx50_77
.Lx50_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx50_77:               mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n9_var_ref_α
n8_call_prolog_β:       mov              r11, 9;                              jmp   n16_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n11_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        lea              r8, [rsp + 832]
.Lx55_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx55_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx55_41
                        cmp              esi, 1;                              jne   .Lx55_55
                        mov              r8, rax;                             jmp   .Lx55_40
.Lx55_55:               cmp              esi, 2;                              jne   .Lx55_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx55_41
                        mov              r8, rax;                             jmp   .Lx55_40
.Lx55_56:               cmp              al, 72;                              jne   .Lx55_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx55_41
                        cmp              rax, r8;                             je    .Lx55_41
                        mov              r8, rax;                             jmp   .Lx55_40
.Lx55_41:               lea              r9, [rsp + 848]
.Lx55_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx55_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx55_43
                        cmp              esi, 1;                              jne   .Lx55_57
                        mov              r9, rax;                             jmp   .Lx55_42
.Lx55_57:               cmp              esi, 2;                              jne   .Lx55_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx55_43
                        mov              r9, rax;                             jmp   .Lx55_42
.Lx55_58:               cmp              al, 72;                              jne   .Lx55_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx55_43
                        cmp              rax, r9;                             je    .Lx55_43
                        mov              r9, rax;                             jmp   .Lx55_42
.Lx55_43:               cmp              r8, r9;                              je    .Lx55_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx55_44
                        cmp              al, 104;                             je    .Lx55_44
                        cmp              al, 72;                              jne   .Lx55_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx55_44
                                                                              jmp   .Lx55_45
.Lx55_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx55_53
                        cmp              al, 104;                             je    .Lx55_53
                        cmp              al, 72;                              jne   .Lx55_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx55_53
                                                                              jmp   .Lx55_46
.Lx55_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx55_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx55_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx55_51
.Lx55_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx55_47
                        cmp              al, 104;                             je    .Lx55_47
                        cmp              al, 72;                              jne   .Lx55_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx55_47
                                                                              jmp   .Lx55_48
.Lx55_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx55_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx55_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx55_51
.Lx55_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx55_49
                        cmp              dl, 80;                              je    .Lx55_53
                                                                              jmp   .Lx55_52
.Lx55_49:               cmp              dl, 80;                              je    .Lx55_52
                        cmp              cl, 5;                               je    .Lx55_53
                        cmp              dl, 5;                               je    .Lx55_53
                        cmp              cl, 3;                               jne   .Lx55_50
                        cmp              dl, 3;                               jne   .Lx55_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx55_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx55_51
                                                                              jmp   .Lx55_52
.Lx55_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx55_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx55_53
.Lx55_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx55_54
.Lx55_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx55_54
.Lx55_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx55_54:               mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   n16_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n14_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_prolog_α:      mov              r11, 15
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        lea              rdi, [rsp + 752]
                        lea              r8, [rsp + 752]
.Lx60_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx60_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx60_41
                        cmp              esi, 1;                              jne   .Lx60_55
                        mov              r8, rax;                             jmp   .Lx60_40
.Lx60_55:               cmp              esi, 2;                              jne   .Lx60_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx60_41
                        mov              r8, rax;                             jmp   .Lx60_40
.Lx60_56:               cmp              al, 72;                              jne   .Lx60_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx60_41
                        cmp              rax, r8;                             je    .Lx60_41
                        mov              r8, rax;                             jmp   .Lx60_40
.Lx60_41:               lea              r9, [rsp + 768]
.Lx60_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx60_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx60_43
                        cmp              esi, 1;                              jne   .Lx60_57
                        mov              r9, rax;                             jmp   .Lx60_42
.Lx60_57:               cmp              esi, 2;                              jne   .Lx60_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx60_43
                        mov              r9, rax;                             jmp   .Lx60_42
.Lx60_58:               cmp              al, 72;                              jne   .Lx60_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx60_43
                        cmp              rax, r9;                             je    .Lx60_43
                        mov              r9, rax;                             jmp   .Lx60_42
.Lx60_43:               cmp              r8, r9;                              je    .Lx60_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx60_44
                        cmp              al, 104;                             je    .Lx60_44
                        cmp              al, 72;                              jne   .Lx60_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx60_44
                                                                              jmp   .Lx60_45
.Lx60_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx60_53
                        cmp              al, 104;                             je    .Lx60_53
                        cmp              al, 72;                              jne   .Lx60_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx60_53
                                                                              jmp   .Lx60_46
.Lx60_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx60_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx60_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx60_51
.Lx60_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx60_47
                        cmp              al, 104;                             je    .Lx60_47
                        cmp              al, 72;                              jne   .Lx60_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx60_47
                                                                              jmp   .Lx60_48
.Lx60_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx60_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx60_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx60_51
.Lx60_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx60_49
                        cmp              dl, 80;                              je    .Lx60_53
                                                                              jmp   .Lx60_52
.Lx60_49:               cmp              dl, 80;                              je    .Lx60_52
                        cmp              cl, 5;                               je    .Lx60_53
                        cmp              dl, 5;                               je    .Lx60_53
                        cmp              cl, 3;                               jne   .Lx60_50
                        cmp              dl, 3;                               jne   .Lx60_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx60_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx60_51
                                                                              jmp   .Lx60_52
.Lx60_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx60_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx60_53
.Lx60_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx60_54
.Lx60_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx60_54
.Lx60_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx60_54:               mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx
                        cmp              al, 104;                             je    n16_call_prolog_α
                                                                              jmp   n15_suspend_α
n14_call_prolog_β:      mov              r11, 15;                             jmp   n16_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_suspend_α:          mov              r11, 16
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx62_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx62_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n15_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n15_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   sel$2F3_γ
n15_suspend_β:          mov              r11, 16;                             jmp   n16_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_call_prolog_α:      mov              r11, 17
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   n17_var_ref_α
n16_call_prolog_β:      mov              r11, 17;                             jmp   sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:      mov              r11, 19
                        mov              qword ptr [rsp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Lx66_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n19_lit_integer_α
.Lx66_0:                .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rsp + 672], 3             # result
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rsp + 680], rax;          jmp   n20_call_prolog_α
.Lx67_0:                .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        lea              r8, [rsp + 592]
.Lx68_110:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx68_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx68_111
                        cmp              esi, 1;                              jne   .Lx68_112
                        mov              r8, rax;                             jmp   .Lx68_110
.Lx68_112:              cmp              esi, 2;                              jne   .Lx68_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx68_111
                        mov              r8, rax;                             jmp   .Lx68_110
.Lx68_113:              cmp              al, 72;                              jne   .Lx68_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx68_111
                        cmp              rax, r8;                             je    .Lx68_111
                        mov              r8, rax;                             jmp   .Lx68_110
.Lx68_111:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx68_114
                        cmp              al, 104;                             je    .Lx68_114
                        cmp              al, 72;                              jne   .Lx68_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx68_114
                                                                              jmp   .Lx68_118
.Lx68_118:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx68_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx68_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx68_115
                                                                              jmp   .Lx68_114
.Lx68_119:              cmp              al, 3;                               jne   .Lx68_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx68_114
                                                                              jmp   .Lx68_115
.Lx68_120:              cmp              al, 2;                               jne   .Lx68_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx68_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx68_114
                                                                              jmp   .Lx68_115
.Lx68_114:              mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx68_117
.Lx68_115:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx68_117
.Lx68_116:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx68_117:              mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n21_var_ref_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   n37_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n24_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_call_prolog_α:      mov              r11, 25
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lx75_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx75_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx75_61
                        cmp              esi, 1;                              jne   .Lx75_62
                        mov              r8, rax;                             jmp   .Lx75_60
.Lx75_62:               cmp              esi, 2;                              jne   .Lx75_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx75_61
                        mov              r8, rax;                             jmp   .Lx75_60
.Lx75_63:               cmp              al, 72;                              jne   .Lx75_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx75_61
                        cmp              rax, r8;                             je    .Lx75_61
                        mov              r8, rax;                             jmp   .Lx75_60
.Lx75_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx75_80
                        cmp              al, 104;                             je    .Lx75_80
                        cmp              al, 72;                              jne   .Lx75_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx75_80
                                                                              jmp   .Lx75_74
.Lx75_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx75_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx75_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx75_73
                        lea              r9, [rsp + 512]
.Lx75_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx75_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx75_65
                        cmp              esi, 1;                              jne   .Lx75_66
                        mov              r9, rax;                             jmp   .Lx75_64
.Lx75_66:               cmp              esi, 2;                              jne   .Lx75_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx75_65
                        mov              r9, rax;                             jmp   .Lx75_64
.Lx75_67:               cmp              al, 72;                              jne   .Lx75_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx75_65
                        cmp              rax, r9;                             je    .Lx75_65
                        mov              r9, rax;                             jmp   .Lx75_64
.Lx75_65:               lea              rcx, [rsp + 528]
.Lx75_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx75_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx75_69
                        cmp              esi, 1;                              jne   .Lx75_70
                        mov              rcx, rax;                            jmp   .Lx75_68
.Lx75_70:               cmp              esi, 2;                              jne   .Lx75_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx75_69
                        mov              rcx, rax;                            jmp   .Lx75_68
.Lx75_71:               cmp              al, 72;                              jne   .Lx75_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx75_69
                        cmp              rax, rcx;                            je    .Lx75_69
                        mov              rcx, rax;                            jmp   .Lx75_68
.Lx75_69:               cmp              r9, rcx;                             je    .Lx75_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx75_75
                        cmp              al, 104;                             je    .Lx75_75
                        cmp              al, 72;                              jne   .Lx75_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx75_75
                                                                              jmp   .Lx75_72
.Lx75_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx75_76
                        cmp              al, 104;                             je    .Lx75_76
                        cmp              al, 72;                              jne   .Lx75_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx75_76
                                                                              jmp   .Lx75_72
.Lx75_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx75_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx75_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx75_77
.Lx75_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx75_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx75_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx75_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx75_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx75_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 512]
.Lx75_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx75_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx75_82
                        cmp              esi, 1;                              jne   .Lx75_83
                        mov              r9, rax;                             jmp   .Lx75_81
.Lx75_83:               cmp              esi, 2;                              jne   .Lx75_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx75_82
                        mov              r9, rax;                             jmp   .Lx75_81
.Lx75_84:               cmp              al, 72;                              jne   .Lx75_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx75_82
                        cmp              rax, r9;                             je    .Lx75_82
                        mov              r9, rax;                             jmp   .Lx75_81
.Lx75_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx75_85
                        cmp              al, 104;                             je    .Lx75_85
                        cmp              al, 72;                              jne   .Lx75_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx75_85
                                                                              jmp   .Lx75_86
.Lx75_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx75_87
.Lx75_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx75_87:               lea              rcx, [rsp + 528]
.Lx75_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx75_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx75_89
                        cmp              esi, 1;                              jne   .Lx75_90
                        mov              rcx, rax;                            jmp   .Lx75_88
.Lx75_90:               cmp              esi, 2;                              jne   .Lx75_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx75_89
                        mov              rcx, rax;                            jmp   .Lx75_88
.Lx75_91:               cmp              al, 72;                              jne   .Lx75_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx75_89
                        cmp              rax, rcx;                            je    .Lx75_89
                        mov              rcx, rax;                            jmp   .Lx75_88
.Lx75_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx75_92
                        cmp              al, 104;                             je    .Lx75_92
                        cmp              al, 72;                              jne   .Lx75_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx75_92
                                                                              jmp   .Lx75_93
.Lx75_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx75_94
.Lx75_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx75_94:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx75_77
.Lx75_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx75_77
.Lx75_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx75_77:               mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n25_var_ref_α
n24_call_prolog_β:      mov              r11, 25;                             jmp   n37_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n28_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_call_prolog_α:      mov              r11, 29
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 392], rax
                        lea              rdi, [rsp + 384]
                        lea              r8, [rsp + 384]
.Lx82_60:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx82_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx82_61
                        cmp              esi, 1;                              jne   .Lx82_62
                        mov              r8, rax;                             jmp   .Lx82_60
.Lx82_62:               cmp              esi, 2;                              jne   .Lx82_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx82_61
                        mov              r8, rax;                             jmp   .Lx82_60
.Lx82_63:               cmp              al, 72;                              jne   .Lx82_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx82_61
                        cmp              rax, r8;                             je    .Lx82_61
                        mov              r8, rax;                             jmp   .Lx82_60
.Lx82_61:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx82_80
                        cmp              al, 104;                             je    .Lx82_80
                        cmp              al, 72;                              jne   .Lx82_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx82_80
                                                                              jmp   .Lx82_74
.Lx82_74:               mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx82_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx82_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx82_73
                        lea              r9, [rsp + 400]
.Lx82_64:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx82_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx82_65
                        cmp              esi, 1;                              jne   .Lx82_66
                        mov              r9, rax;                             jmp   .Lx82_64
.Lx82_66:               cmp              esi, 2;                              jne   .Lx82_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx82_65
                        mov              r9, rax;                             jmp   .Lx82_64
.Lx82_67:               cmp              al, 72;                              jne   .Lx82_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx82_65
                        cmp              rax, r9;                             je    .Lx82_65
                        mov              r9, rax;                             jmp   .Lx82_64
.Lx82_65:               lea              rcx, [rsp + 416]
.Lx82_68:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx82_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx82_69
                        cmp              esi, 1;                              jne   .Lx82_70
                        mov              rcx, rax;                            jmp   .Lx82_68
.Lx82_70:               cmp              esi, 2;                              jne   .Lx82_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx82_69
                        mov              rcx, rax;                            jmp   .Lx82_68
.Lx82_71:               cmp              al, 72;                              jne   .Lx82_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx82_69
                        cmp              rax, rcx;                            je    .Lx82_69
                        mov              rcx, rax;                            jmp   .Lx82_68
.Lx82_69:               cmp              r9, rcx;                             je    .Lx82_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx82_75
                        cmp              al, 104;                             je    .Lx82_75
                        cmp              al, 72;                              jne   .Lx82_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx82_75
                                                                              jmp   .Lx82_72
.Lx82_75:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx82_76
                        cmp              al, 104;                             je    .Lx82_76
                        cmp              al, 72;                              jne   .Lx82_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx82_76
                                                                              jmp   .Lx82_72
.Lx82_76:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx82_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx82_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx82_77
.Lx82_80:               lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx82_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx82_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx82_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx82_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx82_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 400]
.Lx82_81:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx82_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx82_82
                        cmp              esi, 1;                              jne   .Lx82_83
                        mov              r9, rax;                             jmp   .Lx82_81
.Lx82_83:               cmp              esi, 2;                              jne   .Lx82_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx82_82
                        mov              r9, rax;                             jmp   .Lx82_81
.Lx82_84:               cmp              al, 72;                              jne   .Lx82_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx82_82
                        cmp              rax, r9;                             je    .Lx82_82
                        mov              r9, rax;                             jmp   .Lx82_81
.Lx82_82:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx82_85
                        cmp              al, 104;                             je    .Lx82_85
                        cmp              al, 72;                              jne   .Lx82_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx82_85
                                                                              jmp   .Lx82_86
.Lx82_85:               mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx82_87
.Lx82_86:               mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx82_87:               lea              rcx, [rsp + 416]
.Lx82_88:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx82_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx82_89
                        cmp              esi, 1;                              jne   .Lx82_90
                        mov              rcx, rax;                            jmp   .Lx82_88
.Lx82_90:               cmp              esi, 2;                              jne   .Lx82_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx82_89
                        mov              rcx, rax;                            jmp   .Lx82_88
.Lx82_91:               cmp              al, 72;                              jne   .Lx82_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx82_89
                        cmp              rax, rcx;                            je    .Lx82_89
                        mov              rcx, rax;                            jmp   .Lx82_88
.Lx82_89:               mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx82_92
                        cmp              al, 104;                             je    .Lx82_92
                        cmp              al, 72;                              jne   .Lx82_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx82_92
                                                                              jmp   .Lx82_93
.Lx82_92:               mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx82_94
.Lx82_93:               mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx82_94:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx82_77
.Lx82_73:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx82_77
.Lx82_72:               mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx82_77:               mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n29_var_ref_α
n28_call_prolog_β:      mov              r11, 29;                             jmp   n37_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n31_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_call_prolog_α:      mov              r11, 32
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        lea              r8, [rsp + 288]
.Lx87_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx87_41
                        cmp              esi, 1;                              jne   .Lx87_55
                        mov              r8, rax;                             jmp   .Lx87_40
.Lx87_55:               cmp              esi, 2;                              jne   .Lx87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx87_41
                        mov              r8, rax;                             jmp   .Lx87_40
.Lx87_56:               cmp              al, 72;                              jne   .Lx87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx87_41
                        cmp              rax, r8;                             je    .Lx87_41
                        mov              r8, rax;                             jmp   .Lx87_40
.Lx87_41:               lea              r9, [rsp + 304]
.Lx87_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx87_43
                        cmp              esi, 1;                              jne   .Lx87_57
                        mov              r9, rax;                             jmp   .Lx87_42
.Lx87_57:               cmp              esi, 2;                              jne   .Lx87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx87_43
                        mov              r9, rax;                             jmp   .Lx87_42
.Lx87_58:               cmp              al, 72;                              jne   .Lx87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx87_43
                        cmp              rax, r9;                             je    .Lx87_43
                        mov              r9, rax;                             jmp   .Lx87_42
.Lx87_43:               cmp              r8, r9;                              je    .Lx87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx87_44
                        cmp              al, 104;                             je    .Lx87_44
                        cmp              al, 72;                              jne   .Lx87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx87_44
                                                                              jmp   .Lx87_45
.Lx87_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx87_53
                        cmp              al, 104;                             je    .Lx87_53
                        cmp              al, 72;                              jne   .Lx87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx87_53
                                                                              jmp   .Lx87_46
.Lx87_46:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx87_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx87_51
.Lx87_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx87_47
                        cmp              al, 104;                             je    .Lx87_47
                        cmp              al, 72;                              jne   .Lx87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx87_47
                                                                              jmp   .Lx87_48
.Lx87_47:               lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx87_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx87_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx87_51
.Lx87_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx87_49
                        cmp              dl, 80;                              je    .Lx87_53
                                                                              jmp   .Lx87_52
.Lx87_49:               cmp              dl, 80;                              je    .Lx87_52
                        cmp              cl, 5;                               je    .Lx87_53
                        cmp              dl, 5;                               je    .Lx87_53
                        cmp              cl, 3;                               jne   .Lx87_50
                        cmp              dl, 3;                               jne   .Lx87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx87_51
                                                                              jmp   .Lx87_52
.Lx87_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx87_53
.Lx87_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx87_54
.Lx87_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx87_54
.Lx87_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx87_54:               mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n32_var_ref_α
n31_call_prolog_β:      mov              r11, 32;                             jmp   n37_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n33_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n34_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n35_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_proc_staged_α: mov              r11, 36
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx95_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx95_201
.Lx95_200:              mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx95_201:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx95_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx95_203
.Lx95_202:              mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx95_203:              lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx95_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx95_205
.Lx95_204:              mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx95_205:              lea              rax, [rip + .Lx95_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx95_1
                        lea              rcx, [rip + .Lx95_4]
                        push             rcx
                        lea              rcx, [rip + .Lx95_3]
                        push             rcx
                        lea              rdx, [rip + .Lx95_4];                jmp   rax
.Lx95_3:                add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx95_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx95_2
.Lx95_5:                call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx95_2
.Lx95_4:                add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx95_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx95_2
.Lx95_6:                call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx95_2
.Lx95_1:                mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx95_2:                mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx95_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx95_29:               mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n36_suspend_α
n35_call_proc_staged_β: mov              r11, 36
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n37_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1120
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n37_call_prolog_α
                        lea              r8, [rip + .Lx95_7]
                        push             r8
                        lea              rcx, [rip + .Lx95_4]
                        push             rcx
                        lea              rcx, [rip + .Lx95_3]
                        push             rcx
                        lea              rdx, [rip + .Lx95_4];                jmp   rax
.Lx95_7:                add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n37_call_prolog_α
                                                                              jmp   n36_suspend_α
.Lx95_0:                .quad            .Lx95_0_s
.Lx95_0_s:              .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n36_suspend_α:          mov              r11, 37
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx97_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx97_61:               mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n36_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n36_suspend_β]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   sel$2F3_γ
n36_suspend_β:          mov              r11, 37;                             jmp   n35_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n37_call_prolog_α:      mov              r11, 38
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    sel$2F3_ω
                                                                              jmp   sel$2F3_ω
n37_call_prolog_β:      mov              r11, 38;                             jmp   sel$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_β:
                                                                              jmp   n15_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx98_50
                        mov              qword ptr [rsp + 1120], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1120];         jmp   rax
.Lx98_50:               mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1240]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1248]
                        add              rsp, 1264;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F3:
                        sub              rsp, 1424
                        mov              qword ptr [rsp + 1400], rcx
                        mov              qword ptr [rsp + 1408], rdx
                        mov              qword ptr [rsp + 1416], rsp
                        mov              rdi, rsp
                        mov              esi, 1280
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F3_α_body:
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
#-----------------------------------------------------------------------------------------------------------------------
n99_call_prolog_α:      mov              r11, 39
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx140_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx140_101
.Lx140_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx140_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx140_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx140_101
.Lx140_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx140_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    queens$2F3_ω
                                                                              jmp   n100_var_ref_α
n99_call_prolog_β:      mov              r11, 39;                             jmp   queens$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n101_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              r11, 41
                        mov              qword ptr [rsp + 1248], 3            # result
                        mov              rax, qword ptr [rip + .Lx143_0]
                        mov              qword ptr [rsp + 1256], rax;         jmp   n102_lit_string_α
.Lx143_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 42
                        mov              qword ptr [rsp + 1264], 2            # result
                        mov              dword ptr [rsp + 1268], 2
                        mov              rax, qword ptr [rip + .Lx144_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n103_call_prolog_α
.Lx144_0:               .quad            .Lx144_0_s
.Lx144_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n103_call_prolog_α:     mov              r11, 43
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1184], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1192], rax
                        lea              rdi, [rsp + 1184]
                        lea              r8, [rsp + 1184]
.Lx145_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx145_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx145_111
                        cmp              esi, 1;                              jne   .Lx145_112
                        mov              r8, rax;                             jmp   .Lx145_110
.Lx145_112:             cmp              esi, 2;                              jne   .Lx145_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx145_111
                        mov              r8, rax;                             jmp   .Lx145_110
.Lx145_113:             cmp              al, 72;                              jne   .Lx145_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx145_111
                        cmp              rax, r8;                             je    .Lx145_111
                        mov              r8, rax;                             jmp   .Lx145_110
.Lx145_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx145_114
                        cmp              al, 104;                             je    .Lx145_114
                        cmp              al, 72;                              jne   .Lx145_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx145_114
                                                                              jmp   .Lx145_118
.Lx145_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx145_115
                        cmp              al, 3;                               je    .Lx145_114
                        cmp              al, 2;                               jne   .Lx145_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx145_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx145_114
                                                                              jmp   .Lx145_116
.Lx145_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx145_117
.Lx145_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx145_117
.Lx145_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx145_117:             mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx
                        cmp              al, 104;                             je    n115_var_ref_α
                                                                              jmp   n104_var_ref_α
n103_call_prolog_β:     mov              r11, 43;                             jmp   n115_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n104_var_ref_α:         mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx;         jmp   n105_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n105_lit_string_α:      mov              r11, 45
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .Lx148_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n106_call_prolog_α
.Lx148_0:               .quad            .Lx148_0_s
.Lx148_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n106_call_prolog_α:     mov              r11, 46
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              rsi, qword ptr [rip + .Lx149_2];     jmp   .Lx149_3
.Lx149_2:               .quad            .Lx149_2_s
.Lx149_2_s:             .string          "[]"
.Lx149_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n114_call_prolog_α
                                                                              jmp   n107_var_ref_α
n106_call_prolog_β:     mov              r11, 46;                             jmp   n114_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n107_var_ref_α:         mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n108_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n108_var_ref_α:         mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n109_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n109_call_prolog_α:     mov              r11, 49
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        lea              rdi, [rsp + 1024]
                        lea              r8, [rsp + 1024]
.Lx154_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx154_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              esi, 1;                              jne   .Lx154_55
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_55:              cmp              esi, 2;                              jne   .Lx154_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_56:              cmp              al, 72;                              jne   .Lx154_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx154_41
                        cmp              rax, r8;                             je    .Lx154_41
                        mov              r8, rax;                             jmp   .Lx154_40
.Lx154_41:              lea              r9, [rsp + 1040]
.Lx154_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx154_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              esi, 1;                              jne   .Lx154_57
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_57:              cmp              esi, 2;                              jne   .Lx154_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_58:              cmp              al, 72;                              jne   .Lx154_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx154_43
                        cmp              rax, r9;                             je    .Lx154_43
                        mov              r9, rax;                             jmp   .Lx154_42
.Lx154_43:              cmp              r8, r9;                              je    .Lx154_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx154_44
                        cmp              al, 104;                             je    .Lx154_44
                        cmp              al, 72;                              jne   .Lx154_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx154_44
                                                                              jmp   .Lx154_45
.Lx154_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx154_53
                        cmp              al, 104;                             je    .Lx154_53
                        cmp              al, 72;                              jne   .Lx154_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_53
                                                                              jmp   .Lx154_46
.Lx154_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx154_51
.Lx154_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx154_47
                        cmp              al, 104;                             je    .Lx154_47
                        cmp              al, 72;                              jne   .Lx154_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx154_47
                                                                              jmp   .Lx154_48
.Lx154_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx154_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx154_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx154_51
.Lx154_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx154_49
                        cmp              dl, 80;                              je    .Lx154_53
                                                                              jmp   .Lx154_52
.Lx154_49:              cmp              dl, 80;                              je    .Lx154_52
                        cmp              cl, 5;                               je    .Lx154_53
                        cmp              dl, 5;                               je    .Lx154_53
                        cmp              cl, 3;                               jne   .Lx154_50
                        cmp              dl, 3;                               jne   .Lx154_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx154_51
                                                                              jmp   .Lx154_52
.Lx154_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx154_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx154_53
.Lx154_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx154_54
.Lx154_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx154_54
.Lx154_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx154_54:              mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx
                        cmp              al, 104;                             je    n114_call_prolog_α
                                                                              jmp   n110_var_ref_α
n109_call_prolog_β:     mov              r11, 49;                             jmp   n114_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n110_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n111_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n111_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n112_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n112_call_prolog_α:     mov              r11, 52
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        lea              r8, [rsp + 944]
.Lx159_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx159_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              esi, 1;                              jne   .Lx159_55
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_55:              cmp              esi, 2;                              jne   .Lx159_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_56:              cmp              al, 72;                              jne   .Lx159_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx159_41
                        cmp              rax, r8;                             je    .Lx159_41
                        mov              r8, rax;                             jmp   .Lx159_40
.Lx159_41:              lea              r9, [rsp + 960]
.Lx159_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx159_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              esi, 1;                              jne   .Lx159_57
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_57:              cmp              esi, 2;                              jne   .Lx159_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_58:              cmp              al, 72;                              jne   .Lx159_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx159_43
                        cmp              rax, r9;                             je    .Lx159_43
                        mov              r9, rax;                             jmp   .Lx159_42
.Lx159_43:              cmp              r8, r9;                              je    .Lx159_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx159_44
                        cmp              al, 104;                             je    .Lx159_44
                        cmp              al, 72;                              jne   .Lx159_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx159_44
                                                                              jmp   .Lx159_45
.Lx159_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_53
                        cmp              al, 104;                             je    .Lx159_53
                        cmp              al, 72;                              jne   .Lx159_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_53
                                                                              jmp   .Lx159_46
.Lx159_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx159_51
.Lx159_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx159_47
                        cmp              al, 104;                             je    .Lx159_47
                        cmp              al, 72;                              jne   .Lx159_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx159_47
                                                                              jmp   .Lx159_48
.Lx159_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx159_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx159_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx159_51
.Lx159_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx159_49
                        cmp              dl, 80;                              je    .Lx159_53
                                                                              jmp   .Lx159_52
.Lx159_49:              cmp              dl, 80;                              je    .Lx159_52
                        cmp              cl, 5;                               je    .Lx159_53
                        cmp              dl, 5;                               je    .Lx159_53
                        cmp              cl, 3;                               jne   .Lx159_50
                        cmp              dl, 3;                               jne   .Lx159_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx159_51
                                                                              jmp   .Lx159_52
.Lx159_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx159_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx159_53
.Lx159_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx159_54
.Lx159_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx159_54
.Lx159_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx159_54:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n114_call_prolog_α
                                                                              jmp   n113_suspend_α
n112_call_prolog_β:     mov              r11, 52;                             jmp   n114_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n113_suspend_α:         mov              r11, 53
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx161_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lx161_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n113_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n113_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F3_γ
n113_suspend_β:         mov              r11, 53;                             jmp   n114_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n114_call_prolog_α:     mov              r11, 54
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    queens$2F3_ω
                                                                              jmp   n115_var_ref_α
n114_call_prolog_β:     mov              r11, 54;                             jmp   queens$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n116_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n116_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n117_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n117_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        lea              r8, [rsp + 816]
.Lx167_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx167_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx167_41
                        cmp              esi, 1;                              jne   .Lx167_55
                        mov              r8, rax;                             jmp   .Lx167_40
.Lx167_55:              cmp              esi, 2;                              jne   .Lx167_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx167_41
                        mov              r8, rax;                             jmp   .Lx167_40
.Lx167_56:              cmp              al, 72;                              jne   .Lx167_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx167_41
                        cmp              rax, r8;                             je    .Lx167_41
                        mov              r8, rax;                             jmp   .Lx167_40
.Lx167_41:              lea              r9, [rsp + 832]
.Lx167_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx167_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx167_43
                        cmp              esi, 1;                              jne   .Lx167_57
                        mov              r9, rax;                             jmp   .Lx167_42
.Lx167_57:              cmp              esi, 2;                              jne   .Lx167_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx167_43
                        mov              r9, rax;                             jmp   .Lx167_42
.Lx167_58:              cmp              al, 72;                              jne   .Lx167_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx167_43
                        cmp              rax, r9;                             je    .Lx167_43
                        mov              r9, rax;                             jmp   .Lx167_42
.Lx167_43:              cmp              r8, r9;                              je    .Lx167_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx167_44
                        cmp              al, 104;                             je    .Lx167_44
                        cmp              al, 72;                              jne   .Lx167_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx167_44
                                                                              jmp   .Lx167_45
.Lx167_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx167_53
                        cmp              al, 104;                             je    .Lx167_53
                        cmp              al, 72;                              jne   .Lx167_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx167_53
                                                                              jmp   .Lx167_46
.Lx167_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx167_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx167_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx167_51
.Lx167_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx167_47
                        cmp              al, 104;                             je    .Lx167_47
                        cmp              al, 72;                              jne   .Lx167_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx167_47
                                                                              jmp   .Lx167_48
.Lx167_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx167_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx167_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx167_51
.Lx167_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx167_49
                        cmp              dl, 80;                              je    .Lx167_53
                                                                              jmp   .Lx167_52
.Lx167_49:              cmp              dl, 80;                              je    .Lx167_52
                        cmp              cl, 5;                               je    .Lx167_53
                        cmp              dl, 5;                               je    .Lx167_53
                        cmp              cl, 3;                               jne   .Lx167_50
                        cmp              dl, 3;                               jne   .Lx167_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx167_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx167_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx167_51
                                                                              jmp   .Lx167_52
.Lx167_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx167_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx167_53
.Lx167_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx167_54
.Lx167_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx167_54
.Lx167_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx167_54:              mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n118_var_ref_α
n117_call_prolog_β:     mov              r11, 57;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n118_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n119_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n119_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n120_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n120_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lx172_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx172_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx172_41
                        cmp              esi, 1;                              jne   .Lx172_55
                        mov              r8, rax;                             jmp   .Lx172_40
.Lx172_55:              cmp              esi, 2;                              jne   .Lx172_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx172_41
                        mov              r8, rax;                             jmp   .Lx172_40
.Lx172_56:              cmp              al, 72;                              jne   .Lx172_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx172_41
                        cmp              rax, r8;                             je    .Lx172_41
                        mov              r8, rax;                             jmp   .Lx172_40
.Lx172_41:              lea              r9, [rsp + 752]
.Lx172_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx172_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx172_43
                        cmp              esi, 1;                              jne   .Lx172_57
                        mov              r9, rax;                             jmp   .Lx172_42
.Lx172_57:              cmp              esi, 2;                              jne   .Lx172_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx172_43
                        mov              r9, rax;                             jmp   .Lx172_42
.Lx172_58:              cmp              al, 72;                              jne   .Lx172_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx172_43
                        cmp              rax, r9;                             je    .Lx172_43
                        mov              r9, rax;                             jmp   .Lx172_42
.Lx172_43:              cmp              r8, r9;                              je    .Lx172_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx172_44
                        cmp              al, 104;                             je    .Lx172_44
                        cmp              al, 72;                              jne   .Lx172_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx172_44
                                                                              jmp   .Lx172_45
.Lx172_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx172_53
                        cmp              al, 104;                             je    .Lx172_53
                        cmp              al, 72;                              jne   .Lx172_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx172_53
                                                                              jmp   .Lx172_46
.Lx172_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx172_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx172_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx172_51
.Lx172_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx172_47
                        cmp              al, 104;                             je    .Lx172_47
                        cmp              al, 72;                              jne   .Lx172_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx172_47
                                                                              jmp   .Lx172_48
.Lx172_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx172_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx172_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx172_51
.Lx172_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx172_49
                        cmp              dl, 80;                              je    .Lx172_53
                                                                              jmp   .Lx172_52
.Lx172_49:              cmp              dl, 80;                              je    .Lx172_52
                        cmp              cl, 5;                               je    .Lx172_53
                        cmp              dl, 5;                               je    .Lx172_53
                        cmp              cl, 3;                               jne   .Lx172_50
                        cmp              dl, 3;                               jne   .Lx172_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx172_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx172_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx172_51
                                                                              jmp   .Lx172_52
.Lx172_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx172_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx172_53
.Lx172_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx172_54
.Lx172_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx172_54
.Lx172_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx172_54:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n121_var_ref_α
n120_call_prolog_β:     mov              r11, 60;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n121_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n122_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n122_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n123_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n123_call_prolog_α:     mov              r11, 63
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        lea              r8, [rsp + 656]
.Lx177_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx177_41
                        cmp              esi, 1;                              jne   .Lx177_55
                        mov              r8, rax;                             jmp   .Lx177_40
.Lx177_55:              cmp              esi, 2;                              jne   .Lx177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx177_41
                        mov              r8, rax;                             jmp   .Lx177_40
.Lx177_56:              cmp              al, 72;                              jne   .Lx177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx177_41
                        cmp              rax, r8;                             je    .Lx177_41
                        mov              r8, rax;                             jmp   .Lx177_40
.Lx177_41:              lea              r9, [rsp + 672]
.Lx177_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx177_43
                        cmp              esi, 1;                              jne   .Lx177_57
                        mov              r9, rax;                             jmp   .Lx177_42
.Lx177_57:              cmp              esi, 2;                              jne   .Lx177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx177_43
                        mov              r9, rax;                             jmp   .Lx177_42
.Lx177_58:              cmp              al, 72;                              jne   .Lx177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx177_43
                        cmp              rax, r9;                             je    .Lx177_43
                        mov              r9, rax;                             jmp   .Lx177_42
.Lx177_43:              cmp              r8, r9;                              je    .Lx177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx177_44
                        cmp              al, 104;                             je    .Lx177_44
                        cmp              al, 72;                              jne   .Lx177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx177_44
                                                                              jmp   .Lx177_45
.Lx177_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx177_53
                        cmp              al, 104;                             je    .Lx177_53
                        cmp              al, 72;                              jne   .Lx177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx177_53
                                                                              jmp   .Lx177_46
.Lx177_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx177_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx177_51
.Lx177_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx177_47
                        cmp              al, 104;                             je    .Lx177_47
                        cmp              al, 72;                              jne   .Lx177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx177_47
                                                                              jmp   .Lx177_48
.Lx177_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx177_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx177_51
.Lx177_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx177_49
                        cmp              dl, 80;                              je    .Lx177_53
                                                                              jmp   .Lx177_52
.Lx177_49:              cmp              dl, 80;                              je    .Lx177_52
                        cmp              cl, 5;                               je    .Lx177_53
                        cmp              dl, 5;                               je    .Lx177_53
                        cmp              cl, 3;                               jne   .Lx177_50
                        cmp              dl, 3;                               jne   .Lx177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx177_51
                                                                              jmp   .Lx177_52
.Lx177_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx177_53
.Lx177_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx177_54
.Lx177_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx177_54
.Lx177_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx177_54:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n124_var_ref_α
n123_call_prolog_β:     mov              r11, 63;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n124_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1360]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx;          jmp   n125_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n127_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n127_call_proc_staged_α:
                        mov              r11, 67
                        mov              qword ptr [rsp + 560], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx185_200
                        mov              rax, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx185_201
.Lx185_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx185_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx185_202
                        mov              rax, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx185_203
.Lx185_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx185_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx185_204
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx185_205
.Lx185_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx185_205:             lea              rax, [rip + .Lx185_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx185_1
                        lea              rcx, [rip + .Lx185_4]
                        push             rcx
                        lea              rcx, [rip + .Lx185_3]
                        push             rcx
                        lea              rdx, [rip + .Lx185_4];               jmp   rax
.Lx185_3:               add              rsp, 16
                        mov              qword ptr [rsp + 568], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lx185_5
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx185_2
.Lx185_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx185_2
.Lx185_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 560]
                        test             rax, rax;                            jne   .Lx185_6
                        mov              qword ptr [rsp + 560], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx185_2
.Lx185_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx185_2
.Lx185_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx185_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx185_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 496]
                        mov              rdx, qword ptr [rsp + 504]
.Lx185_29:              mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n128_var_ref_α
n127_call_proc_staged_β:
                        mov              r11, 67
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 560], 0
                        lea              rdi, [rsp + 576]
                        lea              rsi, [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n139_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              ecx, 64
                        mov              r8d, 1120
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 592]
                        mov              rdx, qword ptr [rsp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n139_call_prolog_α
                        lea              r8, [rip + .Lx185_7]
                        push             r8
                        lea              rcx, [rip + .Lx185_4]
                        push             rcx
                        lea              rcx, [rip + .Lx185_3]
                        push             rcx
                        lea              rdx, [rip + .Lx185_4];               jmp   rax
.Lx185_7:               add              rsp, 8
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n128_var_ref_α
.Lx185_0:               .quad            .Lx185_0_s
.Lx185_0_s:             .string          "sel/3"
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n130_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n130_call_proc_staged_α:
                        mov              r11, 70
                        mov              qword ptr [rsp + 432], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_200
                        mov              rax, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx191_201
.Lx191_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx191_202
                        mov              rax, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx191_203
.Lx191_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_203:             lea              rax, [rip + .Lx191_7]
                        push             rax
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx191_1
                        lea              rcx, [rip + .Lx191_4]
                        push             rcx
                        lea              rcx, [rip + .Lx191_3]
                        push             rcx
                        lea              rdx, [rip + .Lx191_4];               jmp   rax
.Lx191_3:               add              rsp, 16
                        mov              qword ptr [rsp + 440], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx191_5
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx191_2
.Lx191_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx191_2
.Lx191_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 432]
                        test             rax, rax;                            jne   .Lx191_6
                        mov              qword ptr [rsp + 432], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx191_2
.Lx191_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx191_2
.Lx191_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx191_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx191_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 384]
                        mov              rdx, qword ptr [rsp + 392]
.Lx191_29:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n127_call_proc_staged_β
                                                                              jmp   n131_var_ref_α
n130_call_proc_staged_β:
                        mov              r11, 70
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 432], 0
                        lea              rdi, [rsp + 448]
                        lea              rsi, [rsp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n127_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 448]
                        mov              rdx, qword ptr [rsp + 456]
                        mov              ecx, 48
                        mov              r8d, 416
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 464]
                        mov              rdx, qword ptr [rsp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 480]
                        mov              rdx, qword ptr [rsp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n127_call_proc_staged_β
                        lea              r8, [rip + .Lx191_7]
                        push             r8
                        lea              rcx, [rip + .Lx191_4]
                        push             rcx
                        lea              rcx, [rip + .Lx191_3]
                        push             rcx
                        lea              rdx, [rip + .Lx191_4];               jmp   rax
.Lx191_7:               add              rsp, 8
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n127_call_proc_staged_β
                                                                              jmp   n131_var_ref_α
.Lx191_0:               .quad            .Lx191_0_s
.Lx191_0_s:             .string          "not_attack/2"
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1296]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n132_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .Lx194_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n133_var_ref_α
.Lx194_0:               .quad            .Lx194_0_s
.Lx194_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1328]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1312]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n135_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_call_prolog_α:     mov              r11, 75
                        mov              rax, qword ptr [rsp + 240]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 248]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n136_var_ref_α
n135_call_prolog_β:     mov              r11, 75;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1344]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n137_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_proc_staged_α:
                        mov              r11, 77
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx203_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx203_201
.Lx203_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx203_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx203_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx203_203
.Lx203_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx203_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx203_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx203_205
.Lx203_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx203_205:             lea              rax, [rip + .Lx203_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx203_1
                        lea              rcx, [rip + .Lx203_4]
                        push             rcx
                        lea              rcx, [rip + .Lx203_3]
                        push             rcx
                        lea              rdx, [rip + .Lx203_4];               jmp   rax
.Lx203_3:               add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx203_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx203_2
.Lx203_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx203_2
.Lx203_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx203_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx203_2
.Lx203_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx203_2
.Lx203_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx203_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx203_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx203_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n130_call_proc_staged_β
                                                                              jmp   n138_suspend_α
n137_call_proc_staged_β:
                        mov              r11, 77
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n130_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1280
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n130_call_proc_staged_β
                        lea              r8, [rip + .Lx203_7]
                        push             r8
                        lea              rcx, [rip + .Lx203_4]
                        push             rcx
                        lea              rcx, [rip + .Lx203_3]
                        push             rcx
                        lea              rdx, [rip + .Lx203_4];               jmp   rax
.Lx203_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n130_call_proc_staged_β
                                                                              jmp   n138_suspend_α
.Lx203_0:               .quad            .Lx203_0_s
.Lx203_0_s:             .string          "queens/3"
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:         mov              r11, 78
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx205_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lx205_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n138_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F3_γ
n138_suspend_β:         mov              r11, 78;                             jmp   n137_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n139_call_prolog_α:     mov              r11, 79
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    queens$2F3_ω
                                                                              jmp   queens$2F3_ω
n139_call_prolog_β:     mov              r11, 79;                             jmp   queens$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_β:
                                                                              jmp   n113_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx206_50
                        mov              qword ptr [rsp + 1280], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1280];         jmp   rax
.Lx206_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1400]
                        add              rsp, 1424;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1408]
                        add              rsp, 1424;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__queens$2F2:
                        sub              rsp, 656
                        mov              qword ptr [rsp + 632], rcx
                        mov              qword ptr [rsp + 640], rdx
                        mov              qword ptr [rsp + 648], rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
queens$2F2_α_body:
                        lea              rax, [rip + n222_suspend_β]
                        mov              qword ptr [rsp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n207_call_prolog_α:     mov              r11, 80
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx224_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx224_101
.Lx224_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx224_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx224_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx224_101
.Lx224_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx224_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    queens$2F2_ω
                                                                              jmp   n208_var_ref_α
n207_call_prolog_β:     mov              r11, 80;                             jmp   queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n209_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n210_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n210_call_prolog_α:     mov              r11, 83
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 504], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        lea              rdi, [rsp + 480]
                        lea              r8, [rsp + 480]
.Lx229_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx229_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx229_41
                        cmp              esi, 1;                              jne   .Lx229_55
                        mov              r8, rax;                             jmp   .Lx229_40
.Lx229_55:              cmp              esi, 2;                              jne   .Lx229_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx229_41
                        mov              r8, rax;                             jmp   .Lx229_40
.Lx229_56:              cmp              al, 72;                              jne   .Lx229_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx229_41
                        cmp              rax, r8;                             je    .Lx229_41
                        mov              r8, rax;                             jmp   .Lx229_40
.Lx229_41:              lea              r9, [rsp + 496]
.Lx229_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx229_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx229_43
                        cmp              esi, 1;                              jne   .Lx229_57
                        mov              r9, rax;                             jmp   .Lx229_42
.Lx229_57:              cmp              esi, 2;                              jne   .Lx229_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx229_43
                        mov              r9, rax;                             jmp   .Lx229_42
.Lx229_58:              cmp              al, 72;                              jne   .Lx229_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx229_43
                        cmp              rax, r9;                             je    .Lx229_43
                        mov              r9, rax;                             jmp   .Lx229_42
.Lx229_43:              cmp              r8, r9;                              je    .Lx229_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx229_44
                        cmp              al, 104;                             je    .Lx229_44
                        cmp              al, 72;                              jne   .Lx229_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx229_44
                                                                              jmp   .Lx229_45
.Lx229_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx229_53
                        cmp              al, 104;                             je    .Lx229_53
                        cmp              al, 72;                              jne   .Lx229_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx229_53
                                                                              jmp   .Lx229_46
.Lx229_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx229_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx229_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx229_51
.Lx229_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx229_47
                        cmp              al, 104;                             je    .Lx229_47
                        cmp              al, 72;                              jne   .Lx229_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx229_47
                                                                              jmp   .Lx229_48
.Lx229_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx229_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx229_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx229_51
.Lx229_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx229_49
                        cmp              dl, 80;                              je    .Lx229_53
                                                                              jmp   .Lx229_52
.Lx229_49:              cmp              dl, 80;                              je    .Lx229_52
                        cmp              cl, 5;                               je    .Lx229_53
                        cmp              dl, 5;                               je    .Lx229_53
                        cmp              cl, 3;                               jne   .Lx229_50
                        cmp              dl, 3;                               jne   .Lx229_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx229_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx229_51
                                                                              jmp   .Lx229_52
.Lx229_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx229_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx229_53
.Lx229_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx229_54
.Lx229_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx229_54
.Lx229_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx229_54:              mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n223_call_prolog_α
                                                                              jmp   n211_var_ref_α
n210_call_prolog_β:     mov              r11, 83;                             jmp   n223_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n212_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n212_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n213_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n213_call_prolog_α:     mov              r11, 86
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        lea              r8, [rsp + 400]
.Lx234_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx234_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx234_41
                        cmp              esi, 1;                              jne   .Lx234_55
                        mov              r8, rax;                             jmp   .Lx234_40
.Lx234_55:              cmp              esi, 2;                              jne   .Lx234_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx234_41
                        mov              r8, rax;                             jmp   .Lx234_40
.Lx234_56:              cmp              al, 72;                              jne   .Lx234_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx234_41
                        cmp              rax, r8;                             je    .Lx234_41
                        mov              r8, rax;                             jmp   .Lx234_40
.Lx234_41:              lea              r9, [rsp + 416]
.Lx234_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx234_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx234_43
                        cmp              esi, 1;                              jne   .Lx234_57
                        mov              r9, rax;                             jmp   .Lx234_42
.Lx234_57:              cmp              esi, 2;                              jne   .Lx234_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx234_43
                        mov              r9, rax;                             jmp   .Lx234_42
.Lx234_58:              cmp              al, 72;                              jne   .Lx234_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx234_43
                        cmp              rax, r9;                             je    .Lx234_43
                        mov              r9, rax;                             jmp   .Lx234_42
.Lx234_43:              cmp              r8, r9;                              je    .Lx234_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx234_44
                        cmp              al, 104;                             je    .Lx234_44
                        cmp              al, 72;                              jne   .Lx234_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx234_44
                                                                              jmp   .Lx234_45
.Lx234_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx234_53
                        cmp              al, 104;                             je    .Lx234_53
                        cmp              al, 72;                              jne   .Lx234_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx234_53
                                                                              jmp   .Lx234_46
.Lx234_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx234_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx234_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx234_51
.Lx234_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx234_47
                        cmp              al, 104;                             je    .Lx234_47
                        cmp              al, 72;                              jne   .Lx234_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx234_47
                                                                              jmp   .Lx234_48
.Lx234_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx234_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx234_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx234_51
.Lx234_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx234_49
                        cmp              dl, 80;                              je    .Lx234_53
                                                                              jmp   .Lx234_52
.Lx234_49:              cmp              dl, 80;                              je    .Lx234_52
                        cmp              cl, 5;                               je    .Lx234_53
                        cmp              dl, 5;                               je    .Lx234_53
                        cmp              cl, 3;                               jne   .Lx234_50
                        cmp              dl, 3;                               jne   .Lx234_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx234_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx234_51
                                                                              jmp   .Lx234_52
.Lx234_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx234_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx234_53
.Lx234_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx234_54
.Lx234_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx234_54
.Lx234_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx234_54:              mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n223_call_prolog_α
                                                                              jmp   n214_lit_integer_α
n213_call_prolog_β:     mov              r11, 86;                             jmp   n223_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_integer_α:     mov              r11, 87
                        mov              qword ptr [rsp + 336], 3             # result
                        mov              rax, qword ptr [rip + .Lx235_0]
                        mov              qword ptr [rsp + 344], rax;          jmp   n215_var_ref_α
.Lx235_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 592]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n216_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n217_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n217_call_proc_staged_α:
                        mov              r11, 90
                        lea              rsi, [rsp + 336]
                        lea              rdx, [rsp + 352]
                        lea              rcx, [rsp + 368]
                        call             range$2F3_dcα;                       jmp   .Lx241_2
.Lx241_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx241_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
.Lx241_29:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n223_call_prolog_α
                                                                              jmp   n218_var_ref_α
n217_call_proc_staged_β:
                        mov              r11, 90;                             jmp   n223_call_prolog_α
.Lx241_0:               .quad            .Lx241_0_s
.Lx241_0_s:             .string          "range/3"
#-----------------------------------------------------------------------------------------------------------------------
n218_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 560]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n219_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lx244_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n220_var_ref_α
.Lx244_0:               .quad            .Lx244_0_s
.Lx244_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 576]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n221_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n221_call_proc_staged_α:
                        mov              r11, 94
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx248_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx248_201
.Lx248_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx248_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx248_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx248_203
.Lx248_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx248_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx248_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx248_205
.Lx248_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx248_205:             lea              rax, [rip + .Lx248_7]
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx248_1
                        lea              rcx, [rip + .Lx248_4]
                        push             rcx
                        lea              rcx, [rip + .Lx248_3]
                        push             rcx
                        lea              rdx, [rip + .Lx248_4];               jmp   rax
.Lx248_3:               add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx248_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx248_2
.Lx248_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx248_2
.Lx248_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx248_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx248_2
.Lx248_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx248_2
.Lx248_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx248_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx248_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx248_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n217_call_proc_staged_β
                                                                              jmp   n222_suspend_α
n221_call_proc_staged_β:
                        mov              r11, 94
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n217_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1280
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n217_call_proc_staged_β
                        lea              r8, [rip + .Lx248_7]
                        push             r8
                        lea              rcx, [rip + .Lx248_4]
                        push             rcx
                        lea              rcx, [rip + .Lx248_3]
                        push             rcx
                        lea              rdx, [rip + .Lx248_4];               jmp   rax
.Lx248_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n217_call_proc_staged_β
                                                                              jmp   n222_suspend_α
.Lx248_0:               .quad            .Lx248_0_s
.Lx248_0_s:             .string          "queens/3"
#-----------------------------------------------------------------------------------------------------------------------
n222_suspend_α:         mov              r11, 95
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx250_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lx250_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n222_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n222_suspend_β]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   queens$2F2_γ
n222_suspend_β:         mov              r11, 95;                             jmp   n221_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n223_call_prolog_α:     mov              r11, 96
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    queens$2F2_ω
                                                                              jmp   queens$2F2_ω
n223_call_prolog_β:     mov              r11, 96;                             jmp   queens$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_β:
                                                                              jmp   n222_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx251_50
                        mov              qword ptr [rsp + 544], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 544];          jmp   rax
.Lx251_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 632]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
queens$2F2_ω:
                        mov              rcx, qword ptr [rsp + 640]
                        add              rsp, 656;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__range$2F3:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1264
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
range$2F3_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_prolog_α:     mov              r11, 97
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx293_102
                        mov              rax, qword ptr [rsp + 96]
                        mov              rdx, qword ptr [rsp + 104];          jmp   .Lx293_101
.Lx293_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx293_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx293_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx293_101
.Lx293_100:             lea              rdi, [rsp + 112]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx293_101:             mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    range$2F3_ω
                                                                              jmp   n253_var_ref_α
n252_call_prolog_β:     mov              r11, 97;                             jmp   range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n254_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n254_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n255_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_call_prolog_α:     mov              r11, 100
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        lea              r8, [rsp + 1120]
.Lx298_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx298_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx298_41
                        cmp              esi, 1;                              jne   .Lx298_55
                        mov              r8, rax;                             jmp   .Lx298_40
.Lx298_55:              cmp              esi, 2;                              jne   .Lx298_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx298_41
                        mov              r8, rax;                             jmp   .Lx298_40
.Lx298_56:              cmp              al, 72;                              jne   .Lx298_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx298_41
                        cmp              rax, r8;                             je    .Lx298_41
                        mov              r8, rax;                             jmp   .Lx298_40
.Lx298_41:              lea              r9, [rsp + 1136]
.Lx298_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx298_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx298_43
                        cmp              esi, 1;                              jne   .Lx298_57
                        mov              r9, rax;                             jmp   .Lx298_42
.Lx298_57:              cmp              esi, 2;                              jne   .Lx298_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx298_43
                        mov              r9, rax;                             jmp   .Lx298_42
.Lx298_58:              cmp              al, 72;                              jne   .Lx298_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx298_43
                        cmp              rax, r9;                             je    .Lx298_43
                        mov              r9, rax;                             jmp   .Lx298_42
.Lx298_43:              cmp              r8, r9;                              je    .Lx298_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx298_44
                        cmp              al, 104;                             je    .Lx298_44
                        cmp              al, 72;                              jne   .Lx298_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx298_44
                                                                              jmp   .Lx298_45
.Lx298_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx298_53
                        cmp              al, 104;                             je    .Lx298_53
                        cmp              al, 72;                              jne   .Lx298_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx298_53
                                                                              jmp   .Lx298_46
.Lx298_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx298_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx298_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx298_51
.Lx298_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx298_47
                        cmp              al, 104;                             je    .Lx298_47
                        cmp              al, 72;                              jne   .Lx298_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx298_47
                                                                              jmp   .Lx298_48
.Lx298_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx298_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx298_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx298_51
.Lx298_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx298_49
                        cmp              dl, 80;                              je    .Lx298_53
                                                                              jmp   .Lx298_52
.Lx298_49:              cmp              dl, 80;                              je    .Lx298_52
                        cmp              cl, 5;                               je    .Lx298_53
                        cmp              dl, 5;                               je    .Lx298_53
                        cmp              cl, 3;                               jne   .Lx298_50
                        cmp              dl, 3;                               jne   .Lx298_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx298_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx298_51
                                                                              jmp   .Lx298_52
.Lx298_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx298_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx298_53
.Lx298_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx298_54
.Lx298_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx298_54
.Lx298_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx298_54:              mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n256_var_ref_α
n255_call_prolog_β:     mov              r11, 100;                            jmp   n267_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n257_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n257_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n258_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        lea              r8, [rsp + 1040]
.Lx303_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx303_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx303_41
                        cmp              esi, 1;                              jne   .Lx303_55
                        mov              r8, rax;                             jmp   .Lx303_40
.Lx303_55:              cmp              esi, 2;                              jne   .Lx303_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx303_41
                        mov              r8, rax;                             jmp   .Lx303_40
.Lx303_56:              cmp              al, 72;                              jne   .Lx303_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx303_41
                        cmp              rax, r8;                             je    .Lx303_41
                        mov              r8, rax;                             jmp   .Lx303_40
.Lx303_41:              lea              r9, [rsp + 1056]
.Lx303_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx303_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx303_43
                        cmp              esi, 1;                              jne   .Lx303_57
                        mov              r9, rax;                             jmp   .Lx303_42
.Lx303_57:              cmp              esi, 2;                              jne   .Lx303_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx303_43
                        mov              r9, rax;                             jmp   .Lx303_42
.Lx303_58:              cmp              al, 72;                              jne   .Lx303_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx303_43
                        cmp              rax, r9;                             je    .Lx303_43
                        mov              r9, rax;                             jmp   .Lx303_42
.Lx303_43:              cmp              r8, r9;                              je    .Lx303_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx303_44
                        cmp              al, 104;                             je    .Lx303_44
                        cmp              al, 72;                              jne   .Lx303_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx303_44
                                                                              jmp   .Lx303_45
.Lx303_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx303_53
                        cmp              al, 104;                             je    .Lx303_53
                        cmp              al, 72;                              jne   .Lx303_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx303_53
                                                                              jmp   .Lx303_46
.Lx303_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx303_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx303_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx303_51
.Lx303_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx303_47
                        cmp              al, 104;                             je    .Lx303_47
                        cmp              al, 72;                              jne   .Lx303_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx303_47
                                                                              jmp   .Lx303_48
.Lx303_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx303_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx303_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx303_51
.Lx303_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx303_49
                        cmp              dl, 80;                              je    .Lx303_53
                                                                              jmp   .Lx303_52
.Lx303_49:              cmp              dl, 80;                              je    .Lx303_52
                        cmp              cl, 5;                               je    .Lx303_53
                        cmp              dl, 5;                               je    .Lx303_53
                        cmp              cl, 3;                               jne   .Lx303_50
                        cmp              dl, 3;                               jne   .Lx303_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx303_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx303_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx303_51
                                                                              jmp   .Lx303_52
.Lx303_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx303_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx303_53
.Lx303_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx303_54
.Lx303_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx303_54
.Lx303_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx303_54:              mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n259_var_ref_α
n258_call_prolog_β:     mov              r11, 103;                            jmp   n267_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n260_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rsp + 1008], 2            # result
                        mov              dword ptr [rsp + 1012], 1
                        mov              rax, qword ptr [rip + .Lx306_0]
                        mov              qword ptr [rsp + 1016], rax;         jmp   n261_var_ref_α
.Lx306_0:               .quad            .Lx306_0_s
.Lx306_0_s:             .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n261_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n262_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rsp + 896], 2             # result
                        mov              dword ptr [rsp + 900], 2
                        mov              rax, qword ptr [rip + .Lx309_0]
                        mov              qword ptr [rsp + 904], rax;          jmp   n263_call_prolog_α
.Lx309_0:               .quad            .Lx309_0_s
.Lx309_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n263_call_prolog_α:     mov              r11, 108
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n264_call_prolog_α
n263_call_prolog_β:     mov              r11, 108;                            jmp   n267_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n264_call_prolog_α:     mov              r11, 109
                        mov              rax, qword ptr [rsp + 928]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 936]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lx311_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx311_41
                        cmp              esi, 1;                              jne   .Lx311_55
                        mov              r8, rax;                             jmp   .Lx311_40
.Lx311_55:              cmp              esi, 2;                              jne   .Lx311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx311_41
                        mov              r8, rax;                             jmp   .Lx311_40
.Lx311_56:              cmp              al, 72;                              jne   .Lx311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx311_41
                        cmp              rax, r8;                             je    .Lx311_41
                        mov              r8, rax;                             jmp   .Lx311_40
.Lx311_41:              lea              r9, [rsp + 864]
.Lx311_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx311_43
                        cmp              esi, 1;                              jne   .Lx311_57
                        mov              r9, rax;                             jmp   .Lx311_42
.Lx311_57:              cmp              esi, 2;                              jne   .Lx311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx311_43
                        mov              r9, rax;                             jmp   .Lx311_42
.Lx311_58:              cmp              al, 72;                              jne   .Lx311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx311_43
                        cmp              rax, r9;                             je    .Lx311_43
                        mov              r9, rax;                             jmp   .Lx311_42
.Lx311_43:              cmp              r8, r9;                              je    .Lx311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx311_44
                        cmp              al, 104;                             je    .Lx311_44
                        cmp              al, 72;                              jne   .Lx311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx311_44
                                                                              jmp   .Lx311_45
.Lx311_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx311_53
                        cmp              al, 104;                             je    .Lx311_53
                        cmp              al, 72;                              jne   .Lx311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx311_53
                                                                              jmp   .Lx311_46
.Lx311_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx311_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx311_51
.Lx311_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx311_47
                        cmp              al, 104;                             je    .Lx311_47
                        cmp              al, 72;                              jne   .Lx311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx311_47
                                                                              jmp   .Lx311_48
.Lx311_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx311_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx311_51
.Lx311_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx311_49
                        cmp              dl, 80;                              je    .Lx311_53
                                                                              jmp   .Lx311_52
.Lx311_49:              cmp              dl, 80;                              je    .Lx311_52
                        cmp              cl, 5;                               je    .Lx311_53
                        cmp              dl, 5;                               je    .Lx311_53
                        cmp              cl, 3;                               jne   .Lx311_50
                        cmp              dl, 3;                               jne   .Lx311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx311_51
                                                                              jmp   .Lx311_52
.Lx311_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx311_53
.Lx311_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx311_54
.Lx311_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx311_54
.Lx311_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx311_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n267_call_prolog_α
                                                                              jmp   n265_cut_α
n264_call_prolog_β:     mov              r11, 109;                            jmp   n267_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n265_cut_α:             mov              r11, 110;                            jmp   n266_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n266_move_label_α:      mov              r11, 111
                        lea              rax, [rip + n267_call_prolog_α]
                        mov              qword ptr [rsp + 80], rax;           jmp   range$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n267_call_prolog_α:     mov              r11, 112
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 824], rax
                        lea              rdi, [rsp + 816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    range$2F3_ω
                                                                              jmp   n268_var_ref_α
n267_call_prolog_β:     mov              r11, 112;                            jmp   range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n268_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n269_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n269_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n270_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n270_call_prolog_α:     mov              r11, 115
                        mov              rax, qword ptr [rsp + 784]
                        mov              qword ptr [rsp + 752], rax
                        mov              rax, qword ptr [rsp + 792]
                        mov              qword ptr [rsp + 760], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        lea              rdi, [rsp + 736]
                        lea              r8, [rsp + 736]
.Lx320_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx320_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx320_41
                        cmp              esi, 1;                              jne   .Lx320_55
                        mov              r8, rax;                             jmp   .Lx320_40
.Lx320_55:              cmp              esi, 2;                              jne   .Lx320_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx320_41
                        mov              r8, rax;                             jmp   .Lx320_40
.Lx320_56:              cmp              al, 72;                              jne   .Lx320_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx320_41
                        cmp              rax, r8;                             je    .Lx320_41
                        mov              r8, rax;                             jmp   .Lx320_40
.Lx320_41:              lea              r9, [rsp + 752]
.Lx320_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx320_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx320_43
                        cmp              esi, 1;                              jne   .Lx320_57
                        mov              r9, rax;                             jmp   .Lx320_42
.Lx320_57:              cmp              esi, 2;                              jne   .Lx320_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx320_43
                        mov              r9, rax;                             jmp   .Lx320_42
.Lx320_58:              cmp              al, 72;                              jne   .Lx320_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx320_43
                        cmp              rax, r9;                             je    .Lx320_43
                        mov              r9, rax;                             jmp   .Lx320_42
.Lx320_43:              cmp              r8, r9;                              je    .Lx320_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx320_44
                        cmp              al, 104;                             je    .Lx320_44
                        cmp              al, 72;                              jne   .Lx320_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx320_44
                                                                              jmp   .Lx320_45
.Lx320_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx320_53
                        cmp              al, 104;                             je    .Lx320_53
                        cmp              al, 72;                              jne   .Lx320_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx320_53
                                                                              jmp   .Lx320_46
.Lx320_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx320_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx320_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx320_51
.Lx320_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx320_47
                        cmp              al, 104;                             je    .Lx320_47
                        cmp              al, 72;                              jne   .Lx320_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx320_47
                                                                              jmp   .Lx320_48
.Lx320_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx320_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx320_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx320_51
.Lx320_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx320_49
                        cmp              dl, 80;                              je    .Lx320_53
                                                                              jmp   .Lx320_52
.Lx320_49:              cmp              dl, 80;                              je    .Lx320_52
                        cmp              cl, 5;                               je    .Lx320_53
                        cmp              dl, 5;                               je    .Lx320_53
                        cmp              cl, 3;                               jne   .Lx320_50
                        cmp              dl, 3;                               jne   .Lx320_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx320_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx320_51
                                                                              jmp   .Lx320_52
.Lx320_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx320_53
.Lx320_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx320_54
.Lx320_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx320_54
.Lx320_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx320_54:              mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n271_var_ref_α
n270_call_prolog_β:     mov              r11, 115;                            jmp   n292_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx;          jmp   n272_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 704], rax
                        mov              qword ptr [rsp + 712], rdx;          jmp   n273_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n273_call_prolog_α:     mov              r11, 118
                        mov              rax, qword ptr [rsp + 704]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 712]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 688]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 696]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        lea              r8, [rsp + 656]
.Lx325_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx325_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx325_41
                        cmp              esi, 1;                              jne   .Lx325_55
                        mov              r8, rax;                             jmp   .Lx325_40
.Lx325_55:              cmp              esi, 2;                              jne   .Lx325_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx325_41
                        mov              r8, rax;                             jmp   .Lx325_40
.Lx325_56:              cmp              al, 72;                              jne   .Lx325_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx325_41
                        cmp              rax, r8;                             je    .Lx325_41
                        mov              r8, rax;                             jmp   .Lx325_40
.Lx325_41:              lea              r9, [rsp + 672]
.Lx325_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx325_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx325_43
                        cmp              esi, 1;                              jne   .Lx325_57
                        mov              r9, rax;                             jmp   .Lx325_42
.Lx325_57:              cmp              esi, 2;                              jne   .Lx325_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx325_43
                        mov              r9, rax;                             jmp   .Lx325_42
.Lx325_58:              cmp              al, 72;                              jne   .Lx325_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx325_43
                        cmp              rax, r9;                             je    .Lx325_43
                        mov              r9, rax;                             jmp   .Lx325_42
.Lx325_43:              cmp              r8, r9;                              je    .Lx325_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx325_44
                        cmp              al, 104;                             je    .Lx325_44
                        cmp              al, 72;                              jne   .Lx325_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx325_44
                                                                              jmp   .Lx325_45
.Lx325_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx325_53
                        cmp              al, 104;                             je    .Lx325_53
                        cmp              al, 72;                              jne   .Lx325_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx325_53
                                                                              jmp   .Lx325_46
.Lx325_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx325_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx325_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx325_51
.Lx325_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx325_47
                        cmp              al, 104;                             je    .Lx325_47
                        cmp              al, 72;                              jne   .Lx325_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx325_47
                                                                              jmp   .Lx325_48
.Lx325_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx325_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx325_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx325_51
.Lx325_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx325_49
                        cmp              dl, 80;                              je    .Lx325_53
                                                                              jmp   .Lx325_52
.Lx325_49:              cmp              dl, 80;                              je    .Lx325_52
                        cmp              cl, 5;                               je    .Lx325_53
                        cmp              dl, 5;                               je    .Lx325_53
                        cmp              cl, 3;                               jne   .Lx325_50
                        cmp              dl, 3;                               jne   .Lx325_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx325_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx325_51
                                                                              jmp   .Lx325_52
.Lx325_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx325_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx325_53
.Lx325_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx325_54
.Lx325_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx325_54
.Lx325_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx325_54:              mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n274_var_ref_α
n273_call_prolog_β:     mov              r11, 118;                            jmp   n292_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n275_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 608], rax
                        mov              qword ptr [rsp + 616], rdx;          jmp   n276_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n277_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n277_call_prolog_α:     mov              r11, 122
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        lea              r8, [rsp + 560]
.Lx332_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx332_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx332_61
                        cmp              esi, 1;                              jne   .Lx332_62
                        mov              r8, rax;                             jmp   .Lx332_60
.Lx332_62:              cmp              esi, 2;                              jne   .Lx332_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx332_61
                        mov              r8, rax;                             jmp   .Lx332_60
.Lx332_63:              cmp              al, 72;                              jne   .Lx332_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx332_61
                        cmp              rax, r8;                             je    .Lx332_61
                        mov              r8, rax;                             jmp   .Lx332_60
.Lx332_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx332_80
                        cmp              al, 104;                             je    .Lx332_80
                        cmp              al, 72;                              jne   .Lx332_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx332_80
                                                                              jmp   .Lx332_74
.Lx332_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx332_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx332_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx332_73
                        lea              r9, [rsp + 576]
.Lx332_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx332_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx332_65
                        cmp              esi, 1;                              jne   .Lx332_66
                        mov              r9, rax;                             jmp   .Lx332_64
.Lx332_66:              cmp              esi, 2;                              jne   .Lx332_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx332_65
                        mov              r9, rax;                             jmp   .Lx332_64
.Lx332_67:              cmp              al, 72;                              jne   .Lx332_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx332_65
                        cmp              rax, r9;                             je    .Lx332_65
                        mov              r9, rax;                             jmp   .Lx332_64
.Lx332_65:              lea              rcx, [rsp + 592]
.Lx332_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx332_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx332_69
                        cmp              esi, 1;                              jne   .Lx332_70
                        mov              rcx, rax;                            jmp   .Lx332_68
.Lx332_70:              cmp              esi, 2;                              jne   .Lx332_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx332_69
                        mov              rcx, rax;                            jmp   .Lx332_68
.Lx332_71:              cmp              al, 72;                              jne   .Lx332_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx332_69
                        cmp              rax, rcx;                            je    .Lx332_69
                        mov              rcx, rax;                            jmp   .Lx332_68
.Lx332_69:              cmp              r9, rcx;                             je    .Lx332_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx332_75
                        cmp              al, 104;                             je    .Lx332_75
                        cmp              al, 72;                              jne   .Lx332_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx332_75
                                                                              jmp   .Lx332_72
.Lx332_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx332_76
                        cmp              al, 104;                             je    .Lx332_76
                        cmp              al, 72;                              jne   .Lx332_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx332_76
                                                                              jmp   .Lx332_72
.Lx332_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx332_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx332_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx332_77
.Lx332_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx332_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx332_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx332_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx332_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx332_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 576]
.Lx332_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx332_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx332_82
                        cmp              esi, 1;                              jne   .Lx332_83
                        mov              r9, rax;                             jmp   .Lx332_81
.Lx332_83:              cmp              esi, 2;                              jne   .Lx332_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx332_82
                        mov              r9, rax;                             jmp   .Lx332_81
.Lx332_84:              cmp              al, 72;                              jne   .Lx332_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx332_82
                        cmp              rax, r9;                             je    .Lx332_82
                        mov              r9, rax;                             jmp   .Lx332_81
.Lx332_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx332_85
                        cmp              al, 104;                             je    .Lx332_85
                        cmp              al, 72;                              jne   .Lx332_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx332_85
                                                                              jmp   .Lx332_86
.Lx332_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx332_87
.Lx332_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx332_87:              lea              rcx, [rsp + 592]
.Lx332_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx332_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx332_89
                        cmp              esi, 1;                              jne   .Lx332_90
                        mov              rcx, rax;                            jmp   .Lx332_88
.Lx332_90:              cmp              esi, 2;                              jne   .Lx332_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx332_89
                        mov              rcx, rax;                            jmp   .Lx332_88
.Lx332_91:              cmp              al, 72;                              jne   .Lx332_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx332_89
                        cmp              rax, rcx;                            je    .Lx332_89
                        mov              rcx, rax;                            jmp   .Lx332_88
.Lx332_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx332_92
                        cmp              al, 104;                             je    .Lx332_92
                        cmp              al, 72;                              jne   .Lx332_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx332_92
                                                                              jmp   .Lx332_93
.Lx332_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx332_94
.Lx332_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx332_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx332_77
.Lx332_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx332_77
.Lx332_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx332_77:              mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n278_var_α
n277_call_prolog_β:     mov              r11, 122;                            jmp   n292_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n278_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 504], rax;          jmp   n279_var_α
#-----------------------------------------------------------------------------------------------------------------------
n279_var_α:             mov              r11, 124
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 520], rax;          jmp   n280_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n280_call_prolog_α:     mov              r11, 125
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        lea              rdi, [rsp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n281_var_ref_α
n280_call_prolog_β:     mov              r11, 125;                            jmp   n292_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:         mov              r11, 126
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n282_var_α
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 424], rax;          jmp   n283_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Lx342_0]
                        mov              qword ptr [rsp + 440], rax;          jmp   n284_call_prolog_α
.Lx342_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n284_call_prolog_α:     mov              r11, 129
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 384], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 392], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        lea              rdi, [rsp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n285_call_prolog_α
n284_call_prolog_β:     mov              r11, 129;                            jmp   n292_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n285_call_prolog_α:     mov              r11, 130
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n286_var_ref_α
n285_call_prolog_β:     mov              r11, 130;                            jmp   n292_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n287_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 132
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n289_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n289_call_proc_staged_α:
                        mov              r11, 134
                        lea              rsi, [rsp + 240]
                        lea              rdx, [rsp + 256]
                        lea              rcx, [rsp + 272]
                        call             range$2F3_dcα;                       jmp   .Lx352_2
.Lx352_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx352_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 160]
                        mov              rdx, qword ptr [rsp + 168]
.Lx352_29:              mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n292_call_prolog_α
                                                                              jmp   n290_move_label_α
n289_call_proc_staged_β:
                        mov              r11, 134;                            jmp   n292_call_prolog_α
.Lx352_0:               .quad            .Lx352_0_s
.Lx352_0_s:             .string          "range/3"
#-----------------------------------------------------------------------------------------------------------------------
n290_move_label_α:      mov              r11, 135
                        lea              rax, [rip + n289_call_proc_staged_β]
                        mov              qword ptr [rsp + 80], rax;           jmp   range$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
n291_disjunction_α:     mov              r11, 136
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    range$2F3_ω
                                                                              jmp   rax
n291_disjunction_β:     mov              r11, 136;                            jmp   range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n292_call_prolog_α:     mov              r11, 137
                        mov              rax, qword ptr [rsp + 96]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 104]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    range$2F3_ω
                                                                              jmp   range$2F3_ω
n292_call_prolog_β:     mov              r11, 137;                            jmp   range$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_β:
                                                                              jmp   n291_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
range$2F3_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r12
                        push             rcx
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 16]
                        mov              edi, 2
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 32
                        lea              rcx, [rip + .Lx358_2]
                        lea              rdx, [rip + .Lx358_3];               jmp   FN__range$2F3
.Lx358_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx358_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F2:
                        sub              rsp, 512
                        mov              qword ptr [rsp + 488], rcx
                        mov              qword ptr [rsp + 496], rdx
                        mov              qword ptr [rsp + 504], rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 480
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
not_attack$2F2_α_body:
                        lea              rax, [rip + n370_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n359_call_prolog_α:     mov              r11, 138
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx372_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lx372_101
.Lx372_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx372_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx372_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx372_101
.Lx372_100:             lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx372_101:             mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    not_attack$2F2_ω
                                                                              jmp   n360_var_ref_α
n359_call_prolog_β:     mov              r11, 138;                            jmp   not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n362_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n362_call_prolog_α:     mov              r11, 141
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        lea              r8, [rsp + 352]
.Lx377_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx377_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx377_41
                        cmp              esi, 1;                              jne   .Lx377_55
                        mov              r8, rax;                             jmp   .Lx377_40
.Lx377_55:              cmp              esi, 2;                              jne   .Lx377_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx377_41
                        mov              r8, rax;                             jmp   .Lx377_40
.Lx377_56:              cmp              al, 72;                              jne   .Lx377_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx377_41
                        cmp              rax, r8;                             je    .Lx377_41
                        mov              r8, rax;                             jmp   .Lx377_40
.Lx377_41:              lea              r9, [rsp + 368]
.Lx377_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx377_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx377_43
                        cmp              esi, 1;                              jne   .Lx377_57
                        mov              r9, rax;                             jmp   .Lx377_42
.Lx377_57:              cmp              esi, 2;                              jne   .Lx377_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx377_43
                        mov              r9, rax;                             jmp   .Lx377_42
.Lx377_58:              cmp              al, 72;                              jne   .Lx377_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx377_43
                        cmp              rax, r9;                             je    .Lx377_43
                        mov              r9, rax;                             jmp   .Lx377_42
.Lx377_43:              cmp              r8, r9;                              je    .Lx377_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx377_44
                        cmp              al, 104;                             je    .Lx377_44
                        cmp              al, 72;                              jne   .Lx377_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx377_44
                                                                              jmp   .Lx377_45
.Lx377_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx377_53
                        cmp              al, 104;                             je    .Lx377_53
                        cmp              al, 72;                              jne   .Lx377_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx377_53
                                                                              jmp   .Lx377_46
.Lx377_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx377_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx377_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx377_51
.Lx377_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx377_47
                        cmp              al, 104;                             je    .Lx377_47
                        cmp              al, 72;                              jne   .Lx377_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx377_47
                                                                              jmp   .Lx377_48
.Lx377_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx377_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx377_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx377_51
.Lx377_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx377_49
                        cmp              dl, 80;                              je    .Lx377_53
                                                                              jmp   .Lx377_52
.Lx377_49:              cmp              dl, 80;                              je    .Lx377_52
                        cmp              cl, 5;                               je    .Lx377_53
                        cmp              dl, 5;                               je    .Lx377_53
                        cmp              cl, 3;                               jne   .Lx377_50
                        cmp              dl, 3;                               jne   .Lx377_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx377_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx377_51
                                                                              jmp   .Lx377_52
.Lx377_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx377_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx377_53
.Lx377_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx377_54
.Lx377_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx377_54
.Lx377_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx377_54:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n363_var_ref_α
n362_call_prolog_β:     mov              r11, 141;                            jmp   n371_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n363_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n365_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n365_call_prolog_α:     mov              r11, 144
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 272], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 280], rax
                        lea              rdi, [rsp + 272]
                        lea              r8, [rsp + 272]
.Lx382_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx382_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx382_41
                        cmp              esi, 1;                              jne   .Lx382_55
                        mov              r8, rax;                             jmp   .Lx382_40
.Lx382_55:              cmp              esi, 2;                              jne   .Lx382_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_41
                        mov              r8, rax;                             jmp   .Lx382_40
.Lx382_56:              cmp              al, 72;                              jne   .Lx382_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx382_41
                        cmp              rax, r8;                             je    .Lx382_41
                        mov              r8, rax;                             jmp   .Lx382_40
.Lx382_41:              lea              r9, [rsp + 288]
.Lx382_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx382_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_43
                        cmp              esi, 1;                              jne   .Lx382_57
                        mov              r9, rax;                             jmp   .Lx382_42
.Lx382_57:              cmp              esi, 2;                              jne   .Lx382_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx382_43
                        mov              r9, rax;                             jmp   .Lx382_42
.Lx382_58:              cmp              al, 72;                              jne   .Lx382_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx382_43
                        cmp              rax, r9;                             je    .Lx382_43
                        mov              r9, rax;                             jmp   .Lx382_42
.Lx382_43:              cmp              r8, r9;                              je    .Lx382_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx382_44
                        cmp              al, 104;                             je    .Lx382_44
                        cmp              al, 72;                              jne   .Lx382_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx382_44
                                                                              jmp   .Lx382_45
.Lx382_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_53
                        cmp              al, 104;                             je    .Lx382_53
                        cmp              al, 72;                              jne   .Lx382_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_53
                                                                              jmp   .Lx382_46
.Lx382_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx382_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx382_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx382_51
.Lx382_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx382_47
                        cmp              al, 104;                             je    .Lx382_47
                        cmp              al, 72;                              jne   .Lx382_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx382_47
                                                                              jmp   .Lx382_48
.Lx382_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx382_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx382_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx382_51
.Lx382_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx382_49
                        cmp              dl, 80;                              je    .Lx382_53
                                                                              jmp   .Lx382_52
.Lx382_49:              cmp              dl, 80;                              je    .Lx382_52
                        cmp              cl, 5;                               je    .Lx382_53
                        cmp              dl, 5;                               je    .Lx382_53
                        cmp              cl, 3;                               jne   .Lx382_50
                        cmp              dl, 3;                               jne   .Lx382_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx382_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx382_51
                                                                              jmp   .Lx382_52
.Lx382_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx382_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx382_53
.Lx382_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx382_54
.Lx382_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx382_54
.Lx382_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx382_54:              mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n366_var_ref_α
n365_call_prolog_β:     mov              r11, 144;                            jmp   n371_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n366_var_ref_α:         mov              r11, 145
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n368_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rsp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Lx387_0]
                        mov              qword ptr [rsp + 248], rax;          jmp   n369_call_proc_staged_α
.Lx387_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n369_call_proc_staged_α:
                        mov              r11, 148
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx389_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx389_201
.Lx389_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx389_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx389_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx389_203
.Lx389_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx389_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx389_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx389_205
.Lx389_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx389_205:             lea              rax, [rip + .Lx389_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx389_1
                        lea              rcx, [rip + .Lx389_4]
                        push             rcx
                        lea              rcx, [rip + .Lx389_3]
                        push             rcx
                        lea              rdx, [rip + .Lx389_4];               jmp   rax
.Lx389_3:               add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx389_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx389_2
.Lx389_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx389_2
.Lx389_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lx389_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx389_2
.Lx389_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx389_2
.Lx389_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx389_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx389_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120]
.Lx389_29:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n370_suspend_α
n369_call_proc_staged_β:
                        mov              r11, 148
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 176], 0
                        lea              rdi, [rsp + 192]
                        lea              rsi, [rsp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n371_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n371_call_prolog_α
                        lea              r8, [rip + .Lx389_7]
                        push             r8
                        lea              rcx, [rip + .Lx389_4]
                        push             rcx
                        lea              rcx, [rip + .Lx389_3]
                        push             rcx
                        lea              rdx, [rip + .Lx389_4];               jmp   rax
.Lx389_7:               add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n371_call_prolog_α
                                                                              jmp   n370_suspend_α
.Lx389_0:               .quad            .Lx389_0_s
.Lx389_0_s:             .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n370_suspend_α:         mov              r11, 149
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx391_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx391_61:              mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n370_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n370_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   not_attack$2F2_γ
n370_suspend_β:         mov              r11, 149;                            jmp   n369_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n371_call_prolog_α:     mov              r11, 150
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 104], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    not_attack$2F2_ω
                                                                              jmp   not_attack$2F2_ω
n371_call_prolog_β:     mov              r11, 150;                            jmp   not_attack$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_β:
                                                                              jmp   n370_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx392_50
                        mov              qword ptr [rsp + 416], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 416];          jmp   rax
.Lx392_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__not_attack$2F3:
                        sub              rsp, 1680
                        mov              qword ptr [rsp + 1656], rcx
                        mov              qword ptr [rsp + 1664], rdx
                        mov              qword ptr [rsp + 1672], rsp
                        mov              rdi, rsp
                        mov              esi, 1536
                        mov              edx, 1648
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
not_attack$2F3_α_body:
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
#-----------------------------------------------------------------------------------------------------------------------
n393_call_prolog_α:     mov              r11, 151
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx444_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lx444_101
.Lx444_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx444_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx444_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx444_101
.Lx444_100:             lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx444_101:             mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   n394_var_ref_α
n393_call_prolog_β:     mov              r11, 151;                            jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n395_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rsp + 1504], 3            # result
                        mov              rax, qword ptr [rip + .Lx447_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n396_lit_string_α
.Lx447_0:               .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 2
                        mov              rax, qword ptr [rip + .Lx448_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n397_call_prolog_α
.Lx448_0:               .quad            .Lx448_0_s
.Lx448_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n397_call_prolog_α:     mov              r11, 155
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1488]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1496]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        lea              r8, [rsp + 1440]
.Lx449_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx449_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx449_111
                        cmp              esi, 1;                              jne   .Lx449_112
                        mov              r8, rax;                             jmp   .Lx449_110
.Lx449_112:             cmp              esi, 2;                              jne   .Lx449_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx449_111
                        mov              r8, rax;                             jmp   .Lx449_110
.Lx449_113:             cmp              al, 72;                              jne   .Lx449_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx449_111
                        cmp              rax, r8;                             je    .Lx449_111
                        mov              r8, rax;                             jmp   .Lx449_110
.Lx449_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx449_114
                        cmp              al, 104;                             je    .Lx449_114
                        cmp              al, 72;                              jne   .Lx449_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx449_114
                                                                              jmp   .Lx449_118
.Lx449_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lx449_115
                        cmp              al, 3;                               je    .Lx449_114
                        cmp              al, 2;                               jne   .Lx449_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx449_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx449_114
                                                                              jmp   .Lx449_116
.Lx449_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx449_117
.Lx449_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx449_117
.Lx449_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx449_117:             mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    n409_var_ref_α
                                                                              jmp   n398_var_ref_α
n397_call_prolog_β:     mov              r11, 155;                            jmp   n409_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n398_var_ref_α:         mov              r11, 156
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1392], rax
                        mov              qword ptr [rsp + 1400], rdx;         jmp   n399_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 2
                        mov              rax, qword ptr [rip + .Lx452_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n400_call_prolog_α
.Lx452_0:               .quad            .Lx452_0_s
.Lx452_0_s:             .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n400_call_prolog_α:     mov              r11, 158
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1368], rax
                        lea              rdi, [rsp + 1360]
                        mov              rsi, qword ptr [rip + .Lx453_2];     jmp   .Lx453_3
.Lx453_2:               .quad            .Lx453_2_s
.Lx453_2_s:             .string          "[]"
.Lx453_3:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx
                        cmp              al, 104;                             je    n408_call_prolog_α
                                                                              jmp   n401_var_ref_α
n400_call_prolog_β:     mov              r11, 158;                            jmp   n408_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n401_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx;         jmp   n402_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n402_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx;         jmp   n403_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n403_call_prolog_α:     mov              r11, 161
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1304], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1280], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1288], rax
                        lea              rdi, [rsp + 1280]
                        lea              r8, [rsp + 1280]
.Lx458_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx458_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx458_41
                        cmp              esi, 1;                              jne   .Lx458_55
                        mov              r8, rax;                             jmp   .Lx458_40
.Lx458_55:              cmp              esi, 2;                              jne   .Lx458_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx458_41
                        mov              r8, rax;                             jmp   .Lx458_40
.Lx458_56:              cmp              al, 72;                              jne   .Lx458_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx458_41
                        cmp              rax, r8;                             je    .Lx458_41
                        mov              r8, rax;                             jmp   .Lx458_40
.Lx458_41:              lea              r9, [rsp + 1296]
.Lx458_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx458_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx458_43
                        cmp              esi, 1;                              jne   .Lx458_57
                        mov              r9, rax;                             jmp   .Lx458_42
.Lx458_57:              cmp              esi, 2;                              jne   .Lx458_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx458_43
                        mov              r9, rax;                             jmp   .Lx458_42
.Lx458_58:              cmp              al, 72;                              jne   .Lx458_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx458_43
                        cmp              rax, r9;                             je    .Lx458_43
                        mov              r9, rax;                             jmp   .Lx458_42
.Lx458_43:              cmp              r8, r9;                              je    .Lx458_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx458_44
                        cmp              al, 104;                             je    .Lx458_44
                        cmp              al, 72;                              jne   .Lx458_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx458_44
                                                                              jmp   .Lx458_45
.Lx458_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx458_53
                        cmp              al, 104;                             je    .Lx458_53
                        cmp              al, 72;                              jne   .Lx458_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx458_53
                                                                              jmp   .Lx458_46
.Lx458_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx458_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx458_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx458_51
.Lx458_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx458_47
                        cmp              al, 104;                             je    .Lx458_47
                        cmp              al, 72;                              jne   .Lx458_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx458_47
                                                                              jmp   .Lx458_48
.Lx458_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx458_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx458_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx458_51
.Lx458_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx458_49
                        cmp              dl, 80;                              je    .Lx458_53
                                                                              jmp   .Lx458_52
.Lx458_49:              cmp              dl, 80;                              je    .Lx458_52
                        cmp              cl, 5;                               je    .Lx458_53
                        cmp              dl, 5;                               je    .Lx458_53
                        cmp              cl, 3;                               jne   .Lx458_50
                        cmp              dl, 3;                               jne   .Lx458_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx458_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx458_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx458_51
                                                                              jmp   .Lx458_52
.Lx458_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx458_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx458_53
.Lx458_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx458_54
.Lx458_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx458_54
.Lx458_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx458_54:              mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx
                        cmp              al, 104;                             je    n408_call_prolog_α
                                                                              jmp   n404_var_ref_α
n403_call_prolog_β:     mov              r11, 161;                            jmp   n408_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n404_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n405_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n405_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n406_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n406_call_prolog_α:     mov              r11, 164
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1232]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1240]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        lea              r8, [rsp + 1200]
.Lx463_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx463_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              esi, 1;                              jne   .Lx463_55
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_55:              cmp              esi, 2;                              jne   .Lx463_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_56:              cmp              al, 72;                              jne   .Lx463_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx463_41
                        cmp              rax, r8;                             je    .Lx463_41
                        mov              r8, rax;                             jmp   .Lx463_40
.Lx463_41:              lea              r9, [rsp + 1216]
.Lx463_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx463_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              esi, 1;                              jne   .Lx463_57
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_57:              cmp              esi, 2;                              jne   .Lx463_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_58:              cmp              al, 72;                              jne   .Lx463_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx463_43
                        cmp              rax, r9;                             je    .Lx463_43
                        mov              r9, rax;                             jmp   .Lx463_42
.Lx463_43:              cmp              r8, r9;                              je    .Lx463_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx463_44
                        cmp              al, 104;                             je    .Lx463_44
                        cmp              al, 72;                              jne   .Lx463_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx463_44
                                                                              jmp   .Lx463_45
.Lx463_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx463_53
                        cmp              al, 104;                             je    .Lx463_53
                        cmp              al, 72;                              jne   .Lx463_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_53
                                                                              jmp   .Lx463_46
.Lx463_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx463_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx463_51
.Lx463_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx463_47
                        cmp              al, 104;                             je    .Lx463_47
                        cmp              al, 72;                              jne   .Lx463_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx463_47
                                                                              jmp   .Lx463_48
.Lx463_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx463_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx463_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx463_51
.Lx463_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx463_49
                        cmp              dl, 80;                              je    .Lx463_53
                                                                              jmp   .Lx463_52
.Lx463_49:              cmp              dl, 80;                              je    .Lx463_52
                        cmp              cl, 5;                               je    .Lx463_53
                        cmp              dl, 5;                               je    .Lx463_53
                        cmp              cl, 3;                               jne   .Lx463_50
                        cmp              dl, 3;                               jne   .Lx463_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx463_51
                                                                              jmp   .Lx463_52
.Lx463_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx463_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx463_53
.Lx463_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx463_54
.Lx463_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx463_54
.Lx463_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx463_54:              mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n408_call_prolog_α
                                                                              jmp   n407_suspend_α
n406_call_prolog_β:     mov              r11, 164;                            jmp   n408_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n407_suspend_α:         mov              r11, 165
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx465_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lx465_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n407_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n407_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   not_attack$2F3_γ
n407_suspend_β:         mov              r11, 165;                            jmp   n408_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n408_call_prolog_α:     mov              r11, 166
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   n409_var_ref_α
n408_call_prolog_β:     mov              r11, 166;                            jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n410_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Lx469_0]
                        mov              qword ptr [rsp + 1112], rax;         jmp   n411_lit_integer_α
.Lx469_0:               .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rsp + 1120], 3            # result
                        mov              rax, qword ptr [rip + .Lx470_0]
                        mov              qword ptr [rsp + 1128], rax;         jmp   n412_call_prolog_α
.Lx470_0:               .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n412_call_prolog_α:     mov              r11, 170
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1056], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1064], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        lea              rdi, [rsp + 1040]
                        lea              r8, [rsp + 1040]
.Lx471_110:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx471_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_111
                        cmp              esi, 1;                              jne   .Lx471_112
                        mov              r8, rax;                             jmp   .Lx471_110
.Lx471_112:             cmp              esi, 2;                              jne   .Lx471_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx471_111
                        mov              r8, rax;                             jmp   .Lx471_110
.Lx471_113:             cmp              al, 72;                              jne   .Lx471_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx471_111
                        cmp              rax, r8;                             je    .Lx471_111
                        mov              r8, rax;                             jmp   .Lx471_110
.Lx471_111:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx471_114
                        cmp              al, 104;                             je    .Lx471_114
                        cmp              al, 72;                              jne   .Lx471_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx471_114
                                                                              jmp   .Lx471_118
.Lx471_118:             mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lx471_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lx471_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lx471_115
                                                                              jmp   .Lx471_114
.Lx471_119:             cmp              al, 3;                               jne   .Lx471_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx471_114
                                                                              jmp   .Lx471_115
.Lx471_120:             cmp              al, 2;                               jne   .Lx471_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lx471_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lx471_114
                                                                              jmp   .Lx471_115
.Lx471_114:             mov              eax, 3
                        mov              edx, 1;                              jmp   .Lx471_117
.Lx471_115:             mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx471_117
.Lx471_116:             mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx471_117:             mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n413_var_ref_α
n412_call_prolog_β:     mov              r11, 170;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n414_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n414_var_ref_α:         mov              r11, 172
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1616]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx;         jmp   n415_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n415_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1008], rax
                        mov              qword ptr [rsp + 1016], rdx;         jmp   n416_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n416_call_prolog_α:     mov              r11, 174
                        mov              rax, qword ptr [rsp + 1008]
                        mov              qword ptr [rsp + 976], rax
                        mov              rax, qword ptr [rsp + 1016]
                        mov              qword ptr [rsp + 984], rax
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 960], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 968], rax
                        mov              rax, qword ptr [rsp + 912]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 920]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        lea              r8, [rsp + 944]
.Lx478_60:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx478_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx478_61
                        cmp              esi, 1;                              jne   .Lx478_62
                        mov              r8, rax;                             jmp   .Lx478_60
.Lx478_62:              cmp              esi, 2;                              jne   .Lx478_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx478_61
                        mov              r8, rax;                             jmp   .Lx478_60
.Lx478_63:              cmp              al, 72;                              jne   .Lx478_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx478_61
                        cmp              rax, r8;                             je    .Lx478_61
                        mov              r8, rax;                             jmp   .Lx478_60
.Lx478_61:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx478_80
                        cmp              al, 104;                             je    .Lx478_80
                        cmp              al, 72;                              jne   .Lx478_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx478_80
                                                                              jmp   .Lx478_74
.Lx478_74:              mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lx478_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx478_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lx478_73
                        lea              r9, [rsp + 960]
.Lx478_64:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx478_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx478_65
                        cmp              esi, 1;                              jne   .Lx478_66
                        mov              r9, rax;                             jmp   .Lx478_64
.Lx478_66:              cmp              esi, 2;                              jne   .Lx478_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx478_65
                        mov              r9, rax;                             jmp   .Lx478_64
.Lx478_67:              cmp              al, 72;                              jne   .Lx478_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx478_65
                        cmp              rax, r9;                             je    .Lx478_65
                        mov              r9, rax;                             jmp   .Lx478_64
.Lx478_65:              lea              rcx, [rsp + 976]
.Lx478_68:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx478_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx478_69
                        cmp              esi, 1;                              jne   .Lx478_70
                        mov              rcx, rax;                            jmp   .Lx478_68
.Lx478_70:              cmp              esi, 2;                              jne   .Lx478_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx478_69
                        mov              rcx, rax;                            jmp   .Lx478_68
.Lx478_71:              cmp              al, 72;                              jne   .Lx478_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx478_69
                        cmp              rax, rcx;                            je    .Lx478_69
                        mov              rcx, rax;                            jmp   .Lx478_68
.Lx478_69:              cmp              r9, rcx;                             je    .Lx478_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx478_75
                        cmp              al, 104;                             je    .Lx478_75
                        cmp              al, 72;                              jne   .Lx478_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx478_75
                                                                              jmp   .Lx478_72
.Lx478_75:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx478_76
                        cmp              al, 104;                             je    .Lx478_76
                        cmp              al, 72;                              jne   .Lx478_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx478_76
                                                                              jmp   .Lx478_72
.Lx478_76:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx478_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lx478_72
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              qword ptr [rdi + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 40], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 2
                        mov              dword ptr [r12 + 32], eax
                        mov              r12, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r12 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r12 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r12 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r12 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx478_77
.Lx478_80:              lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lx478_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lx478_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lx478_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx478_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lx478_72
                        lea              r12, [rip + g_hp_fr]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              qword ptr [rdi + 0], 0
                        mov              dword ptr [rdi + 8], 48
                        mov              dword ptr [rdi + 12], 65745
                        lea              rdx, [rdi + 16]
                        mov              rax, rdi
                        add              rax, 48
                        mov              qword ptr [r12 + 0], rax
                        mov              rax, qword ptr [r12 + 16]
                        add              rax, 1
                        mov              qword ptr [r12 + 16], rax
                        lea              r9, [rsp + 960]
.Lx478_81:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx478_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx478_82
                        cmp              esi, 1;                              jne   .Lx478_83
                        mov              r9, rax;                             jmp   .Lx478_81
.Lx478_83:              cmp              esi, 2;                              jne   .Lx478_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx478_82
                        mov              r9, rax;                             jmp   .Lx478_81
.Lx478_84:              cmp              al, 72;                              jne   .Lx478_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx478_82
                        cmp              rax, r9;                             je    .Lx478_82
                        mov              r9, rax;                             jmp   .Lx478_81
.Lx478_82:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx478_85
                        cmp              al, 104;                             je    .Lx478_85
                        cmp              al, 72;                              jne   .Lx478_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx478_85
                                                                              jmp   .Lx478_86
.Lx478_85:              mov              qword ptr [rdx + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [r9 + 0], 72
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx478_87
.Lx478_86:              mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx478_87:              lea              rcx, [rsp + 976]
.Lx478_88:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lx478_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx478_89
                        cmp              esi, 1;                              jne   .Lx478_90
                        mov              rcx, rax;                            jmp   .Lx478_88
.Lx478_90:              cmp              esi, 2;                              jne   .Lx478_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx478_89
                        mov              rcx, rax;                            jmp   .Lx478_88
.Lx478_91:              cmp              al, 72;                              jne   .Lx478_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lx478_89
                        cmp              rax, rcx;                            je    .Lx478_89
                        mov              rcx, rax;                            jmp   .Lx478_88
.Lx478_89:              mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lx478_92
                        cmp              al, 104;                             je    .Lx478_92
                        cmp              al, 72;                              jne   .Lx478_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lx478_92
                                                                              jmp   .Lx478_93
.Lx478_92:              mov              qword ptr [rdx + 16], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              qword ptr [rcx + 0], 72
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lx478_94
.Lx478_93:              mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx478_94:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              dword ptr [r8 + 0], 80
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lx478_77
.Lx478_73:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx478_77
.Lx478_72:              mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx478_77:              mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n417_var_ref_α
n416_call_prolog_β:     mov              r11, 174;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:         mov              r11, 175
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n418_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n418_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n419_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n419_call_prolog_α:     mov              r11, 177
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        lea              rdi, [rsp + 848]
                        lea              r8, [rsp + 848]
.Lx483_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx483_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx483_41
                        cmp              esi, 1;                              jne   .Lx483_55
                        mov              r8, rax;                             jmp   .Lx483_40
.Lx483_55:              cmp              esi, 2;                              jne   .Lx483_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx483_41
                        mov              r8, rax;                             jmp   .Lx483_40
.Lx483_56:              cmp              al, 72;                              jne   .Lx483_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx483_41
                        cmp              rax, r8;                             je    .Lx483_41
                        mov              r8, rax;                             jmp   .Lx483_40
.Lx483_41:              lea              r9, [rsp + 864]
.Lx483_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx483_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx483_43
                        cmp              esi, 1;                              jne   .Lx483_57
                        mov              r9, rax;                             jmp   .Lx483_42
.Lx483_57:              cmp              esi, 2;                              jne   .Lx483_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx483_43
                        mov              r9, rax;                             jmp   .Lx483_42
.Lx483_58:              cmp              al, 72;                              jne   .Lx483_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx483_43
                        cmp              rax, r9;                             je    .Lx483_43
                        mov              r9, rax;                             jmp   .Lx483_42
.Lx483_43:              cmp              r8, r9;                              je    .Lx483_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx483_44
                        cmp              al, 104;                             je    .Lx483_44
                        cmp              al, 72;                              jne   .Lx483_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx483_44
                                                                              jmp   .Lx483_45
.Lx483_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx483_53
                        cmp              al, 104;                             je    .Lx483_53
                        cmp              al, 72;                              jne   .Lx483_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx483_53
                                                                              jmp   .Lx483_46
.Lx483_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx483_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx483_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx483_51
.Lx483_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx483_47
                        cmp              al, 104;                             je    .Lx483_47
                        cmp              al, 72;                              jne   .Lx483_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx483_47
                                                                              jmp   .Lx483_48
.Lx483_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx483_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx483_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx483_51
.Lx483_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx483_49
                        cmp              dl, 80;                              je    .Lx483_53
                                                                              jmp   .Lx483_52
.Lx483_49:              cmp              dl, 80;                              je    .Lx483_52
                        cmp              cl, 5;                               je    .Lx483_53
                        cmp              dl, 5;                               je    .Lx483_53
                        cmp              cl, 3;                               jne   .Lx483_50
                        cmp              dl, 3;                               jne   .Lx483_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx483_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx483_51
                                                                              jmp   .Lx483_52
.Lx483_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx483_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx483_53
.Lx483_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx483_54
.Lx483_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx483_54
.Lx483_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx483_54:              mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n420_var_ref_α
n419_call_prolog_β:     mov              r11, 177;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n420_var_ref_α:         mov              r11, 178
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n421_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx;          jmp   n422_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n422_call_prolog_α:     mov              r11, 180
                        mov              rax, qword ptr [rsp + 816]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 824]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        lea              r8, [rsp + 768]
.Lx488_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx488_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx488_41
                        cmp              esi, 1;                              jne   .Lx488_55
                        mov              r8, rax;                             jmp   .Lx488_40
.Lx488_55:              cmp              esi, 2;                              jne   .Lx488_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx488_41
                        mov              r8, rax;                             jmp   .Lx488_40
.Lx488_56:              cmp              al, 72;                              jne   .Lx488_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx488_41
                        cmp              rax, r8;                             je    .Lx488_41
                        mov              r8, rax;                             jmp   .Lx488_40
.Lx488_41:              lea              r9, [rsp + 784]
.Lx488_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx488_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx488_43
                        cmp              esi, 1;                              jne   .Lx488_57
                        mov              r9, rax;                             jmp   .Lx488_42
.Lx488_57:              cmp              esi, 2;                              jne   .Lx488_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx488_43
                        mov              r9, rax;                             jmp   .Lx488_42
.Lx488_58:              cmp              al, 72;                              jne   .Lx488_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx488_43
                        cmp              rax, r9;                             je    .Lx488_43
                        mov              r9, rax;                             jmp   .Lx488_42
.Lx488_43:              cmp              r8, r9;                              je    .Lx488_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx488_44
                        cmp              al, 104;                             je    .Lx488_44
                        cmp              al, 72;                              jne   .Lx488_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx488_44
                                                                              jmp   .Lx488_45
.Lx488_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx488_53
                        cmp              al, 104;                             je    .Lx488_53
                        cmp              al, 72;                              jne   .Lx488_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx488_53
                                                                              jmp   .Lx488_46
.Lx488_46:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx488_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx488_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx488_51
.Lx488_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx488_47
                        cmp              al, 104;                             je    .Lx488_47
                        cmp              al, 72;                              jne   .Lx488_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx488_47
                                                                              jmp   .Lx488_48
.Lx488_47:              lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lx488_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx488_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx488_51
.Lx488_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx488_49
                        cmp              dl, 80;                              je    .Lx488_53
                                                                              jmp   .Lx488_52
.Lx488_49:              cmp              dl, 80;                              je    .Lx488_52
                        cmp              cl, 5;                               je    .Lx488_53
                        cmp              dl, 5;                               je    .Lx488_53
                        cmp              cl, 3;                               jne   .Lx488_50
                        cmp              dl, 3;                               jne   .Lx488_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx488_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx488_51
                                                                              jmp   .Lx488_52
.Lx488_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx488_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx488_53
.Lx488_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx488_54
.Lx488_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx488_54
.Lx488_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx488_54:              mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n423_var_α
n422_call_prolog_β:     mov              r11, 180;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 640], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 648], rax;          jmp   n424_var_α
#-----------------------------------------------------------------------------------------------------------------------
n424_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 728], rax;          jmp   n425_var_α
#-----------------------------------------------------------------------------------------------------------------------
n425_var_α:             mov              r11, 183
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 744], rax;          jmp   n426_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n426_call_prolog_α:     mov              r11, 184
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n427_call_prolog_α
n426_call_prolog_β:     mov              r11, 184;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n427_call_prolog_α:     mov              r11, 185
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n428_var_α
n427_call_prolog_β:     mov              r11, 185;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 488], rax;          jmp   n429_var_α
#-----------------------------------------------------------------------------------------------------------------------
n429_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 568], rax;          jmp   n430_var_α
#-----------------------------------------------------------------------------------------------------------------------
n430_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 584], rax;          jmp   n431_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 189
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n432_call_prolog_α
n431_call_prolog_β:     mov              r11, 189;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n432_call_prolog_α:     mov              r11, 190
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n433_var_ref_α
n432_call_prolog_β:     mov              r11, 190;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n433_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n434_var_α
#-----------------------------------------------------------------------------------------------------------------------
n434_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 408], rax;          jmp   n435_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n436_call_prolog_α
.Lx509_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n436_call_prolog_α:     mov              r11, 194
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 360], rax
                        lea              rdi, [rsp + 352]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n437_call_prolog_α
n436_call_prolog_β:     mov              r11, 194;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 195
                        mov              rax, qword ptr [rsp + 336]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 344]
                        mov              qword ptr [rsp + 312], rax
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 288], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 296], rax
                        lea              rdi, [rsp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n438_var_ref_α
n437_call_prolog_β:     mov              r11, 195;                            jmp   n443_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n438_var_ref_α:         mov              r11, 196
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n439_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n439_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n440_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n441_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n441_call_proc_staged_α:
                        mov              r11, 199
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx519_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx519_201
.Lx519_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx519_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx519_202
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx519_203
.Lx519_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx519_203:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx519_204
                        mov              rax, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lx519_205
.Lx519_204:             mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx519_205:             lea              rax, [rip + .Lx519_7]
                        push             rax
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx519_1
                        lea              rcx, [rip + .Lx519_4]
                        push             rcx
                        lea              rcx, [rip + .Lx519_3]
                        push             rcx
                        lea              rdx, [rip + .Lx519_4];               jmp   rax
.Lx519_3:               add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx519_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx519_2
.Lx519_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx519_2
.Lx519_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .Lx519_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx519_2
.Lx519_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx519_2
.Lx519_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx519_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx519_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 128]
                        mov              rdx, qword ptr [rsp + 136]
.Lx519_29:              mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n442_suspend_α
n441_call_proc_staged_β:
                        mov              r11, 199
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 192], 0
                        lea              rdi, [rsp + 208]
                        lea              rsi, [rsp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n443_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1536
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n443_call_prolog_α
                        lea              r8, [rip + .Lx519_7]
                        push             r8
                        lea              rcx, [rip + .Lx519_4]
                        push             rcx
                        lea              rcx, [rip + .Lx519_3]
                        push             rcx
                        lea              rdx, [rip + .Lx519_4];               jmp   rax
.Lx519_7:               add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n443_call_prolog_α
                                                                              jmp   n442_suspend_α
.Lx519_0:               .quad            .Lx519_0_s
.Lx519_0_s:             .string          "not_attack/3"
#-----------------------------------------------------------------------------------------------------------------------
n442_suspend_α:         mov              r11, 200
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lx521_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lx521_61:              mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n442_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n442_suspend_β]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   not_attack$2F3_γ
n442_suspend_β:         mov              r11, 200;                            jmp   n441_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n443_call_prolog_α:     mov              r11, 201
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 120], rax
                        lea              rdi, [rsp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    not_attack$2F3_ω
                                                                              jmp   not_attack$2F3_ω
n443_call_prolog_β:     mov              r11, 201;                            jmp   not_attack$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_β:
                                                                              jmp   n407_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lx522_50
                        mov              qword ptr [rsp + 1536], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1536];         jmp   rax
.Lx522_50:              mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1656]
                        add              rsp, 1680;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
not_attack$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1664]
                        add              rsp, 1680;                           jmp   rcx
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 368
                        mov              qword ptr [rsp + 344], rcx
                        mov              qword ptr [rsp + 352], rdx
                        mov              qword ptr [rsp + 360], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 336
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 0
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n523_call_prolog_α:     mov              r11, 202
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx534_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx534_101
.Lx534_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx534_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx534_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx534_101
.Lx534_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx534_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n524_lit_integer_α
n523_call_prolog_β:     mov              r11, 202;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n524_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rsp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Lx535_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n525_var_ref_α
.Lx535_0:               .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:         mov              r11, 204
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 304]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n526_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n526_call_proc_staged_α:
                        mov              r11, 205
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx539_200
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lx539_201
.Lx539_200:             mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx539_201:             lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lx539_202
                        mov              rax, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lx539_203
.Lx539_202:             mov              edi, 1
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx539_203:             lea              rax, [rip + .Lx539_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lx539_1
                        lea              rcx, [rip + .Lx539_4]
                        push             rcx
                        lea              rcx, [rip + .Lx539_3]
                        push             rcx
                        lea              rdx, [rip + .Lx539_4];               jmp   rax
.Lx539_3:               add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx539_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx539_2
.Lx539_5:               call             rt_gen_spine_pass_γ@PLT;             jmp   .Lx539_2
.Lx539_4:               add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lx539_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lx539_2
.Lx539_6:               call             rt_gen_spine_pass_ω@PLT;             jmp   .Lx539_2
.Lx539_1:               mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx539_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx539_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
.Lx539_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n533_call_prolog_α
                                                                              jmp   n527_var_α
n526_call_proc_staged_β:
                        mov              r11, 205
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 240], 0
                        lea              rdi, [rsp + 256]
                        lea              rsi, [rsp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n533_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 48
                        mov              r8d, 544
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 288]
                        mov              rdx, qword ptr [rsp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n533_call_prolog_α
                        lea              r8, [rip + .Lx539_7]
                        push             r8
                        lea              rcx, [rip + .Lx539_4]
                        push             rcx
                        lea              rcx, [rip + .Lx539_3]
                        push             rcx
                        lea              rdx, [rip + .Lx539_4];               jmp   rax
.Lx539_7:               add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n533_call_prolog_α
                                                                              jmp   n527_var_α
.Lx539_0:               .quad            .Lx539_0_s
.Lx539_0_s:             .string          "queens/2"
#-----------------------------------------------------------------------------------------------------------------------
n527_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 184], rax;          jmp   n528_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n528_call_prolog_α:     mov              r11, 207
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn543:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn543]
                        lea              rsi, [rsp + 160]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n526_call_proc_staged_β
                                                                              jmp   n529_lit_string_α
n528_call_prolog_β:     mov              r11, 207;                            jmp   n526_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx544_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n530_call_prolog_α
.Lx544_0:               .quad            .Lx544_0_s
.Lx544_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n530_call_prolog_α:     mov              r11, 209
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn546:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn546]
                        lea              rsi, [rsp + 112]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 104], rdx
                        cmp              al, 104;                             je    n526_call_proc_staged_β
                                                                              jmp   n531_move_label_α
n530_call_prolog_β:     mov              r11, 209;                            jmp   n526_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n531_move_label_α:      mov              r11, 210
                        lea              rax, [rip + n526_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n532_disjunction_α:     mov              r11, 211
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    main_ω
                                                                              jmp   rax
n532_disjunction_β:     mov              r11, 211;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n533_call_prolog_α:     mov              r11, 212
                        mov              rax, qword ptr [rsp + 32]
                        mov              qword ptr [rsp + 80], rax
                        mov              rax, qword ptr [rsp + 40]
                        mov              qword ptr [rsp + 88], rax
                        lea              rdi, [rsp + 80]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_ω
n533_call_prolog_β:     mov              r11, 212;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n532_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 344]
                        add              rsp, 368;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 352]
                        add              rsp, 368;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sel/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sel$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1216
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "queens/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__queens$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1376
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "queens/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__queens$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            608
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "range/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__range$2F3
                        .quad            range$2F3_dcα
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1248
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "not_attack/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__not_attack$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            464
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "not_attack/3"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__not_attack$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1632
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
