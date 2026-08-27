                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__nreverse$2F2:
                        sub              rsp, 1232
                        mov              qword ptr [rsp + 1208], rcx
                        mov              qword ptr [rsp + 1216], rdx
                        mov              qword ptr [rsp + 1224], rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1200
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
nreverse$2F2_α_body:
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_36_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lnreverse$2F2_α_36_101
.Lnreverse$2F2_α_36_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lnreverse$2F2_α_36_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lnreverse$2F2_α_36_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lnreverse$2F2_α_36_101
.Lnreverse$2F2_α_36_100:
                        lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_36_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    nreverse$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   nreverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_39_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n3_lit_integer_α
.Lnreverse$2F2_α_39_0:  .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_40_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n4_call_prolog_α
.Lnreverse$2F2_α_40_0:  .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        lea              r8, [rsp + 1008]
.Lnreverse$2F2_α_41_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_41_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_41_111
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_41_112
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_41_110
.Lnreverse$2F2_α_41_112:
                        cmp              esi, 2;                              jne   .Lnreverse$2F2_α_41_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_41_111
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_41_110
.Lnreverse$2F2_α_41_113:
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_41_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_41_111
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_41_111
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_41_110
.Lnreverse$2F2_α_41_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_41_114
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_41_114
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_41_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_41_114
                                                                              jmp   .Lnreverse$2F2_α_41_118
.Lnreverse$2F2_α_41_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lnreverse$2F2_α_41_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lnreverse$2F2_α_41_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lnreverse$2F2_α_41_115
                                                                              jmp   .Lnreverse$2F2_α_41_114
.Lnreverse$2F2_α_41_119:
                        cmp              al, 3;                               jne   .Lnreverse$2F2_α_41_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lnreverse$2F2_α_41_114
                                                                              jmp   .Lnreverse$2F2_α_41_115
.Lnreverse$2F2_α_41_120:
                        cmp              al, 2;                               jne   .Lnreverse$2F2_α_41_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lnreverse$2F2_α_41_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lnreverse$2F2_α_41_114
                                                                              jmp   .Lnreverse$2F2_α_41_115
.Lnreverse$2F2_α_41_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lnreverse$2F2_α_41_117
.Lnreverse$2F2_α_41_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnreverse$2F2_α_41_117
.Lnreverse$2F2_α_41_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_41_117:
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n24_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n8_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_prolog_α:       mov              r11, 9
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        lea              r8, [rsp + 912]
.Lnreverse$2F2_α_48_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_48_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_61
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_48_62
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_48_60
.Lnreverse$2F2_α_48_62: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_48_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_61
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_48_60
.Lnreverse$2F2_α_48_63: cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_61
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_48_61
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_48_60
.Lnreverse$2F2_α_48_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_48_80
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_48_80
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_48_80
                                                                              jmp   .Lnreverse$2F2_α_48_74
.Lnreverse$2F2_α_48_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lnreverse$2F2_α_48_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lnreverse$2F2_α_48_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lnreverse$2F2_α_48_73
                        lea              r9, [rsp + 928]
.Lnreverse$2F2_α_48_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_48_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_65
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_48_66
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_48_64
.Lnreverse$2F2_α_48_66: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_48_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_65
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_48_64
.Lnreverse$2F2_α_48_67: cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_65
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_48_65
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_48_64
.Lnreverse$2F2_α_48_65: lea              rcx, [rsp + 944]
.Lnreverse$2F2_α_48_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_48_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_69
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_48_70
                        mov              rcx, rax;                            jmp   .Lnreverse$2F2_α_48_68
.Lnreverse$2F2_α_48_70: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_48_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_69
                        mov              rcx, rax;                            jmp   .Lnreverse$2F2_α_48_68
.Lnreverse$2F2_α_48_71: cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_69
                        cmp              rax, rcx;                            je    .Lnreverse$2F2_α_48_69
                        mov              rcx, rax;                            jmp   .Lnreverse$2F2_α_48_68
.Lnreverse$2F2_α_48_69: cmp              r9, rcx;                             je    .Lnreverse$2F2_α_48_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_48_75
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_48_75
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_48_75
                                                                              jmp   .Lnreverse$2F2_α_48_72
.Lnreverse$2F2_α_48_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_48_76
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_48_76
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lnreverse$2F2_α_48_76
                                                                              jmp   .Lnreverse$2F2_α_48_72
.Lnreverse$2F2_α_48_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lnreverse$2F2_α_48_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lnreverse$2F2_α_48_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lnreverse$2F2_α_48_77
.Lnreverse$2F2_α_48_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lnreverse$2F2_α_48_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lnreverse$2F2_α_48_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lnreverse$2F2_α_48_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lnreverse$2F2_α_48_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lnreverse$2F2_α_48_72
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
                        lea              r9, [rsp + 928]
.Lnreverse$2F2_α_48_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_48_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_82
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_48_83
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_48_81
.Lnreverse$2F2_α_48_83: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_48_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_82
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_48_81
.Lnreverse$2F2_α_48_84: cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_82
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_48_82
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_48_81
.Lnreverse$2F2_α_48_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_48_85
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_48_85
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_48_85
                                                                              jmp   .Lnreverse$2F2_α_48_86
.Lnreverse$2F2_α_48_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lnreverse$2F2_α_48_87
.Lnreverse$2F2_α_48_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lnreverse$2F2_α_48_87: lea              rcx, [rsp + 944]
.Lnreverse$2F2_α_48_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_48_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_89
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_48_90
                        mov              rcx, rax;                            jmp   .Lnreverse$2F2_α_48_88
.Lnreverse$2F2_α_48_90: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_48_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_89
                        mov              rcx, rax;                            jmp   .Lnreverse$2F2_α_48_88
.Lnreverse$2F2_α_48_91: cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_48_89
                        cmp              rax, rcx;                            je    .Lnreverse$2F2_α_48_89
                        mov              rcx, rax;                            jmp   .Lnreverse$2F2_α_48_88
.Lnreverse$2F2_α_48_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_48_92
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_48_92
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_48_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lnreverse$2F2_α_48_92
                                                                              jmp   .Lnreverse$2F2_α_48_93
.Lnreverse$2F2_α_48_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lnreverse$2F2_α_48_94
.Lnreverse$2F2_α_48_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lnreverse$2F2_α_48_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lnreverse$2F2_α_48_77
.Lnreverse$2F2_α_48_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnreverse$2F2_α_48_77
.Lnreverse$2F2_α_48_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_48_77: mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n23_call_prolog_α
                                                                              jmp   n9_var_ref_α
n8_call_prolog_β:       mov              r11, 9;                              jmp   n23_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n11_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
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
.Lnreverse$2F2_α_53_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_53_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_53_41
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_53_55
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_53_40
.Lnreverse$2F2_α_53_55: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_53_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_53_41
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_53_40
.Lnreverse$2F2_α_53_56: cmp              al, 72;                              jne   .Lnreverse$2F2_α_53_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_53_41
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_53_41
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_53_40
.Lnreverse$2F2_α_53_41: lea              r9, [rsp + 832]
.Lnreverse$2F2_α_53_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_53_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_53_43
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_53_57
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_53_42
.Lnreverse$2F2_α_53_57: cmp              esi, 2;                              jne   .Lnreverse$2F2_α_53_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_53_43
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_53_42
.Lnreverse$2F2_α_53_58: cmp              al, 72;                              jne   .Lnreverse$2F2_α_53_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_53_43
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_53_43
                        mov              r9, rax;                             jmp   .Lnreverse$2F2_α_53_42
.Lnreverse$2F2_α_53_43: cmp              r8, r9;                              je    .Lnreverse$2F2_α_53_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_53_44
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_53_44
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_53_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_53_44
                                                                              jmp   .Lnreverse$2F2_α_53_45
.Lnreverse$2F2_α_53_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_53_53
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_53_53
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_53_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_53_53
                                                                              jmp   .Lnreverse$2F2_α_53_46
.Lnreverse$2F2_α_53_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lnreverse$2F2_α_53_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lnreverse$2F2_α_53_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lnreverse$2F2_α_53_51
.Lnreverse$2F2_α_53_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_53_47
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_53_47
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_53_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lnreverse$2F2_α_53_47
                                                                              jmp   .Lnreverse$2F2_α_53_48
.Lnreverse$2F2_α_53_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lnreverse$2F2_α_53_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lnreverse$2F2_α_53_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lnreverse$2F2_α_53_51
.Lnreverse$2F2_α_53_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lnreverse$2F2_α_53_49
                        cmp              dl, 80;                              je    .Lnreverse$2F2_α_53_53
                                                                              jmp   .Lnreverse$2F2_α_53_52
.Lnreverse$2F2_α_53_49: cmp              dl, 80;                              je    .Lnreverse$2F2_α_53_52
                        cmp              cl, 5;                               je    .Lnreverse$2F2_α_53_53
                        cmp              dl, 5;                               je    .Lnreverse$2F2_α_53_53
                        cmp              cl, 3;                               jne   .Lnreverse$2F2_α_53_50
                        cmp              dl, 3;                               jne   .Lnreverse$2F2_α_53_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lnreverse$2F2_α_53_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lnreverse$2F2_α_53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lnreverse$2F2_α_53_51
                                                                              jmp   .Lnreverse$2F2_α_53_52
.Lnreverse$2F2_α_53_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lnreverse$2F2_α_53_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lnreverse$2F2_α_53_53
.Lnreverse$2F2_α_53_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lnreverse$2F2_α_53_54
.Lnreverse$2F2_α_53_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnreverse$2F2_α_53_54
.Lnreverse$2F2_α_53_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_53_54: mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx
                        cmp              al, 104;                             je    n23_call_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   n23_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1168]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n14_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n14_call_proc_staged_α: mov              r11, 15
                        mov              qword ptr [rsp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnreverse$2F2_α_59_200
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lnreverse$2F2_α_59_201
.Lnreverse$2F2_α_59_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_59_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnreverse$2F2_α_59_202
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lnreverse$2F2_α_59_203
.Lnreverse$2F2_α_59_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_59_203:
                        lea              rax, [rip + .Lnreverse$2F2_α_59_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_59_1
                        lea              rcx, [rip + .Lnreverse$2F2_α_59_4]
                        push             rcx
                        lea              rcx, [rip + .Lnreverse$2F2_α_59_3]
                        push             rcx
                        lea              rdx, [rip + .Lnreverse$2F2_α_59_4];  jmp   rax
.Lnreverse$2F2_α_59_3:  add              rsp, 16
                        mov              qword ptr [rsp + 744], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lnreverse$2F2_α_59_5
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnreverse$2F2_α_59_2
.Lnreverse$2F2_α_59_5:  call             rt_gen_spine_pass_γ@PLT;             jmp   .Lnreverse$2F2_α_59_2
.Lnreverse$2F2_α_59_4:  add              rsp, 16
                        mov              rax, qword ptr [rsp + 736]
                        test             rax, rax;                            jne   .Lnreverse$2F2_α_59_6
                        mov              qword ptr [rsp + 736], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnreverse$2F2_α_59_2
.Lnreverse$2F2_α_59_6:  call             rt_gen_spine_pass_ω@PLT;             jmp   .Lnreverse$2F2_α_59_2
.Lnreverse$2F2_α_59_1:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_59_2:  mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lnreverse$2F2_α_59_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
.Lnreverse$2F2_α_59_29: mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n23_call_prolog_α
                                                                              jmp   n15_var_ref_α
n14_call_proc_staged_β: mov              r11, 15
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 736], 0
                        lea              rdi, [rsp + 752]
                        lea              rsi, [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n23_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              ecx, 48
                        mov              r8d, 1104
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n23_call_prolog_α
                        lea              r8, [rip + .Lnreverse$2F2_α_59_7]
                        push             r8
                        lea              rcx, [rip + .Lnreverse$2F2_α_59_4]
                        push             rcx
                        lea              rcx, [rip + .Lnreverse$2F2_α_59_3]
                        push             rcx
                        lea              rdx, [rip + .Lnreverse$2F2_α_59_4];  jmp   rax
.Lnreverse$2F2_α_59_7:  add              rsp, 8
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n23_call_prolog_α
                                                                              jmp   n15_var_ref_α
.Lnreverse$2F2_β_59_0:  .quad            .Lnreverse$2F2_β_59_0_s
.Lnreverse$2F2_β_59_0_s:
                        .string          "nreverse/2"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n16_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rsp + 656], 2             # result
                        mov              dword ptr [rsp + 660], 1
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_62_0]
                        mov              qword ptr [rsp + 664], rax;          jmp   n17_var_ref_α
.Lnreverse$2F2_α_62_0:  .quad            .Lnreverse$2F2_α_62_0_s
.Lnreverse$2F2_α_62_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx;          jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:       mov              r11, 19
                        mov              qword ptr [rsp + 544], 2             # result
                        mov              dword ptr [rsp + 548], 2
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_65_0]
                        mov              qword ptr [rsp + 552], rax;          jmp   n19_call_prolog_α
.Lnreverse$2F2_α_65_0:  .quad            .Lnreverse$2F2_α_65_0_s
.Lnreverse$2F2_α_65_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n19_call_prolog_α:      mov              r11, 20
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 632], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 600], rax
                        lea              rdi, [rsp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 576], rax
                        mov              qword ptr [rsp + 584], rdx
                        cmp              al, 104;                             je    n23_call_prolog_α
                                                                              jmp   n20_var_ref_α
n19_call_prolog_β:      mov              r11, 20;                             jmp   n23_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_ref_α:          mov              r11, 21
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n21_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_proc_staged_α: mov              r11, 22
                        mov              qword ptr [rsp + 496], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnreverse$2F2_α_70_200
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lnreverse$2F2_α_70_201
.Lnreverse$2F2_α_70_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_70_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnreverse$2F2_α_70_202
                        mov              rax, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lnreverse$2F2_α_70_203
.Lnreverse$2F2_α_70_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_70_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lnreverse$2F2_α_70_204
                        mov              rax, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lnreverse$2F2_α_70_205
.Lnreverse$2F2_α_70_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_70_205:
                        lea              rax, [rip + .Lnreverse$2F2_α_70_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_70_1
                        lea              rcx, [rip + .Lnreverse$2F2_α_70_4]
                        push             rcx
                        lea              rcx, [rip + .Lnreverse$2F2_α_70_3]
                        push             rcx
                        lea              rdx, [rip + .Lnreverse$2F2_α_70_4];  jmp   rax
.Lnreverse$2F2_α_70_3:  add              rsp, 16
                        mov              qword ptr [rsp + 504], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lnreverse$2F2_α_70_5
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnreverse$2F2_α_70_2
.Lnreverse$2F2_α_70_5:  call             rt_gen_spine_pass_γ@PLT;             jmp   .Lnreverse$2F2_α_70_2
.Lnreverse$2F2_α_70_4:  add              rsp, 16
                        mov              rax, qword ptr [rsp + 496]
                        test             rax, rax;                            jne   .Lnreverse$2F2_α_70_6
                        mov              qword ptr [rsp + 496], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lnreverse$2F2_α_70_2
.Lnreverse$2F2_α_70_6:  call             rt_gen_spine_pass_ω@PLT;             jmp   .Lnreverse$2F2_α_70_2
.Lnreverse$2F2_α_70_1:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_70_2:  mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lnreverse$2F2_α_70_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 432]
                        mov              rdx, qword ptr [rsp + 440]
.Lnreverse$2F2_α_70_29: mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n14_call_proc_staged_β
                                                                              jmp   n22_suspend_α
n21_call_proc_staged_β: mov              r11, 22
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 496], 0
                        lea              rdi, [rsp + 512]
                        lea              rsi, [rsp + 520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n14_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 512]
                        mov              rdx, qword ptr [rsp + 520]
                        mov              ecx, 64
                        mov              r8d, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 576]
                        mov              rdx, qword ptr [rsp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 672]
                        mov              rdx, qword ptr [rsp + 680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n14_call_proc_staged_β
                        lea              r8, [rip + .Lnreverse$2F2_α_70_7]
                        push             r8
                        lea              rcx, [rip + .Lnreverse$2F2_α_70_4]
                        push             rcx
                        lea              rcx, [rip + .Lnreverse$2F2_α_70_3]
                        push             rcx
                        lea              rdx, [rip + .Lnreverse$2F2_α_70_4];  jmp   rax
.Lnreverse$2F2_α_70_7:  add              rsp, 8
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    n14_call_proc_staged_β
                                                                              jmp   n22_suspend_α
.Lnreverse$2F2_β_70_0:  .quad            .Lnreverse$2F2_β_70_0_s
.Lnreverse$2F2_β_70_0_s:
                        .string          "concatenate/3"
#-----------------------------------------------------------------------------------------------------------------------
n22_suspend_α:          mov              r11, 23
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_72_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104];         jmp   rax
.Lnreverse$2F2_α_72_61: mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n22_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n22_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   nreverse$2F2_γ
n22_suspend_β:          mov              r11, 23;                             jmp   n21_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n23_call_prolog_α:      mov              r11, 24
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    nreverse$2F2_ω
                                                                              jmp   n24_var_ref_α
n23_call_prolog_β:      mov              r11, 24;                             jmp   nreverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n25_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n25_lit_integer_α:      mov              r11, 26
                        mov              qword ptr [rsp + 368], 3             # result
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_76_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n26_lit_string_α
.Lnreverse$2F2_α_76_0:  .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_string_α:       mov              r11, 27
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 2
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_77_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n27_call_prolog_α
.Lnreverse$2F2_α_77_0:  .quad            .Lnreverse$2F2_α_77_0_s
.Lnreverse$2F2_α_77_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n27_call_prolog_α:      mov              r11, 28
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 328], rax
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 304], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 312], rax
                        lea              rdi, [rsp + 304]
                        lea              r8, [rsp + 304]
.Lnreverse$2F2_α_78_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lnreverse$2F2_α_78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_78_111
                        cmp              esi, 1;                              jne   .Lnreverse$2F2_α_78_112
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_78_110
.Lnreverse$2F2_α_78_112:
                        cmp              esi, 2;                              jne   .Lnreverse$2F2_α_78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_78_111
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_78_110
.Lnreverse$2F2_α_78_113:
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_78_111
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_78_111
                        mov              r8, rax;                             jmp   .Lnreverse$2F2_α_78_110
.Lnreverse$2F2_α_78_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lnreverse$2F2_α_78_114
                        cmp              al, 104;                             je    .Lnreverse$2F2_α_78_114
                        cmp              al, 72;                              jne   .Lnreverse$2F2_α_78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lnreverse$2F2_α_78_114
                                                                              jmp   .Lnreverse$2F2_α_78_118
.Lnreverse$2F2_α_78_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lnreverse$2F2_α_78_115
                        cmp              al, 3;                               je    .Lnreverse$2F2_α_78_114
                        cmp              al, 2;                               jne   .Lnreverse$2F2_α_78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lnreverse$2F2_α_78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lnreverse$2F2_α_78_114
                                                                              jmp   .Lnreverse$2F2_α_78_116
.Lnreverse$2F2_α_78_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lnreverse$2F2_α_78_117
.Lnreverse$2F2_α_78_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lnreverse$2F2_α_78_117
.Lnreverse$2F2_α_78_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lnreverse$2F2_α_78_117:
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n28_var_ref_α
n27_call_prolog_β:      mov              r11, 28;                             jmp   n35_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:       mov              r11, 30
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 2
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_81_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n30_call_prolog_α
.Lnreverse$2F2_α_81_0:  .quad            .Lnreverse$2F2_α_81_0_s
.Lnreverse$2F2_α_81_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n30_call_prolog_α:      mov              r11, 31
                        mov              rax, qword ptr [rsp + 256]
                        mov              qword ptr [rsp + 224], rax
                        mov              rax, qword ptr [rsp + 264]
                        mov              qword ptr [rsp + 232], rax
                        lea              rdi, [rsp + 224]
                        mov              rsi, qword ptr [rip + .Lnreverse$2F2_α_82_2]
                                                                              jmp   .Lnreverse$2F2_α_82_3
.Lnreverse$2F2_α_82_2:  .quad            .Lnreverse$2F2_α_82_2_s
.Lnreverse$2F2_α_82_2_s:
                        .string          "[]"
.Lnreverse$2F2_α_82_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n31_var_ref_α
n30_call_prolog_β:      mov              r11, 31;                             jmp   n35_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx;          jmp   n32_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:       mov              r11, 33
                        mov              qword ptr [rsp + 192], 2             # result
                        mov              dword ptr [rsp + 196], 2
                        mov              rax, qword ptr [rip + .Lnreverse$2F2_α_85_0]
                        mov              qword ptr [rsp + 200], rax;          jmp   n33_call_prolog_α
.Lnreverse$2F2_α_85_0:  .quad            .Lnreverse$2F2_α_85_0_s
.Lnreverse$2F2_α_85_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n33_call_prolog_α:      mov              r11, 34
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 144], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 152], rax
                        lea              rdi, [rsp + 144]
                        mov              rsi, qword ptr [rip + .Lnreverse$2F2_α_86_2]
                                                                              jmp   .Lnreverse$2F2_α_86_3
.Lnreverse$2F2_α_86_2:  .quad            .Lnreverse$2F2_α_86_2_s
.Lnreverse$2F2_α_86_2_s:
                        .string          "[]"
.Lnreverse$2F2_α_86_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n35_call_prolog_α
                                                                              jmp   n34_suspend_α
n33_call_prolog_β:      mov              r11, 34;                             jmp   n35_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n34_suspend_α:          mov              r11, 35
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lnreverse$2F2_α_88_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104];         jmp   rax
.Lnreverse$2F2_α_88_61: mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n34_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n34_suspend_β]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   nreverse$2F2_γ
n34_suspend_β:          mov              r11, 35;                             jmp   n35_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_prolog_α:      mov              r11, 36
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
                        cmp              al, 104;                             je    nreverse$2F2_ω
                                                                              jmp   nreverse$2F2_ω
n35_call_prolog_β:      mov              r11, 36;                             jmp   nreverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_β:
                                                                              jmp   n22_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lnreverse$2F2_α_89_50
                        mov              qword ptr [rsp + 1104], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1104];         jmp   rax
.Lnreverse$2F2_α_89_50: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1208]
                        add              rsp, 1232;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
nreverse$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1216]
                        add              rsp, 1232;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__reverse$2F2:
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
reverse$2F2_α_body:
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rsp + 416], rax
#-----------------------------------------------------------------------------------------------------------------------
n90_call_prolog_α:      mov              r11, 37
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lreverse$2F2_α_103_102
                        mov              rax, qword ptr [rsp + 48]
                        mov              rdx, qword ptr [rsp + 56];           jmp   .Lreverse$2F2_α_103_101
.Lreverse$2F2_α_103_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_103_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lreverse$2F2_α_103_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lreverse$2F2_α_103_101
.Lreverse$2F2_α_103_100:
                        lea              rdi, [rsp + 64]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_103_101:
                        mov              qword ptr [rsp + 48], rax
                        mov              qword ptr [rsp + 56], rdx
                        cmp              al, 104;                             je    reverse$2F2_ω
                                                                              jmp   n91_var_ref_α
n90_call_prolog_β:      mov              r11, 37;                             jmp   reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n92_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n92_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx;          jmp   n93_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n93_call_prolog_α:      mov              r11, 40
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
.Lreverse$2F2_α_108_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_108_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_108_41
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_108_55
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_108_40
.Lreverse$2F2_α_108_55: cmp              esi, 2;                              jne   .Lreverse$2F2_α_108_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_108_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_108_40
.Lreverse$2F2_α_108_56: cmp              al, 72;                              jne   .Lreverse$2F2_α_108_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_108_41
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_108_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_108_40
.Lreverse$2F2_α_108_41: lea              r9, [rsp + 368]
.Lreverse$2F2_α_108_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_108_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_108_43
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_108_57
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_108_42
.Lreverse$2F2_α_108_57: cmp              esi, 2;                              jne   .Lreverse$2F2_α_108_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_108_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_108_42
.Lreverse$2F2_α_108_58: cmp              al, 72;                              jne   .Lreverse$2F2_α_108_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_108_43
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_108_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_108_42
.Lreverse$2F2_α_108_43: cmp              r8, r9;                              je    .Lreverse$2F2_α_108_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_108_44
                        cmp              al, 104;                             je    .Lreverse$2F2_α_108_44
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_108_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_108_44
                                                                              jmp   .Lreverse$2F2_α_108_45
.Lreverse$2F2_α_108_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_108_53
                        cmp              al, 104;                             je    .Lreverse$2F2_α_108_53
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_108_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_108_53
                                                                              jmp   .Lreverse$2F2_α_108_46
.Lreverse$2F2_α_108_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_108_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_108_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lreverse$2F2_α_108_51
.Lreverse$2F2_α_108_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_108_47
                        cmp              al, 104;                             je    .Lreverse$2F2_α_108_47
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_108_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_108_47
                                                                              jmp   .Lreverse$2F2_α_108_48
.Lreverse$2F2_α_108_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_108_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_108_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lreverse$2F2_α_108_51
.Lreverse$2F2_α_108_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lreverse$2F2_α_108_49
                        cmp              dl, 80;                              je    .Lreverse$2F2_α_108_53
                                                                              jmp   .Lreverse$2F2_α_108_52
.Lreverse$2F2_α_108_49: cmp              dl, 80;                              je    .Lreverse$2F2_α_108_52
                        cmp              cl, 5;                               je    .Lreverse$2F2_α_108_53
                        cmp              dl, 5;                               je    .Lreverse$2F2_α_108_53
                        cmp              cl, 3;                               jne   .Lreverse$2F2_α_108_50
                        cmp              dl, 3;                               jne   .Lreverse$2F2_α_108_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_108_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lreverse$2F2_α_108_51
                                                                              jmp   .Lreverse$2F2_α_108_52
.Lreverse$2F2_α_108_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_108_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_108_53
.Lreverse$2F2_α_108_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lreverse$2F2_α_108_54
.Lreverse$2F2_α_108_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lreverse$2F2_α_108_54
.Lreverse$2F2_α_108_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_108_54: mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n102_call_prolog_α
                                                                              jmp   n94_var_ref_α
n93_call_prolog_β:      mov              r11, 40;                             jmp   n102_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n94_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n95_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n96_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n96_call_prolog_α:      mov              r11, 43
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
.Lreverse$2F2_α_113_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_113_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_113_41
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_113_55
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_113_40
.Lreverse$2F2_α_113_55: cmp              esi, 2;                              jne   .Lreverse$2F2_α_113_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_113_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_113_40
.Lreverse$2F2_α_113_56: cmp              al, 72;                              jne   .Lreverse$2F2_α_113_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_113_41
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_113_41
                        mov              r8, rax;                             jmp   .Lreverse$2F2_α_113_40
.Lreverse$2F2_α_113_41: lea              r9, [rsp + 288]
.Lreverse$2F2_α_113_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lreverse$2F2_α_113_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_113_43
                        cmp              esi, 1;                              jne   .Lreverse$2F2_α_113_57
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_113_42
.Lreverse$2F2_α_113_57: cmp              esi, 2;                              jne   .Lreverse$2F2_α_113_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_113_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_113_42
.Lreverse$2F2_α_113_58: cmp              al, 72;                              jne   .Lreverse$2F2_α_113_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lreverse$2F2_α_113_43
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_113_43
                        mov              r9, rax;                             jmp   .Lreverse$2F2_α_113_42
.Lreverse$2F2_α_113_43: cmp              r8, r9;                              je    .Lreverse$2F2_α_113_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_113_44
                        cmp              al, 104;                             je    .Lreverse$2F2_α_113_44
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_113_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lreverse$2F2_α_113_44
                                                                              jmp   .Lreverse$2F2_α_113_45
.Lreverse$2F2_α_113_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_113_53
                        cmp              al, 104;                             je    .Lreverse$2F2_α_113_53
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_113_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_113_53
                                                                              jmp   .Lreverse$2F2_α_113_46
.Lreverse$2F2_α_113_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_113_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_113_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lreverse$2F2_α_113_51
.Lreverse$2F2_α_113_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lreverse$2F2_α_113_47
                        cmp              al, 104;                             je    .Lreverse$2F2_α_113_47
                        cmp              al, 72;                              jne   .Lreverse$2F2_α_113_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lreverse$2F2_α_113_47
                                                                              jmp   .Lreverse$2F2_α_113_48
.Lreverse$2F2_α_113_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lreverse$2F2_α_113_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lreverse$2F2_α_113_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lreverse$2F2_α_113_51
.Lreverse$2F2_α_113_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lreverse$2F2_α_113_49
                        cmp              dl, 80;                              je    .Lreverse$2F2_α_113_53
                                                                              jmp   .Lreverse$2F2_α_113_52
.Lreverse$2F2_α_113_49: cmp              dl, 80;                              je    .Lreverse$2F2_α_113_52
                        cmp              cl, 5;                               je    .Lreverse$2F2_α_113_53
                        cmp              dl, 5;                               je    .Lreverse$2F2_α_113_53
                        cmp              cl, 3;                               jne   .Lreverse$2F2_α_113_50
                        cmp              dl, 3;                               jne   .Lreverse$2F2_α_113_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_113_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lreverse$2F2_α_113_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lreverse$2F2_α_113_51
                                                                              jmp   .Lreverse$2F2_α_113_52
.Lreverse$2F2_α_113_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_113_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lreverse$2F2_α_113_53
.Lreverse$2F2_α_113_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lreverse$2F2_α_113_54
.Lreverse$2F2_α_113_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lreverse$2F2_α_113_54
.Lreverse$2F2_α_113_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_113_54: mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx
                        cmp              al, 104;                             je    n102_call_prolog_α
                                                                              jmp   n97_var_ref_α
n96_call_prolog_β:      mov              r11, 43;                             jmp   n102_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n97_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 432]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n98_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lreverse$2F2_α_116_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n99_var_ref_α
.Lreverse$2F2_α_116_0:  .quad            .Lreverse$2F2_α_116_0_s
.Lreverse$2F2_α_116_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 448]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n100_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n100_call_proc_staged_α:
                        mov              r11, 47
                        mov              qword ptr [rsp + 176], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_120_200
                        mov              rax, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lreverse$2F2_α_120_201
.Lreverse$2F2_α_120_200:
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
.Lreverse$2F2_α_120_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_120_202
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lreverse$2F2_α_120_203
.Lreverse$2F2_α_120_202:
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
.Lreverse$2F2_α_120_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lreverse$2F2_α_120_204
                        mov              rax, qword ptr [rsp + 240]
                        mov              rdx, qword ptr [rsp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lreverse$2F2_α_120_205
.Lreverse$2F2_α_120_204:
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
.Lreverse$2F2_α_120_205:
                        lea              rax, [rip + .Lreverse$2F2_α_120_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lreverse$2F2_α_120_1
                        lea              rcx, [rip + .Lreverse$2F2_α_120_4]
                        push             rcx
                        lea              rcx, [rip + .Lreverse$2F2_α_120_3]
                        push             rcx
                        lea              rdx, [rip + .Lreverse$2F2_α_120_4];  jmp   rax
.Lreverse$2F2_α_120_3:  add              rsp, 16
                        mov              qword ptr [rsp + 184], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lreverse$2F2_α_120_5
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lreverse$2F2_α_120_2
.Lreverse$2F2_α_120_5:  call             rt_gen_spine_pass_γ@PLT;             jmp   .Lreverse$2F2_α_120_2
.Lreverse$2F2_α_120_4:  add              rsp, 16
                        mov              rax, qword ptr [rsp + 176]
                        test             rax, rax;                            jne   .Lreverse$2F2_α_120_6
                        mov              qword ptr [rsp + 176], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lreverse$2F2_α_120_2
.Lreverse$2F2_α_120_6:  call             rt_gen_spine_pass_ω@PLT;             jmp   .Lreverse$2F2_α_120_2
.Lreverse$2F2_α_120_1:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lreverse$2F2_α_120_2:  mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lreverse$2F2_α_120_29
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
.Lreverse$2F2_α_120_29: mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n102_call_prolog_α
                                                                              jmp   n101_suspend_α
n100_call_proc_staged_β:
                        mov              r11, 47
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
                        test             rax, rax;                            je    n102_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 192]
                        mov              rdx, qword ptr [rsp + 200]
                        mov              ecx, 64
                        mov              r8d, 1168
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
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n102_call_prolog_α
                        lea              r8, [rip + .Lreverse$2F2_α_120_7]
                        push             r8
                        lea              rcx, [rip + .Lreverse$2F2_α_120_4]
                        push             rcx
                        lea              rcx, [rip + .Lreverse$2F2_α_120_3]
                        push             rcx
                        lea              rdx, [rip + .Lreverse$2F2_α_120_4];  jmp   rax
.Lreverse$2F2_α_120_7:  add              rsp, 8
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    n102_call_prolog_α
                                                                              jmp   n101_suspend_α
.Lreverse$2F2_β_120_0:  .quad            .Lreverse$2F2_β_120_0_s
.Lreverse$2F2_β_120_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n101_suspend_α:         mov              r11, 48
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lreverse$2F2_α_122_61
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
.Lreverse$2F2_α_122_61: mov              rdi, qword ptr [rsp + 48]
                        mov              rsi, qword ptr [rsp + 56]
                        lea              rdx, [rip + n101_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n101_suspend_β]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 8], rax;            jmp   reverse$2F2_γ
n101_suspend_β:         mov              r11, 48;                             jmp   n100_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n102_call_prolog_α:     mov              r11, 49
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
                        cmp              al, 104;                             je    reverse$2F2_ω
                                                                              jmp   reverse$2F2_ω
n102_call_prolog_β:     mov              r11, 49;                             jmp   reverse$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_β:
                                                                              jmp   n101_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lreverse$2F2_α_123_50
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
.Lreverse$2F2_α_123_50: mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 488]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
reverse$2F2_ω:
                        mov              rcx, qword ptr [rsp + 496]
                        add              rsp, 512;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__$reverse_$2F3:
                        sub              rsp, 1296
                        mov              qword ptr [rsp + 1272], rcx
                        mov              qword ptr [rsp + 1280], rdx
                        mov              qword ptr [rsp + 1288], rsp
                        mov              rdi, rsp
                        mov              esi, 1168
                        mov              edx, 1264
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
$reverse_$2F3_α_body:
                        lea              rax, [rip + n138_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
#-----------------------------------------------------------------------------------------------------------------------
n124_call_prolog_α:     mov              r11, 50
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_163_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .L$reverse_$2F3_α_163_101
.L$reverse_$2F3_α_163_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_163_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .L$reverse_$2F3_α_163_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .L$reverse_$2F3_α_163_101
.L$reverse_$2F3_α_163_100:
                        lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_163_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   n125_var_ref_α
n124_call_prolog_β:     mov              r11, 50;                             jmp   $reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n126_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     mov              r11, 52
                        mov              qword ptr [rsp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_166_0]
                        mov              qword ptr [rsp + 1144], rax;         jmp   n127_lit_string_α
.L$reverse_$2F3_α_166_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rsp + 1152], 2            # result
                        mov              dword ptr [rsp + 1156], 2
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_167_0]
                        mov              qword ptr [rsp + 1160], rax;         jmp   n128_call_prolog_α
.L$reverse_$2F3_α_167_0:
                        .quad            .L$reverse_$2F3_α_167_0_s
.L$reverse_$2F3_α_167_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n128_call_prolog_α:     mov              r11, 54
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1112], rax
                        mov              rax, qword ptr [rsp + 1136]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 1144]
                        mov              qword ptr [rsp + 1096], rax
                        mov              rax, qword ptr [rsp + 1120]
                        mov              qword ptr [rsp + 1072], rax
                        mov              rax, qword ptr [rsp + 1128]
                        mov              qword ptr [rsp + 1080], rax
                        lea              rdi, [rsp + 1072]
                        lea              r8, [rsp + 1072]
.L$reverse_$2F3_α_168_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_168_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_168_111
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_168_112
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_168_110
.L$reverse_$2F3_α_168_112:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_168_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_168_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_168_110
.L$reverse_$2F3_α_168_113:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_168_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_168_111
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_168_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_168_110
.L$reverse_$2F3_α_168_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_168_114
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_168_114
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_168_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_168_114
                                                                              jmp   .L$reverse_$2F3_α_168_118
.L$reverse_$2F3_α_168_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .L$reverse_$2F3_α_168_115
                        cmp              al, 3;                               je    .L$reverse_$2F3_α_168_114
                        cmp              al, 2;                               jne   .L$reverse_$2F3_α_168_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .L$reverse_$2F3_α_168_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .L$reverse_$2F3_α_168_114
                                                                              jmp   .L$reverse_$2F3_α_168_116
.L$reverse_$2F3_α_168_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .L$reverse_$2F3_α_168_117
.L$reverse_$2F3_α_168_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_168_117
.L$reverse_$2F3_α_168_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_168_117:
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx
                        cmp              al, 104;                             je    n140_var_ref_α
                                                                              jmp   n129_var_ref_α
n128_call_prolog_β:     mov              r11, 54;                             jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1024], rax
                        mov              qword ptr [rsp + 1032], rdx;         jmp   n130_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_string_α:      mov              r11, 56
                        mov              qword ptr [rsp + 1040], 2            # result
                        mov              dword ptr [rsp + 1044], 2
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_171_0]
                        mov              qword ptr [rsp + 1048], rax;         jmp   n131_call_prolog_α
.L$reverse_$2F3_α_171_0:
                        .quad            .L$reverse_$2F3_α_171_0_s
.L$reverse_$2F3_α_171_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n131_call_prolog_α:     mov              r11, 57
                        mov              rax, qword ptr [rsp + 1024]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1032]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              rsi, qword ptr [rip + .L$reverse_$2F3_α_172_2]
                                                                              jmp   .L$reverse_$2F3_α_172_3
.L$reverse_$2F3_α_172_2:
                        .quad            .L$reverse_$2F3_α_172_2_s
.L$reverse_$2F3_α_172_2_s:
                        .string          "[]"
.L$reverse_$2F3_α_172_3:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n132_var_ref_α
n131_call_prolog_β:     mov              r11, 57;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n133_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n133_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n134_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n134_call_prolog_α:     mov              r11, 60
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        lea              r8, [rsp + 912]
.L$reverse_$2F3_α_177_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_177_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_177_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_177_40
.L$reverse_$2F3_α_177_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_177_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_177_40
.L$reverse_$2F3_α_177_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_177_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_177_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_177_40
.L$reverse_$2F3_α_177_41:
                        lea              r9, [rsp + 928]
.L$reverse_$2F3_α_177_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_177_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_177_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_177_42
.L$reverse_$2F3_α_177_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_177_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_177_42
.L$reverse_$2F3_α_177_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_177_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_177_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_177_42
.L$reverse_$2F3_α_177_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_177_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_177_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_177_44
                                                                              jmp   .L$reverse_$2F3_α_177_45
.L$reverse_$2F3_α_177_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_177_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_177_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_177_53
                                                                              jmp   .L$reverse_$2F3_α_177_46
.L$reverse_$2F3_α_177_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_177_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_177_51
.L$reverse_$2F3_α_177_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_177_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_177_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_177_47
                                                                              jmp   .L$reverse_$2F3_α_177_48
.L$reverse_$2F3_α_177_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_177_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_177_51
.L$reverse_$2F3_α_177_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_177_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_177_53
                                                                              jmp   .L$reverse_$2F3_α_177_52
.L$reverse_$2F3_α_177_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_177_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_177_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_177_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_177_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_177_51
                                                                              jmp   .L$reverse_$2F3_α_177_52
.L$reverse_$2F3_α_177_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_177_53
.L$reverse_$2F3_α_177_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_177_54
.L$reverse_$2F3_α_177_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_177_54
.L$reverse_$2F3_α_177_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_177_54:
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n135_var_ref_α
n134_call_prolog_β:     mov              r11, 60;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n136_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n137_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n137_call_prolog_α:     mov              r11, 63
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
.L$reverse_$2F3_α_182_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_182_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_182_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_182_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_182_40
.L$reverse_$2F3_α_182_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_182_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_182_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_182_40
.L$reverse_$2F3_α_182_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_182_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_182_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_182_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_182_40
.L$reverse_$2F3_α_182_41:
                        lea              r9, [rsp + 848]
.L$reverse_$2F3_α_182_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_182_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_182_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_182_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_182_42
.L$reverse_$2F3_α_182_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_182_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_182_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_182_42
.L$reverse_$2F3_α_182_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_182_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_182_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_182_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_182_42
.L$reverse_$2F3_α_182_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_182_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_182_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_182_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_182_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_182_44
                                                                              jmp   .L$reverse_$2F3_α_182_45
.L$reverse_$2F3_α_182_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_182_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_182_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_182_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_182_53
                                                                              jmp   .L$reverse_$2F3_α_182_46
.L$reverse_$2F3_α_182_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_182_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_182_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_182_51
.L$reverse_$2F3_α_182_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_182_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_182_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_182_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_182_47
                                                                              jmp   .L$reverse_$2F3_α_182_48
.L$reverse_$2F3_α_182_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_182_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_182_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_182_51
.L$reverse_$2F3_α_182_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_182_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_182_53
                                                                              jmp   .L$reverse_$2F3_α_182_52
.L$reverse_$2F3_α_182_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_182_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_182_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_182_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_182_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_182_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_182_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_182_51
                                                                              jmp   .L$reverse_$2F3_α_182_52
.L$reverse_$2F3_α_182_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_182_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_182_53
.L$reverse_$2F3_α_182_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_182_54
.L$reverse_$2F3_α_182_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_182_54
.L$reverse_$2F3_α_182_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_182_54:
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n139_call_prolog_α
                                                                              jmp   n138_suspend_α
n137_call_prolog_β:     mov              r11, 63;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n138_suspend_α:         mov              r11, 64
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_184_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.L$reverse_$2F3_α_184_61:
                        mov              rdi, qword ptr [rsp + 64]
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
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $reverse_$2F3_γ
n138_suspend_β:         mov              r11, 64;                             jmp   n139_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n139_call_prolog_α:     mov              r11, 65
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   n140_var_ref_α
n139_call_prolog_β:     mov              r11, 65;                             jmp   $reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 720], rax
                        mov              qword ptr [rsp + 728], rdx;          jmp   n141_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              r11, 67
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_188_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n142_lit_integer_α
.L$reverse_$2F3_α_188_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              r11, 68
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_189_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n143_call_prolog_α
.L$reverse_$2F3_α_189_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n143_call_prolog_α:     mov              r11, 69
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        lea              r8, [rsp + 672]
.L$reverse_$2F3_α_190_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_190_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_190_111
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_190_112
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_190_110
.L$reverse_$2F3_α_190_112:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_190_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_190_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_190_110
.L$reverse_$2F3_α_190_113:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_190_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_190_111
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_190_111
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_190_110
.L$reverse_$2F3_α_190_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_190_114
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_190_114
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_190_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_190_114
                                                                              jmp   .L$reverse_$2F3_α_190_118
.L$reverse_$2F3_α_190_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .L$reverse_$2F3_α_190_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .L$reverse_$2F3_α_190_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .L$reverse_$2F3_α_190_115
                                                                              jmp   .L$reverse_$2F3_α_190_114
.L$reverse_$2F3_α_190_119:
                        cmp              al, 3;                               jne   .L$reverse_$2F3_α_190_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .L$reverse_$2F3_α_190_114
                                                                              jmp   .L$reverse_$2F3_α_190_115
.L$reverse_$2F3_α_190_120:
                        cmp              al, 2;                               jne   .L$reverse_$2F3_α_190_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .L$reverse_$2F3_α_190_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .L$reverse_$2F3_α_190_114
                                                                              jmp   .L$reverse_$2F3_α_190_115
.L$reverse_$2F3_α_190_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .L$reverse_$2F3_α_190_117
.L$reverse_$2F3_α_190_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_190_117
.L$reverse_$2F3_α_190_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_190_117:
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n144_var_ref_α
n143_call_prolog_β:     mov              r11, 69;                             jmp   n162_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n145_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n145_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n147_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n147_call_prolog_α:     mov              r11, 73
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 616], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        lea              r8, [rsp + 576]
.L$reverse_$2F3_α_197_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_197_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_61
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_197_62
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_197_60
.L$reverse_$2F3_α_197_62:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_197_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_61
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_197_60
.L$reverse_$2F3_α_197_63:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_61
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_197_61
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_197_60
.L$reverse_$2F3_α_197_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_197_80
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_197_80
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_197_80
                                                                              jmp   .L$reverse_$2F3_α_197_74
.L$reverse_$2F3_α_197_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_197_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .L$reverse_$2F3_α_197_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .L$reverse_$2F3_α_197_73
                        lea              r9, [rsp + 592]
.L$reverse_$2F3_α_197_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_197_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_65
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_197_66
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_197_64
.L$reverse_$2F3_α_197_66:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_197_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_65
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_197_64
.L$reverse_$2F3_α_197_67:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_65
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_197_65
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_197_64
.L$reverse_$2F3_α_197_65:
                        lea              rcx, [rsp + 608]
.L$reverse_$2F3_α_197_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_197_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_69
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_197_70
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_197_68
.L$reverse_$2F3_α_197_70:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_197_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_69
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_197_68
.L$reverse_$2F3_α_197_71:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_69
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_197_69
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_197_68
.L$reverse_$2F3_α_197_69:
                        cmp              r9, rcx;                             je    .L$reverse_$2F3_α_197_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_197_75
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_197_75
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_197_75
                                                                              jmp   .L$reverse_$2F3_α_197_72
.L$reverse_$2F3_α_197_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_197_76
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_197_76
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_197_76
                                                                              jmp   .L$reverse_$2F3_α_197_72
.L$reverse_$2F3_α_197_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .L$reverse_$2F3_α_197_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_197_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_197_77
.L$reverse_$2F3_α_197_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .L$reverse_$2F3_α_197_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .L$reverse_$2F3_α_197_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .L$reverse_$2F3_α_197_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .L$reverse_$2F3_α_197_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_197_72
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
                        lea              r9, [rsp + 592]
.L$reverse_$2F3_α_197_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_197_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_82
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_197_83
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_197_81
.L$reverse_$2F3_α_197_83:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_197_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_82
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_197_81
.L$reverse_$2F3_α_197_84:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_82
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_197_82
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_197_81
.L$reverse_$2F3_α_197_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_197_85
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_197_85
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_197_85
                                                                              jmp   .L$reverse_$2F3_α_197_86
.L$reverse_$2F3_α_197_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_197_87
.L$reverse_$2F3_α_197_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.L$reverse_$2F3_α_197_87:
                        lea              rcx, [rsp + 608]
.L$reverse_$2F3_α_197_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_197_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_89
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_197_90
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_197_88
.L$reverse_$2F3_α_197_90:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_197_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_89
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_197_88
.L$reverse_$2F3_α_197_91:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_197_89
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_197_89
                        mov              rcx, rax;                            jmp   .L$reverse_$2F3_α_197_88
.L$reverse_$2F3_α_197_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_197_92
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_197_92
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_197_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .L$reverse_$2F3_α_197_92
                                                                              jmp   .L$reverse_$2F3_α_197_93
.L$reverse_$2F3_α_197_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .L$reverse_$2F3_α_197_94
.L$reverse_$2F3_α_197_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.L$reverse_$2F3_α_197_94:
                        lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .L$reverse_$2F3_α_197_77
.L$reverse_$2F3_α_197_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_197_77
.L$reverse_$2F3_α_197_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_197_77:
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n148_var_ref_α
n147_call_prolog_β:     mov              r11, 73;                             jmp   n162_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n148_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 512], rax
                        mov              qword ptr [rsp + 520], rdx;          jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx;          jmp   n150_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n150_call_prolog_α:     mov              r11, 76
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
.L$reverse_$2F3_α_202_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_202_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_202_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_202_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_202_40
.L$reverse_$2F3_α_202_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_202_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_202_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_202_40
.L$reverse_$2F3_α_202_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_202_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_202_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_202_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_202_40
.L$reverse_$2F3_α_202_41:
                        lea              r9, [rsp + 496]
.L$reverse_$2F3_α_202_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_202_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_202_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_202_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_202_42
.L$reverse_$2F3_α_202_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_202_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_202_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_202_42
.L$reverse_$2F3_α_202_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_202_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_202_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_202_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_202_42
.L$reverse_$2F3_α_202_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_202_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_202_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_202_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_202_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_202_44
                                                                              jmp   .L$reverse_$2F3_α_202_45
.L$reverse_$2F3_α_202_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_202_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_202_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_202_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_202_53
                                                                              jmp   .L$reverse_$2F3_α_202_46
.L$reverse_$2F3_α_202_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_202_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_202_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_202_51
.L$reverse_$2F3_α_202_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_202_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_202_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_202_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_202_47
                                                                              jmp   .L$reverse_$2F3_α_202_48
.L$reverse_$2F3_α_202_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_202_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_202_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_202_51
.L$reverse_$2F3_α_202_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_202_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_202_53
                                                                              jmp   .L$reverse_$2F3_α_202_52
.L$reverse_$2F3_α_202_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_202_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_202_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_202_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_202_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_202_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_202_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_202_51
                                                                              jmp   .L$reverse_$2F3_α_202_52
.L$reverse_$2F3_α_202_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_202_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_202_53
.L$reverse_$2F3_α_202_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_202_54
.L$reverse_$2F3_α_202_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_202_54
.L$reverse_$2F3_α_202_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_202_54:
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n151_var_ref_α
n150_call_prolog_β:     mov              r11, 76;                             jmp   n162_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n153_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n153_call_prolog_α:     mov              r11, 79
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
.L$reverse_$2F3_α_207_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_207_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_207_41
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_207_55
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_207_40
.L$reverse_$2F3_α_207_55:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_207_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_207_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_207_40
.L$reverse_$2F3_α_207_56:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_207_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_207_41
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_207_41
                        mov              r8, rax;                             jmp   .L$reverse_$2F3_α_207_40
.L$reverse_$2F3_α_207_41:
                        lea              r9, [rsp + 416]
.L$reverse_$2F3_α_207_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .L$reverse_$2F3_α_207_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_207_43
                        cmp              esi, 1;                              jne   .L$reverse_$2F3_α_207_57
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_207_42
.L$reverse_$2F3_α_207_57:
                        cmp              esi, 2;                              jne   .L$reverse_$2F3_α_207_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_207_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_207_42
.L$reverse_$2F3_α_207_58:
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_207_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_207_43
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_207_43
                        mov              r9, rax;                             jmp   .L$reverse_$2F3_α_207_42
.L$reverse_$2F3_α_207_43:
                        cmp              r8, r9;                              je    .L$reverse_$2F3_α_207_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_207_44
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_207_44
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_207_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .L$reverse_$2F3_α_207_44
                                                                              jmp   .L$reverse_$2F3_α_207_45
.L$reverse_$2F3_α_207_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_207_53
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_207_53
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_207_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_207_53
                                                                              jmp   .L$reverse_$2F3_α_207_46
.L$reverse_$2F3_α_207_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_207_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_207_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .L$reverse_$2F3_α_207_51
.L$reverse_$2F3_α_207_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .L$reverse_$2F3_α_207_47
                        cmp              al, 104;                             je    .L$reverse_$2F3_α_207_47
                        cmp              al, 72;                              jne   .L$reverse_$2F3_α_207_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .L$reverse_$2F3_α_207_47
                                                                              jmp   .L$reverse_$2F3_α_207_48
.L$reverse_$2F3_α_207_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .L$reverse_$2F3_α_207_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .L$reverse_$2F3_α_207_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .L$reverse_$2F3_α_207_51
.L$reverse_$2F3_α_207_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .L$reverse_$2F3_α_207_49
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_207_53
                                                                              jmp   .L$reverse_$2F3_α_207_52
.L$reverse_$2F3_α_207_49:
                        cmp              dl, 80;                              je    .L$reverse_$2F3_α_207_52
                        cmp              cl, 5;                               je    .L$reverse_$2F3_α_207_53
                        cmp              dl, 5;                               je    .L$reverse_$2F3_α_207_53
                        cmp              cl, 3;                               jne   .L$reverse_$2F3_α_207_50
                        cmp              dl, 3;                               jne   .L$reverse_$2F3_α_207_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_207_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .L$reverse_$2F3_α_207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .L$reverse_$2F3_α_207_51
                                                                              jmp   .L$reverse_$2F3_α_207_52
.L$reverse_$2F3_α_207_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .L$reverse_$2F3_α_207_53
.L$reverse_$2F3_α_207_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .L$reverse_$2F3_α_207_54
.L$reverse_$2F3_α_207_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .L$reverse_$2F3_α_207_54
.L$reverse_$2F3_α_207_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_207_54:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n154_var_ref_α
n153_call_prolog_β:     mov              r11, 79;                             jmp   n162_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1184]
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx;          jmp   n155_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              r11, 81
                        mov              qword ptr [rsp + 352], 2             # result
                        mov              dword ptr [rsp + 356], 1
                        mov              rax, qword ptr [rip + .L$reverse_$2F3_α_210_0]
                        mov              qword ptr [rsp + 360], rax;          jmp   n156_var_ref_α
.L$reverse_$2F3_α_210_0:
                        .quad            .L$reverse_$2F3_α_210_0_s
.L$reverse_$2F3_α_210_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1216]
                        mov              qword ptr [rsp + 256], rax
                        mov              qword ptr [rsp + 264], rdx;          jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1200]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx;          jmp   n158_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n158_call_prolog_α:     mov              r11, 84
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
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n159_var_ref_α
n158_call_prolog_β:     mov              r11, 84;                             jmp   n162_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n159_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1232]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n160_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n160_call_proc_staged_α:
                        mov              r11, 86
                        mov              qword ptr [rsp + 192], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_219_200
                        mov              rax, qword ptr [rsp + 224]
                        mov              rdx, qword ptr [rsp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .L$reverse_$2F3_α_219_201
.L$reverse_$2F3_α_219_200:
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
.L$reverse_$2F3_α_219_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_219_202
                        mov              rax, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .L$reverse_$2F3_α_219_203
.L$reverse_$2F3_α_219_202:
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
.L$reverse_$2F3_α_219_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .L$reverse_$2F3_α_219_204
                        mov              rax, qword ptr [rsp + 368]
                        mov              rdx, qword ptr [rsp + 376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .L$reverse_$2F3_α_219_205
.L$reverse_$2F3_α_219_204:
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
.L$reverse_$2F3_α_219_205:
                        lea              rax, [rip + .L$reverse_$2F3_α_219_7]
                        push             rax
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_219_1
                        lea              rcx, [rip + .L$reverse_$2F3_α_219_4]
                        push             rcx
                        lea              rcx, [rip + .L$reverse_$2F3_α_219_3]
                        push             rcx
                        lea              rdx, [rip + .L$reverse_$2F3_α_219_4]
                                                                              jmp   rax
.L$reverse_$2F3_α_219_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 200], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .L$reverse_$2F3_α_219_5
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .L$reverse_$2F3_α_219_2
.L$reverse_$2F3_α_219_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .L$reverse_$2F3_α_219_2
.L$reverse_$2F3_α_219_4:
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 192]
                        test             rax, rax;                            jne   .L$reverse_$2F3_α_219_6
                        mov              qword ptr [rsp + 192], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .L$reverse_$2F3_α_219_2
.L$reverse_$2F3_α_219_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .L$reverse_$2F3_α_219_2
.L$reverse_$2F3_α_219_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.L$reverse_$2F3_α_219_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .L$reverse_$2F3_α_219_29
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
.L$reverse_$2F3_α_219_29:
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n161_suspend_α
n160_call_proc_staged_β:
                        mov              r11, 86
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
                        test             rax, rax;                            je    n162_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 208]
                        mov              rdx, qword ptr [rsp + 216]
                        mov              ecx, 64
                        mov              r8d, 1168
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
                        mov              edi, 2
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n162_call_prolog_α
                        lea              r8, [rip + .L$reverse_$2F3_α_219_7]
                        push             r8
                        lea              rcx, [rip + .L$reverse_$2F3_α_219_4]
                        push             rcx
                        lea              rcx, [rip + .L$reverse_$2F3_α_219_3]
                        push             rcx
                        lea              rdx, [rip + .L$reverse_$2F3_α_219_4]
                                                                              jmp   rax
.L$reverse_$2F3_α_219_7:
                        add              rsp, 8
                        mov              qword ptr [rsp + 128], rax
                        mov              qword ptr [rsp + 136], rdx
                        cmp              al, 104;                             je    n162_call_prolog_α
                                                                              jmp   n161_suspend_α
.L$reverse_$2F3_β_219_0:
                        .quad            .L$reverse_$2F3_β_219_0_s
.L$reverse_$2F3_β_219_0_s:
                        .string          "$reverse_/3"
#-----------------------------------------------------------------------------------------------------------------------
n161_suspend_α:         mov              r11, 87
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .L$reverse_$2F3_α_221_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.L$reverse_$2F3_α_221_61:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n161_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n161_suspend_β]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   $reverse_$2F3_γ
n161_suspend_β:         mov              r11, 87;                             jmp   n160_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n162_call_prolog_α:     mov              r11, 88
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
                        cmp              al, 104;                             je    $reverse_$2F3_ω
                                                                              jmp   $reverse_$2F3_ω
n162_call_prolog_β:     mov              r11, 88;                             jmp   $reverse_$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_β:
                                                                              jmp   n138_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .L$reverse_$2F3_α_222_50
                        mov              qword ptr [rsp + 1168], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1168];         jmp   rax
.L$reverse_$2F3_α_222_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1272]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
$reverse_$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1280]
                        add              rsp, 1296;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__concatenate$2F3:
                        sub              rsp, 1216
                        mov              qword ptr [rsp + 1192], rcx
                        mov              qword ptr [rsp + 1200], rdx
                        mov              qword ptr [rsp + 1208], rsp
                        mov              rdi, rsp
                        mov              esi, 1088
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
concatenate$2F3_α_body:
                        lea              rax, [rip + n243_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
#-----------------------------------------------------------------------------------------------------------------------
n223_call_prolog_α:     mov              r11, 89
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_260_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lconcatenate$2F3_α_260_101
.Lconcatenate$2F3_α_260_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lconcatenate$2F3_α_260_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lconcatenate$2F3_α_260_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lconcatenate$2F3_α_260_101
.Lconcatenate$2F3_α_260_100:
                        lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_260_101:
                        mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    concatenate$2F3_ω
                                                                              jmp   n224_var_ref_α
n223_call_prolog_β:     mov              r11, 89;                             jmp   concatenate$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n225_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n225_lit_integer_α:     mov              r11, 91
                        mov              qword ptr [rsp + 1056], 3            # result
                        mov              rax, qword ptr [rip + .Lconcatenate$2F3_α_263_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n226_lit_integer_α
.Lconcatenate$2F3_α_263_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n226_lit_integer_α:     mov              r11, 92
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lconcatenate$2F3_α_264_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n227_call_prolog_α
.Lconcatenate$2F3_α_264_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n227_call_prolog_α:     mov              r11, 93
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        lea              r8, [rsp + 992]
.Lconcatenate$2F3_α_265_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_265_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_265_111
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_265_112
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_265_110
.Lconcatenate$2F3_α_265_112:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_265_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_265_111
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_265_110
.Lconcatenate$2F3_α_265_113:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_265_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_265_111
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_265_111
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_265_110
.Lconcatenate$2F3_α_265_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_265_114
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_265_114
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_265_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_265_114
                                                                              jmp   .Lconcatenate$2F3_α_265_118
.Lconcatenate$2F3_α_265_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lconcatenate$2F3_α_265_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lconcatenate$2F3_α_265_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lconcatenate$2F3_α_265_115
                                                                              jmp   .Lconcatenate$2F3_α_265_114
.Lconcatenate$2F3_α_265_119:
                        cmp              al, 3;                               jne   .Lconcatenate$2F3_α_265_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lconcatenate$2F3_α_265_114
                                                                              jmp   .Lconcatenate$2F3_α_265_115
.Lconcatenate$2F3_α_265_120:
                        cmp              al, 2;                               jne   .Lconcatenate$2F3_α_265_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lconcatenate$2F3_α_265_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lconcatenate$2F3_α_265_114
                                                                              jmp   .Lconcatenate$2F3_α_265_115
.Lconcatenate$2F3_α_265_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lconcatenate$2F3_α_265_117
.Lconcatenate$2F3_α_265_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_265_117
.Lconcatenate$2F3_α_265_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_265_117:
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n245_var_ref_α
                                                                              jmp   n228_var_ref_α
n227_call_prolog_β:     mov              r11, 93;                             jmp   n245_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n229_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 952], rdx;          jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n231_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_prolog_α:     mov              r11, 97
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        lea              r8, [rsp + 896]
.Lconcatenate$2F3_α_272_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_272_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_61
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_272_62
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_272_60
.Lconcatenate$2F3_α_272_62:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_272_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_61
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_272_60
.Lconcatenate$2F3_α_272_63:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_61
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_272_61
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_272_60
.Lconcatenate$2F3_α_272_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_272_80
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_272_80
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_272_80
                                                                              jmp   .Lconcatenate$2F3_α_272_74
.Lconcatenate$2F3_α_272_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lconcatenate$2F3_α_272_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lconcatenate$2F3_α_272_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lconcatenate$2F3_α_272_73
                        lea              r9, [rsp + 912]
.Lconcatenate$2F3_α_272_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_272_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_65
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_272_66
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_272_64
.Lconcatenate$2F3_α_272_66:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_272_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_65
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_272_64
.Lconcatenate$2F3_α_272_67:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_65
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_272_65
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_272_64
.Lconcatenate$2F3_α_272_65:
                        lea              rcx, [rsp + 928]
.Lconcatenate$2F3_α_272_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_272_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_69
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_272_70
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_272_68
.Lconcatenate$2F3_α_272_70:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_272_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_69
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_272_68
.Lconcatenate$2F3_α_272_71:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_69
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_272_69
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_272_68
.Lconcatenate$2F3_α_272_69:
                        cmp              r9, rcx;                             je    .Lconcatenate$2F3_α_272_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_272_75
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_272_75
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_272_75
                                                                              jmp   .Lconcatenate$2F3_α_272_72
.Lconcatenate$2F3_α_272_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_272_76
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_272_76
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_272_76
                                                                              jmp   .Lconcatenate$2F3_α_272_72
.Lconcatenate$2F3_α_272_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lconcatenate$2F3_α_272_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_272_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lconcatenate$2F3_α_272_77
.Lconcatenate$2F3_α_272_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lconcatenate$2F3_α_272_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lconcatenate$2F3_α_272_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lconcatenate$2F3_α_272_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lconcatenate$2F3_α_272_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_272_72
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
                        lea              r9, [rsp + 912]
.Lconcatenate$2F3_α_272_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_272_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_82
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_272_83
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_272_81
.Lconcatenate$2F3_α_272_83:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_272_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_82
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_272_81
.Lconcatenate$2F3_α_272_84:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_82
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_272_82
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_272_81
.Lconcatenate$2F3_α_272_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_272_85
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_272_85
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_272_85
                                                                              jmp   .Lconcatenate$2F3_α_272_86
.Lconcatenate$2F3_α_272_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lconcatenate$2F3_α_272_87
.Lconcatenate$2F3_α_272_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lconcatenate$2F3_α_272_87:
                        lea              rcx, [rsp + 928]
.Lconcatenate$2F3_α_272_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_272_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_89
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_272_90
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_272_88
.Lconcatenate$2F3_α_272_90:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_272_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_89
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_272_88
.Lconcatenate$2F3_α_272_91:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_272_89
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_272_89
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_272_88
.Lconcatenate$2F3_α_272_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_272_92
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_272_92
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_272_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_272_92
                                                                              jmp   .Lconcatenate$2F3_α_272_93
.Lconcatenate$2F3_α_272_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lconcatenate$2F3_α_272_94
.Lconcatenate$2F3_α_272_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lconcatenate$2F3_α_272_94:
                        lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lconcatenate$2F3_α_272_77
.Lconcatenate$2F3_α_272_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_272_77
.Lconcatenate$2F3_α_272_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_272_77:
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n244_call_prolog_α
                                                                              jmp   n232_var_ref_α
n231_call_prolog_β:     mov              r11, 97;                             jmp   n244_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 832], rax
                        mov              qword ptr [rsp + 840], rdx;          jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 848], rax
                        mov              qword ptr [rsp + 856], rdx;          jmp   n234_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_prolog_α:     mov              r11, 100
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 808], rax
                        lea              rdi, [rsp + 800]
                        lea              r8, [rsp + 800]
.Lconcatenate$2F3_α_277_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_277_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_277_41
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_277_55
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_277_40
.Lconcatenate$2F3_α_277_55:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_277_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_277_41
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_277_40
.Lconcatenate$2F3_α_277_56:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_277_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_277_41
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_277_41
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_277_40
.Lconcatenate$2F3_α_277_41:
                        lea              r9, [rsp + 816]
.Lconcatenate$2F3_α_277_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_277_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_277_43
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_277_57
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_277_42
.Lconcatenate$2F3_α_277_57:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_277_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_277_43
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_277_42
.Lconcatenate$2F3_α_277_58:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_277_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_277_43
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_277_43
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_277_42
.Lconcatenate$2F3_α_277_43:
                        cmp              r8, r9;                              je    .Lconcatenate$2F3_α_277_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_277_44
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_277_44
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_277_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_277_44
                                                                              jmp   .Lconcatenate$2F3_α_277_45
.Lconcatenate$2F3_α_277_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_277_53
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_277_53
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_277_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_277_53
                                                                              jmp   .Lconcatenate$2F3_α_277_46
.Lconcatenate$2F3_α_277_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lconcatenate$2F3_α_277_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_277_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lconcatenate$2F3_α_277_51
.Lconcatenate$2F3_α_277_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_277_47
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_277_47
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_277_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_277_47
                                                                              jmp   .Lconcatenate$2F3_α_277_48
.Lconcatenate$2F3_α_277_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lconcatenate$2F3_α_277_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_277_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lconcatenate$2F3_α_277_51
.Lconcatenate$2F3_α_277_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lconcatenate$2F3_α_277_49
                        cmp              dl, 80;                              je    .Lconcatenate$2F3_α_277_53
                                                                              jmp   .Lconcatenate$2F3_α_277_52
.Lconcatenate$2F3_α_277_49:
                        cmp              dl, 80;                              je    .Lconcatenate$2F3_α_277_52
                        cmp              cl, 5;                               je    .Lconcatenate$2F3_α_277_53
                        cmp              dl, 5;                               je    .Lconcatenate$2F3_α_277_53
                        cmp              cl, 3;                               jne   .Lconcatenate$2F3_α_277_50
                        cmp              dl, 3;                               jne   .Lconcatenate$2F3_α_277_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lconcatenate$2F3_α_277_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lconcatenate$2F3_α_277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lconcatenate$2F3_α_277_51
                                                                              jmp   .Lconcatenate$2F3_α_277_52
.Lconcatenate$2F3_α_277_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lconcatenate$2F3_α_277_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lconcatenate$2F3_α_277_53
.Lconcatenate$2F3_α_277_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lconcatenate$2F3_α_277_54
.Lconcatenate$2F3_α_277_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_277_54
.Lconcatenate$2F3_α_277_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_277_54:
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n244_call_prolog_α
                                                                              jmp   n235_var_ref_α
n234_call_prolog_β:     mov              r11, 100;                            jmp   n244_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n236_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1152]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:         mov              r11, 103
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n238_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_prolog_α:     mov              r11, 104
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        lea              r8, [rsp + 704]
.Lconcatenate$2F3_α_284_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_284_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_61
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_284_62
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_284_60
.Lconcatenate$2F3_α_284_62:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_284_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_61
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_284_60
.Lconcatenate$2F3_α_284_63:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_61
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_284_61
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_284_60
.Lconcatenate$2F3_α_284_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_284_80
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_284_80
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_284_80
                                                                              jmp   .Lconcatenate$2F3_α_284_74
.Lconcatenate$2F3_α_284_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lconcatenate$2F3_α_284_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lconcatenate$2F3_α_284_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lconcatenate$2F3_α_284_73
                        lea              r9, [rsp + 720]
.Lconcatenate$2F3_α_284_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_284_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_65
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_284_66
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_284_64
.Lconcatenate$2F3_α_284_66:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_284_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_65
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_284_64
.Lconcatenate$2F3_α_284_67:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_65
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_284_65
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_284_64
.Lconcatenate$2F3_α_284_65:
                        lea              rcx, [rsp + 736]
.Lconcatenate$2F3_α_284_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_284_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_69
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_284_70
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_284_68
.Lconcatenate$2F3_α_284_70:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_284_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_69
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_284_68
.Lconcatenate$2F3_α_284_71:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_69
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_284_69
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_284_68
.Lconcatenate$2F3_α_284_69:
                        cmp              r9, rcx;                             je    .Lconcatenate$2F3_α_284_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_284_75
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_284_75
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_284_75
                                                                              jmp   .Lconcatenate$2F3_α_284_72
.Lconcatenate$2F3_α_284_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_284_76
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_284_76
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_284_76
                                                                              jmp   .Lconcatenate$2F3_α_284_72
.Lconcatenate$2F3_α_284_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lconcatenate$2F3_α_284_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_284_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lconcatenate$2F3_α_284_77
.Lconcatenate$2F3_α_284_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lconcatenate$2F3_α_284_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lconcatenate$2F3_α_284_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lconcatenate$2F3_α_284_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lconcatenate$2F3_α_284_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_284_72
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
                        lea              r9, [rsp + 720]
.Lconcatenate$2F3_α_284_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_284_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_82
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_284_83
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_284_81
.Lconcatenate$2F3_α_284_83:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_284_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_82
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_284_81
.Lconcatenate$2F3_α_284_84:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_82
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_284_82
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_284_81
.Lconcatenate$2F3_α_284_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_284_85
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_284_85
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_284_85
                                                                              jmp   .Lconcatenate$2F3_α_284_86
.Lconcatenate$2F3_α_284_85:
                        mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lconcatenate$2F3_α_284_87
.Lconcatenate$2F3_α_284_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lconcatenate$2F3_α_284_87:
                        lea              rcx, [rsp + 736]
.Lconcatenate$2F3_α_284_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_284_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_89
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_284_90
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_284_88
.Lconcatenate$2F3_α_284_90:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_284_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_89
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_284_88
.Lconcatenate$2F3_α_284_91:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_284_89
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_284_89
                        mov              rcx, rax;                            jmp   .Lconcatenate$2F3_α_284_88
.Lconcatenate$2F3_α_284_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_284_92
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_284_92
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_284_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lconcatenate$2F3_α_284_92
                                                                              jmp   .Lconcatenate$2F3_α_284_93
.Lconcatenate$2F3_α_284_92:
                        mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lconcatenate$2F3_α_284_94
.Lconcatenate$2F3_α_284_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lconcatenate$2F3_α_284_94:
                        lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lconcatenate$2F3_α_284_77
.Lconcatenate$2F3_α_284_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_284_77
.Lconcatenate$2F3_α_284_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_284_77:
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n244_call_prolog_α
                                                                              jmp   n239_var_ref_α
n238_call_prolog_β:     mov              r11, 104;                            jmp   n244_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n239_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1120]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n240_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n240_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1136]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n242_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n242_call_proc_staged_α:
                        mov              r11, 108
                        mov              qword ptr [rsp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lconcatenate$2F3_α_292_200
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lconcatenate$2F3_α_292_201
.Lconcatenate$2F3_α_292_200:
                        mov              edi, 0
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
.Lconcatenate$2F3_α_292_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lconcatenate$2F3_α_292_202
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lconcatenate$2F3_α_292_203
.Lconcatenate$2F3_α_292_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_292_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lconcatenate$2F3_α_292_204
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lconcatenate$2F3_α_292_205
.Lconcatenate$2F3_α_292_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_292_205:
                        lea              rax, [rip + .Lconcatenate$2F3_α_292_7]
                        push             rax
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_292_1
                        lea              rcx, [rip + .Lconcatenate$2F3_α_292_4]
                        push             rcx
                        lea              rcx, [rip + .Lconcatenate$2F3_α_292_3]
                        push             rcx
                        lea              rdx, [rip + .Lconcatenate$2F3_α_292_4]
                                                                              jmp   rax
.Lconcatenate$2F3_α_292_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 600], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lconcatenate$2F3_α_292_5
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lconcatenate$2F3_α_292_2
.Lconcatenate$2F3_α_292_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lconcatenate$2F3_α_292_2
.Lconcatenate$2F3_α_292_4:
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lconcatenate$2F3_α_292_6
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lconcatenate$2F3_α_292_2
.Lconcatenate$2F3_α_292_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lconcatenate$2F3_α_292_2
.Lconcatenate$2F3_α_292_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_292_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lconcatenate$2F3_α_292_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 528]
                        mov              rdx, qword ptr [rsp + 536]
.Lconcatenate$2F3_α_292_29:
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n244_call_prolog_α
                                                                              jmp   n243_suspend_α
n242_call_proc_staged_β:
                        mov              r11, 108
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 592], 0
                        lea              rdi, [rsp + 608]
                        lea              rsi, [rsp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n244_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              ecx, 64
                        mov              r8d, 1088
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
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
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n244_call_prolog_α
                        lea              r8, [rip + .Lconcatenate$2F3_α_292_7]
                        push             r8
                        lea              rcx, [rip + .Lconcatenate$2F3_α_292_4]
                        push             rcx
                        lea              rcx, [rip + .Lconcatenate$2F3_α_292_3]
                        push             rcx
                        lea              rdx, [rip + .Lconcatenate$2F3_α_292_4]
                                                                              jmp   rax
.Lconcatenate$2F3_α_292_7:
                        add              rsp, 8
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n244_call_prolog_α
                                                                              jmp   n243_suspend_α
.Lconcatenate$2F3_β_292_0:
                        .quad            .Lconcatenate$2F3_β_292_0_s
.Lconcatenate$2F3_β_292_0_s:
                        .string          "concatenate/3"
#-----------------------------------------------------------------------------------------------------------------------
n243_suspend_α:         mov              r11, 109
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_294_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lconcatenate$2F3_α_294_61:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n243_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n243_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   concatenate$2F3_γ
n243_suspend_β:         mov              r11, 109;                            jmp   n242_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n244_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    concatenate$2F3_ω
                                                                              jmp   n245_var_ref_α
n244_call_prolog_β:     mov              r11, 110;                            jmp   concatenate$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n245_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n246_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_integer_α:     mov              r11, 112
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lconcatenate$2F3_α_298_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n247_lit_string_α
.Lconcatenate$2F3_α_298_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              r11, 113
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 2
                        mov              rax, qword ptr [rip + .Lconcatenate$2F3_α_299_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n248_call_prolog_α
.Lconcatenate$2F3_α_299_0:
                        .quad            .Lconcatenate$2F3_α_299_0_s
.Lconcatenate$2F3_α_299_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n248_call_prolog_α:     mov              r11, 114
                        mov              rax, qword ptr [rsp + 480]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 488]
                        mov              qword ptr [rsp + 440], rax
                        mov              rax, qword ptr [rsp + 464]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 472]
                        mov              qword ptr [rsp + 424], rax
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 400], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 408], rax
                        lea              rdi, [rsp + 400]
                        lea              r8, [rsp + 400]
.Lconcatenate$2F3_α_300_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_300_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_300_111
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_300_112
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_300_110
.Lconcatenate$2F3_α_300_112:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_300_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_300_111
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_300_110
.Lconcatenate$2F3_α_300_113:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_300_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_300_111
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_300_111
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_300_110
.Lconcatenate$2F3_α_300_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_300_114
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_300_114
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_300_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_300_114
                                                                              jmp   .Lconcatenate$2F3_α_300_118
.Lconcatenate$2F3_α_300_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lconcatenate$2F3_α_300_115
                        cmp              al, 3;                               je    .Lconcatenate$2F3_α_300_114
                        cmp              al, 2;                               jne   .Lconcatenate$2F3_α_300_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lconcatenate$2F3_α_300_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lconcatenate$2F3_α_300_114
                                                                              jmp   .Lconcatenate$2F3_α_300_116
.Lconcatenate$2F3_α_300_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lconcatenate$2F3_α_300_117
.Lconcatenate$2F3_α_300_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_300_117
.Lconcatenate$2F3_α_300_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_300_117:
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n249_var_ref_α
n248_call_prolog_β:     mov              r11, 114;                            jmp   n259_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n250_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 2
                        mov              rax, qword ptr [rip + .Lconcatenate$2F3_α_303_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n251_call_prolog_α
.Lconcatenate$2F3_α_303_0:
                        .quad            .Lconcatenate$2F3_α_303_0_s
.Lconcatenate$2F3_α_303_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n251_call_prolog_α:     mov              r11, 117
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              rsi, qword ptr [rip + .Lconcatenate$2F3_α_304_2]
                                                                              jmp   .Lconcatenate$2F3_α_304_3
.Lconcatenate$2F3_α_304_2:
                        .quad            .Lconcatenate$2F3_α_304_2_s
.Lconcatenate$2F3_α_304_2_s:
                        .string          "[]"
.Lconcatenate$2F3_α_304_3:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n252_var_ref_α
n251_call_prolog_β:     mov              r11, 117;                            jmp   n259_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n253_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n254_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_prolog_α:     mov              r11, 120
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 240], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 248], rax
                        lea              rdi, [rsp + 240]
                        lea              r8, [rsp + 240]
.Lconcatenate$2F3_α_309_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_309_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_309_41
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_309_55
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_309_40
.Lconcatenate$2F3_α_309_55:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_309_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_309_41
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_309_40
.Lconcatenate$2F3_α_309_56:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_309_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_309_41
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_309_41
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_309_40
.Lconcatenate$2F3_α_309_41:
                        lea              r9, [rsp + 256]
.Lconcatenate$2F3_α_309_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_309_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_309_43
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_309_57
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_309_42
.Lconcatenate$2F3_α_309_57:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_309_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_309_43
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_309_42
.Lconcatenate$2F3_α_309_58:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_309_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_309_43
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_309_43
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_309_42
.Lconcatenate$2F3_α_309_43:
                        cmp              r8, r9;                              je    .Lconcatenate$2F3_α_309_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_309_44
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_309_44
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_309_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_309_44
                                                                              jmp   .Lconcatenate$2F3_α_309_45
.Lconcatenate$2F3_α_309_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_309_53
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_309_53
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_309_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_309_53
                                                                              jmp   .Lconcatenate$2F3_α_309_46
.Lconcatenate$2F3_α_309_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lconcatenate$2F3_α_309_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_309_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lconcatenate$2F3_α_309_51
.Lconcatenate$2F3_α_309_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_309_47
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_309_47
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_309_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_309_47
                                                                              jmp   .Lconcatenate$2F3_α_309_48
.Lconcatenate$2F3_α_309_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lconcatenate$2F3_α_309_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_309_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lconcatenate$2F3_α_309_51
.Lconcatenate$2F3_α_309_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lconcatenate$2F3_α_309_49
                        cmp              dl, 80;                              je    .Lconcatenate$2F3_α_309_53
                                                                              jmp   .Lconcatenate$2F3_α_309_52
.Lconcatenate$2F3_α_309_49:
                        cmp              dl, 80;                              je    .Lconcatenate$2F3_α_309_52
                        cmp              cl, 5;                               je    .Lconcatenate$2F3_α_309_53
                        cmp              dl, 5;                               je    .Lconcatenate$2F3_α_309_53
                        cmp              cl, 3;                               jne   .Lconcatenate$2F3_α_309_50
                        cmp              dl, 3;                               jne   .Lconcatenate$2F3_α_309_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lconcatenate$2F3_α_309_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lconcatenate$2F3_α_309_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lconcatenate$2F3_α_309_51
                                                                              jmp   .Lconcatenate$2F3_α_309_52
.Lconcatenate$2F3_α_309_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lconcatenate$2F3_α_309_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lconcatenate$2F3_α_309_53
.Lconcatenate$2F3_α_309_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lconcatenate$2F3_α_309_54
.Lconcatenate$2F3_α_309_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_309_54
.Lconcatenate$2F3_α_309_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_309_54:
                        mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n255_var_ref_α
n254_call_prolog_β:     mov              r11, 120;                            jmp   n259_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1104]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n257_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n257_call_prolog_α:     mov              r11, 123
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        mov              rax, qword ptr [rsp + 192]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 200]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        lea              r8, [rsp + 160]
.Lconcatenate$2F3_α_314_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_314_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_314_41
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_314_55
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_314_40
.Lconcatenate$2F3_α_314_55:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_314_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_314_41
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_314_40
.Lconcatenate$2F3_α_314_56:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_314_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_314_41
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_314_41
                        mov              r8, rax;                             jmp   .Lconcatenate$2F3_α_314_40
.Lconcatenate$2F3_α_314_41:
                        lea              r9, [rsp + 176]
.Lconcatenate$2F3_α_314_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lconcatenate$2F3_α_314_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_314_43
                        cmp              esi, 1;                              jne   .Lconcatenate$2F3_α_314_57
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_314_42
.Lconcatenate$2F3_α_314_57:
                        cmp              esi, 2;                              jne   .Lconcatenate$2F3_α_314_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_314_43
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_314_42
.Lconcatenate$2F3_α_314_58:
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_314_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_314_43
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_314_43
                        mov              r9, rax;                             jmp   .Lconcatenate$2F3_α_314_42
.Lconcatenate$2F3_α_314_43:
                        cmp              r8, r9;                              je    .Lconcatenate$2F3_α_314_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_314_44
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_314_44
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_314_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lconcatenate$2F3_α_314_44
                                                                              jmp   .Lconcatenate$2F3_α_314_45
.Lconcatenate$2F3_α_314_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_314_53
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_314_53
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_314_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_314_53
                                                                              jmp   .Lconcatenate$2F3_α_314_46
.Lconcatenate$2F3_α_314_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lconcatenate$2F3_α_314_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_314_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lconcatenate$2F3_α_314_51
.Lconcatenate$2F3_α_314_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lconcatenate$2F3_α_314_47
                        cmp              al, 104;                             je    .Lconcatenate$2F3_α_314_47
                        cmp              al, 72;                              jne   .Lconcatenate$2F3_α_314_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lconcatenate$2F3_α_314_47
                                                                              jmp   .Lconcatenate$2F3_α_314_48
.Lconcatenate$2F3_α_314_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lconcatenate$2F3_α_314_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lconcatenate$2F3_α_314_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lconcatenate$2F3_α_314_51
.Lconcatenate$2F3_α_314_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lconcatenate$2F3_α_314_49
                        cmp              dl, 80;                              je    .Lconcatenate$2F3_α_314_53
                                                                              jmp   .Lconcatenate$2F3_α_314_52
.Lconcatenate$2F3_α_314_49:
                        cmp              dl, 80;                              je    .Lconcatenate$2F3_α_314_52
                        cmp              cl, 5;                               je    .Lconcatenate$2F3_α_314_53
                        cmp              dl, 5;                               je    .Lconcatenate$2F3_α_314_53
                        cmp              cl, 3;                               jne   .Lconcatenate$2F3_α_314_50
                        cmp              dl, 3;                               jne   .Lconcatenate$2F3_α_314_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lconcatenate$2F3_α_314_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lconcatenate$2F3_α_314_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lconcatenate$2F3_α_314_51
                                                                              jmp   .Lconcatenate$2F3_α_314_52
.Lconcatenate$2F3_α_314_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lconcatenate$2F3_α_314_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lconcatenate$2F3_α_314_53
.Lconcatenate$2F3_α_314_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lconcatenate$2F3_α_314_54
.Lconcatenate$2F3_α_314_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lconcatenate$2F3_α_314_54
.Lconcatenate$2F3_α_314_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lconcatenate$2F3_α_314_54:
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n259_call_prolog_α
                                                                              jmp   n258_suspend_α
n257_call_prolog_β:     mov              r11, 123;                            jmp   n259_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n258_suspend_α:         mov              r11, 124
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lconcatenate$2F3_α_316_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lconcatenate$2F3_α_316_61:
                        mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n258_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n258_suspend_β]
                        mov              qword ptr [rsp + 1088], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   concatenate$2F3_γ
n258_suspend_β:         mov              r11, 124;                            jmp   n259_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n259_call_prolog_α:     mov              r11, 125
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
                        cmp              al, 104;                             je    concatenate$2F3_ω
                                                                              jmp   concatenate$2F3_ω
n259_call_prolog_β:     mov              r11, 125;                            jmp   concatenate$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_β:
                                                                              jmp   n243_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lconcatenate$2F3_α_317_50
                        mov              qword ptr [rsp + 1088], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1088];         jmp   rax
.Lconcatenate$2F3_α_317_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1192]
                        add              rsp, 1216;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
concatenate$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1200]
                        add              rsp, 1216;                           jmp   rcx
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
                        sub              rsp, 3728
                        mov              qword ptr [rsp + 3704], rcx
                        mov              qword ptr [rsp + 3712], rdx
                        mov              qword ptr [rsp + 3720], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 3696
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
n318_call_prolog_α:     mov              r11, 126
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lmain_α_419_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lmain_α_419_101
.Lmain_α_419_102:       lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lmain_α_419_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lmain_α_419_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lmain_α_419_101
.Lmain_α_419_100:       lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_419_101:       mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n319_lit_string_α
n318_call_prolog_β:     mov              r11, 126;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 3632], 2            # result
                        mov              dword ptr [rsp + 3636], 1
                        mov              rax, qword ptr [rip + .Lmain_α_420_0]
                        mov              qword ptr [rsp + 3640], rax;         jmp   n320_lit_integer_α
.Lmain_α_420_0:         .quad            .Lmain_α_420_0_s
.Lmain_α_420_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 3536], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_421_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n321_lit_string_α
.Lmain_α_421_0:         .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 3520], 2            # result
                        mov              dword ptr [rsp + 3524], 1
                        mov              rax, qword ptr [rip + .Lmain_α_422_0]
                        mov              qword ptr [rsp + 3528], rax;         jmp   n322_lit_integer_α
.Lmain_α_422_0:         .quad            .Lmain_α_422_0_s
.Lmain_α_422_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_423_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n323_lit_string_α
.Lmain_α_423_0:         .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 3408], 2            # result
                        mov              dword ptr [rsp + 3412], 1
                        mov              rax, qword ptr [rip + .Lmain_α_424_0]
                        mov              qword ptr [rsp + 3416], rax;         jmp   n324_lit_integer_α
.Lmain_α_424_0:         .quad            .Lmain_α_424_0_s
.Lmain_α_424_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_425_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n325_lit_string_α
.Lmain_α_425_0:         .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rsp + 3296], 2            # result
                        mov              dword ptr [rsp + 3300], 1
                        mov              rax, qword ptr [rip + .Lmain_α_426_0]
                        mov              qword ptr [rsp + 3304], rax;         jmp   n326_lit_integer_α
.Lmain_α_426_0:         .quad            .Lmain_α_426_0_s
.Lmain_α_426_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_427_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n327_lit_string_α
.Lmain_α_427_0:         .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 3184], 2            # result
                        mov              dword ptr [rsp + 3188], 1
                        mov              rax, qword ptr [rip + .Lmain_α_428_0]
                        mov              qword ptr [rsp + 3192], rax;         jmp   n328_lit_integer_α
.Lmain_α_428_0:         .quad            .Lmain_α_428_0_s
.Lmain_α_428_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rsp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_429_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n329_lit_string_α
.Lmain_α_429_0:         .quad            5
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 3072], 2            # result
                        mov              dword ptr [rsp + 3076], 1
                        mov              rax, qword ptr [rip + .Lmain_α_430_0]
                        mov              qword ptr [rsp + 3080], rax;         jmp   n330_lit_integer_α
.Lmain_α_430_0:         .quad            .Lmain_α_430_0_s
.Lmain_α_430_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 2976], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_431_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n331_lit_string_α
.Lmain_α_431_0:         .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 2960], 2            # result
                        mov              dword ptr [rsp + 2964], 1
                        mov              rax, qword ptr [rip + .Lmain_α_432_0]
                        mov              qword ptr [rsp + 2968], rax;         jmp   n332_lit_integer_α
.Lmain_α_432_0:         .quad            .Lmain_α_432_0_s
.Lmain_α_432_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 2864], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_433_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n333_lit_string_α
.Lmain_α_433_0:         .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rsp + 2848], 2            # result
                        mov              dword ptr [rsp + 2852], 1
                        mov              rax, qword ptr [rip + .Lmain_α_434_0]
                        mov              qword ptr [rsp + 2856], rax;         jmp   n334_lit_integer_α
.Lmain_α_434_0:         .quad            .Lmain_α_434_0_s
.Lmain_α_434_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_435_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n335_lit_string_α
.Lmain_α_435_0:         .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 2736], 2            # result
                        mov              dword ptr [rsp + 2740], 1
                        mov              rax, qword ptr [rip + .Lmain_α_436_0]
                        mov              qword ptr [rsp + 2744], rax;         jmp   n336_lit_integer_α
.Lmain_α_436_0:         .quad            .Lmain_α_436_0_s
.Lmain_α_436_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 144
                        mov              qword ptr [rsp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_437_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n337_lit_string_α
.Lmain_α_437_0:         .quad            9
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 2624], 2            # result
                        mov              dword ptr [rsp + 2628], 1
                        mov              rax, qword ptr [rip + .Lmain_α_438_0]
                        mov              qword ptr [rsp + 2632], rax;         jmp   n338_lit_integer_α
.Lmain_α_438_0:         .quad            .Lmain_α_438_0_s
.Lmain_α_438_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rsp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_439_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n339_lit_string_α
.Lmain_α_439_0:         .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 2512], 2            # result
                        mov              dword ptr [rsp + 2516], 1
                        mov              rax, qword ptr [rip + .Lmain_α_440_0]
                        mov              qword ptr [rsp + 2520], rax;         jmp   n340_lit_integer_α
.Lmain_α_440_0:         .quad            .Lmain_α_440_0_s
.Lmain_α_440_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     mov              r11, 148
                        mov              qword ptr [rsp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_441_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n341_lit_string_α
.Lmain_α_441_0:         .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 2400], 2            # result
                        mov              dword ptr [rsp + 2404], 1
                        mov              rax, qword ptr [rip + .Lmain_α_442_0]
                        mov              qword ptr [rsp + 2408], rax;         jmp   n342_lit_integer_α
.Lmain_α_442_0:         .quad            .Lmain_α_442_0_s
.Lmain_α_442_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_443_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n343_lit_string_α
.Lmain_α_443_0:         .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 2288], 2            # result
                        mov              dword ptr [rsp + 2292], 1
                        mov              rax, qword ptr [rip + .Lmain_α_444_0]
                        mov              qword ptr [rsp + 2296], rax;         jmp   n344_lit_integer_α
.Lmain_α_444_0:         .quad            .Lmain_α_444_0_s
.Lmain_α_444_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:     mov              r11, 152
                        mov              qword ptr [rsp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_445_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n345_lit_string_α
.Lmain_α_445_0:         .quad            13
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 2176], 2            # result
                        mov              dword ptr [rsp + 2180], 1
                        mov              rax, qword ptr [rip + .Lmain_α_446_0]
                        mov              qword ptr [rsp + 2184], rax;         jmp   n346_lit_integer_α
.Lmain_α_446_0:         .quad            .Lmain_α_446_0_s
.Lmain_α_446_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:     mov              r11, 154
                        mov              qword ptr [rsp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_447_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n347_lit_string_α
.Lmain_α_447_0:         .quad            14
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 2064], 2            # result
                        mov              dword ptr [rsp + 2068], 1
                        mov              rax, qword ptr [rip + .Lmain_α_448_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n348_lit_integer_α
.Lmain_α_448_0:         .quad            .Lmain_α_448_0_s
.Lmain_α_448_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_449_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n349_lit_string_α
.Lmain_α_449_0:         .quad            15
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 1952], 2            # result
                        mov              dword ptr [rsp + 1956], 1
                        mov              rax, qword ptr [rip + .Lmain_α_450_0]
                        mov              qword ptr [rsp + 1960], rax;         jmp   n350_lit_integer_α
.Lmain_α_450_0:         .quad            .Lmain_α_450_0_s
.Lmain_α_450_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rsp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_451_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n351_lit_string_α
.Lmain_α_451_0:         .quad            16
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 1840], 2            # result
                        mov              dword ptr [rsp + 1844], 1
                        mov              rax, qword ptr [rip + .Lmain_α_452_0]
                        mov              qword ptr [rsp + 1848], rax;         jmp   n352_lit_integer_α
.Lmain_α_452_0:         .quad            .Lmain_α_452_0_s
.Lmain_α_452_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rsp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_453_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n353_lit_string_α
.Lmain_α_453_0:         .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 1728], 2            # result
                        mov              dword ptr [rsp + 1732], 1
                        mov              rax, qword ptr [rip + .Lmain_α_454_0]
                        mov              qword ptr [rsp + 1736], rax;         jmp   n354_lit_integer_α
.Lmain_α_454_0:         .quad            .Lmain_α_454_0_s
.Lmain_α_454_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_455_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n355_lit_string_α
.Lmain_α_455_0:         .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 1616], 2            # result
                        mov              dword ptr [rsp + 1620], 1
                        mov              rax, qword ptr [rip + .Lmain_α_456_0]
                        mov              qword ptr [rsp + 1624], rax;         jmp   n356_lit_integer_α
.Lmain_α_456_0:         .quad            .Lmain_α_456_0_s
.Lmain_α_456_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_457_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n357_lit_string_α
.Lmain_α_457_0:         .quad            19
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 1504], 2            # result
                        mov              dword ptr [rsp + 1508], 1
                        mov              rax, qword ptr [rip + .Lmain_α_458_0]
                        mov              qword ptr [rsp + 1512], rax;         jmp   n358_lit_integer_α
.Lmain_α_458_0:         .quad            .Lmain_α_458_0_s
.Lmain_α_458_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_459_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n359_lit_string_α
.Lmain_α_459_0:         .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 1392], 2            # result
                        mov              dword ptr [rsp + 1396], 1
                        mov              rax, qword ptr [rip + .Lmain_α_460_0]
                        mov              qword ptr [rsp + 1400], rax;         jmp   n360_lit_integer_α
.Lmain_α_460_0:         .quad            .Lmain_α_460_0_s
.Lmain_α_460_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_461_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n361_lit_string_α
.Lmain_α_461_0:         .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 1280], 2            # result
                        mov              dword ptr [rsp + 1284], 1
                        mov              rax, qword ptr [rip + .Lmain_α_462_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n362_lit_integer_α
.Lmain_α_462_0:         .quad            .Lmain_α_462_0_s
.Lmain_α_462_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rsp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_463_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n363_lit_string_α
.Lmain_α_463_0:         .quad            22
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 1168], 2            # result
                        mov              dword ptr [rsp + 1172], 1
                        mov              rax, qword ptr [rip + .Lmain_α_464_0]
                        mov              qword ptr [rsp + 1176], rax;         jmp   n364_lit_integer_α
.Lmain_α_464_0:         .quad            .Lmain_α_464_0_s
.Lmain_α_464_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_465_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n365_lit_string_α
.Lmain_α_465_0:         .quad            23
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 1056], 2            # result
                        mov              dword ptr [rsp + 1060], 1
                        mov              rax, qword ptr [rip + .Lmain_α_466_0]
                        mov              qword ptr [rsp + 1064], rax;         jmp   n366_lit_integer_α
.Lmain_α_466_0:         .quad            .Lmain_α_466_0_s
.Lmain_α_466_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_467_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n367_lit_string_α
.Lmain_α_467_0:         .quad            24
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 944], 2             # result
                        mov              dword ptr [rsp + 948], 1
                        mov              rax, qword ptr [rip + .Lmain_α_468_0]
                        mov              qword ptr [rsp + 952], rax;          jmp   n368_lit_integer_α
.Lmain_α_468_0:         .quad            .Lmain_α_468_0_s
.Lmain_α_468_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              r11, 176
                        mov              qword ptr [rsp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_469_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n369_lit_string_α
.Lmain_α_469_0:         .quad            25
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 832], 2             # result
                        mov              dword ptr [rsp + 836], 1
                        mov              rax, qword ptr [rip + .Lmain_α_470_0]
                        mov              qword ptr [rsp + 840], rax;          jmp   n370_lit_integer_α
.Lmain_α_470_0:         .quad            .Lmain_α_470_0_s
.Lmain_α_470_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:     mov              r11, 178
                        mov              qword ptr [rsp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_471_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n371_lit_string_α
.Lmain_α_471_0:         .quad            26
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 720], 2             # result
                        mov              dword ptr [rsp + 724], 1
                        mov              rax, qword ptr [rip + .Lmain_α_472_0]
                        mov              qword ptr [rsp + 728], rax;          jmp   n372_lit_integer_α
.Lmain_α_472_0:         .quad            .Lmain_α_472_0_s
.Lmain_α_472_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:     mov              r11, 180
                        mov              qword ptr [rsp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_473_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n373_lit_string_α
.Lmain_α_473_0:         .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 608], 2             # result
                        mov              dword ptr [rsp + 612], 1
                        mov              rax, qword ptr [rip + .Lmain_α_474_0]
                        mov              qword ptr [rsp + 616], rax;          jmp   n374_lit_integer_α
.Lmain_α_474_0:         .quad            .Lmain_α_474_0_s
.Lmain_α_474_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     mov              r11, 182
                        mov              qword ptr [rsp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_475_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n375_lit_string_α
.Lmain_α_475_0:         .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 496], 2             # result
                        mov              dword ptr [rsp + 500], 1
                        mov              rax, qword ptr [rip + .Lmain_α_476_0]
                        mov              qword ptr [rsp + 504], rax;          jmp   n376_lit_integer_α
.Lmain_α_476_0:         .quad            .Lmain_α_476_0_s
.Lmain_α_476_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rsp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_477_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n377_lit_string_α
.Lmain_α_477_0:         .quad            29
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rsp + 384], 2             # result
                        mov              dword ptr [rsp + 388], 1
                        mov              rax, qword ptr [rip + .Lmain_α_478_0]
                        mov              qword ptr [rsp + 392], rax;          jmp   n378_lit_integer_α
.Lmain_α_478_0:         .quad            .Lmain_α_478_0_s
.Lmain_α_478_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_479_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n379_lit_string_α
.Lmain_α_479_0:         .quad            30
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 272], 2             # result
                        mov              dword ptr [rsp + 276], 2
                        mov              rax, qword ptr [rip + .Lmain_α_480_0]
                        mov              qword ptr [rsp + 280], rax;          jmp   n380_call_prolog_α
.Lmain_α_480_0:         .quad            .Lmain_α_480_0_s
.Lmain_α_480_0_s:       .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n380_call_prolog_α:     mov              r11, 188
                        mov              rax, qword ptr [rsp + 272]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 280]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 344], rax
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n381_call_prolog_α
n380_call_prolog_β:     mov              r11, 188;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n381_call_prolog_α:     mov              r11, 189
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 456], rax
                        mov              rax, qword ptr [rsp + 496]
                        mov              qword ptr [rsp + 432], rax
                        mov              rax, qword ptr [rsp + 504]
                        mov              qword ptr [rsp + 440], rax
                        lea              rdi, [rsp + 432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 416], rax
                        mov              qword ptr [rsp + 424], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n382_call_prolog_α
n381_call_prolog_β:     mov              r11, 189;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n382_call_prolog_α:     mov              r11, 190
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 568], rax
                        mov              rax, qword ptr [rsp + 608]
                        mov              qword ptr [rsp + 544], rax
                        mov              rax, qword ptr [rsp + 616]
                        mov              qword ptr [rsp + 552], rax
                        lea              rdi, [rsp + 544]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n383_call_prolog_α
n382_call_prolog_β:     mov              r11, 190;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n383_call_prolog_α:     mov              r11, 191
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 680], rax
                        mov              rax, qword ptr [rsp + 720]
                        mov              qword ptr [rsp + 656], rax
                        mov              rax, qword ptr [rsp + 728]
                        mov              qword ptr [rsp + 664], rax
                        lea              rdi, [rsp + 656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n384_call_prolog_α
n383_call_prolog_β:     mov              r11, 191;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n384_call_prolog_α:     mov              r11, 192
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 792], rax
                        mov              rax, qword ptr [rsp + 832]
                        mov              qword ptr [rsp + 768], rax
                        mov              rax, qword ptr [rsp + 840]
                        mov              qword ptr [rsp + 776], rax
                        lea              rdi, [rsp + 768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n385_call_prolog_α
n384_call_prolog_β:     mov              r11, 192;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n385_call_prolog_α:     mov              r11, 193
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 904], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 880], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n386_call_prolog_α
n385_call_prolog_β:     mov              r11, 193;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n386_call_prolog_α:     mov              r11, 194
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 1016], rax
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 992], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1000], rax
                        lea              rdi, [rsp + 992]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n387_call_prolog_α
n386_call_prolog_β:     mov              r11, 194;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n387_call_prolog_α:     mov              r11, 195
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n388_call_prolog_α
n387_call_prolog_β:     mov              r11, 195;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n388_call_prolog_α:     mov              r11, 196
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n389_call_prolog_α
n388_call_prolog_β:     mov              r11, 196;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n389_call_prolog_α:     mov              r11, 197
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1352], rax
                        mov              rax, qword ptr [rsp + 1392]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1400]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1312], rax
                        mov              qword ptr [rsp + 1320], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n390_call_prolog_α
n389_call_prolog_β:     mov              r11, 197;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n390_call_prolog_α:     mov              r11, 198
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1464], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1440], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1448], rax
                        lea              rdi, [rsp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n391_call_prolog_α
n390_call_prolog_β:     mov              r11, 198;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n391_call_prolog_α:     mov              r11, 199
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1616]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1624]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n392_call_prolog_α
n391_call_prolog_β:     mov              r11, 199;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n392_call_prolog_α:     mov              r11, 200
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1688], rax
                        mov              rax, qword ptr [rsp + 1728]
                        mov              qword ptr [rsp + 1664], rax
                        mov              rax, qword ptr [rsp + 1736]
                        mov              qword ptr [rsp + 1672], rax
                        lea              rdi, [rsp + 1664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n393_call_prolog_α
n392_call_prolog_β:     mov              r11, 200;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n393_call_prolog_α:     mov              r11, 201
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1800], rax
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1776], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1784], rax
                        lea              rdi, [rsp + 1776]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n394_call_prolog_α
n393_call_prolog_β:     mov              r11, 201;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n394_call_prolog_α:     mov              r11, 202
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n395_call_prolog_α
n394_call_prolog_β:     mov              r11, 202;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n395_call_prolog_α:     mov              r11, 203
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2008], rax
                        lea              rdi, [rsp + 2000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1984], rax
                        mov              qword ptr [rsp + 1992], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n396_call_prolog_α
n395_call_prolog_β:     mov              r11, 203;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n396_call_prolog_α:     mov              r11, 204
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2136], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2112], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2120], rax
                        lea              rdi, [rsp + 2112]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n397_call_prolog_α
n396_call_prolog_β:     mov              r11, 204;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n397_call_prolog_α:     mov              r11, 205
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2248], rax
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 2224], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 2232], rax
                        lea              rdi, [rsp + 2224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2208], rax
                        mov              qword ptr [rsp + 2216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n398_call_prolog_α
n397_call_prolog_β:     mov              r11, 205;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n398_call_prolog_α:     mov              r11, 206
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2360], rax
                        mov              rax, qword ptr [rsp + 2400]
                        mov              qword ptr [rsp + 2336], rax
                        mov              rax, qword ptr [rsp + 2408]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2320], rax
                        mov              qword ptr [rsp + 2328], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n399_call_prolog_α
n398_call_prolog_β:     mov              r11, 206;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n399_call_prolog_α:     mov              r11, 207
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2472], rax
                        mov              rax, qword ptr [rsp + 2512]
                        mov              qword ptr [rsp + 2448], rax
                        mov              rax, qword ptr [rsp + 2520]
                        mov              qword ptr [rsp + 2456], rax
                        lea              rdi, [rsp + 2448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2432], rax
                        mov              qword ptr [rsp + 2440], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n400_call_prolog_α
n399_call_prolog_β:     mov              r11, 207;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n400_call_prolog_α:     mov              r11, 208
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2584], rax
                        mov              rax, qword ptr [rsp + 2624]
                        mov              qword ptr [rsp + 2560], rax
                        mov              rax, qword ptr [rsp + 2632]
                        mov              qword ptr [rsp + 2568], rax
                        lea              rdi, [rsp + 2560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2544], rax
                        mov              qword ptr [rsp + 2552], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n401_call_prolog_α
n400_call_prolog_β:     mov              r11, 208;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n401_call_prolog_α:     mov              r11, 209
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2696], rax
                        mov              rax, qword ptr [rsp + 2736]
                        mov              qword ptr [rsp + 2672], rax
                        mov              rax, qword ptr [rsp + 2744]
                        mov              qword ptr [rsp + 2680], rax
                        lea              rdi, [rsp + 2672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2656], rax
                        mov              qword ptr [rsp + 2664], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n402_call_prolog_α
n401_call_prolog_β:     mov              r11, 209;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n402_call_prolog_α:     mov              r11, 210
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2808], rax
                        mov              rax, qword ptr [rsp + 2848]
                        mov              qword ptr [rsp + 2784], rax
                        mov              rax, qword ptr [rsp + 2856]
                        mov              qword ptr [rsp + 2792], rax
                        lea              rdi, [rsp + 2784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2768], rax
                        mov              qword ptr [rsp + 2776], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n403_call_prolog_α
n402_call_prolog_β:     mov              r11, 210;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n403_call_prolog_α:     mov              r11, 211
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2920], rax
                        mov              rax, qword ptr [rsp + 2960]
                        mov              qword ptr [rsp + 2896], rax
                        mov              rax, qword ptr [rsp + 2968]
                        mov              qword ptr [rsp + 2904], rax
                        lea              rdi, [rsp + 2896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2880], rax
                        mov              qword ptr [rsp + 2888], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n404_call_prolog_α
n403_call_prolog_β:     mov              r11, 211;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n404_call_prolog_α:     mov              r11, 212
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 3032], rax
                        mov              rax, qword ptr [rsp + 3072]
                        mov              qword ptr [rsp + 3008], rax
                        mov              rax, qword ptr [rsp + 3080]
                        mov              qword ptr [rsp + 3016], rax
                        lea              rdi, [rsp + 3008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2992], rax
                        mov              qword ptr [rsp + 3000], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n405_call_prolog_α
n404_call_prolog_β:     mov              r11, 212;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n405_call_prolog_α:     mov              r11, 213
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3144], rax
                        mov              rax, qword ptr [rsp + 3184]
                        mov              qword ptr [rsp + 3120], rax
                        mov              rax, qword ptr [rsp + 3192]
                        mov              qword ptr [rsp + 3128], rax
                        lea              rdi, [rsp + 3120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3104], rax
                        mov              qword ptr [rsp + 3112], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n406_call_prolog_α
n405_call_prolog_β:     mov              r11, 213;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n406_call_prolog_α:     mov              r11, 214
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3256], rax
                        mov              rax, qword ptr [rsp + 3296]
                        mov              qword ptr [rsp + 3232], rax
                        mov              rax, qword ptr [rsp + 3304]
                        mov              qword ptr [rsp + 3240], rax
                        lea              rdi, [rsp + 3232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3216], rax
                        mov              qword ptr [rsp + 3224], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n407_call_prolog_α
n406_call_prolog_β:     mov              r11, 214;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n407_call_prolog_α:     mov              r11, 215
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3368], rax
                        mov              rax, qword ptr [rsp + 3408]
                        mov              qword ptr [rsp + 3344], rax
                        mov              rax, qword ptr [rsp + 3416]
                        mov              qword ptr [rsp + 3352], rax
                        lea              rdi, [rsp + 3344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3328], rax
                        mov              qword ptr [rsp + 3336], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n408_call_prolog_α
n407_call_prolog_β:     mov              r11, 215;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n408_call_prolog_α:     mov              r11, 216
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3496], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3480], rax
                        mov              rax, qword ptr [rsp + 3520]
                        mov              qword ptr [rsp + 3456], rax
                        mov              rax, qword ptr [rsp + 3528]
                        mov              qword ptr [rsp + 3464], rax
                        lea              rdi, [rsp + 3456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3440], rax
                        mov              qword ptr [rsp + 3448], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n409_call_prolog_α
n408_call_prolog_β:     mov              r11, 216;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n409_call_prolog_α:     mov              r11, 217
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3608], rax
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3592], rax
                        mov              rax, qword ptr [rsp + 3632]
                        mov              qword ptr [rsp + 3568], rax
                        mov              rax, qword ptr [rsp + 3640]
                        mov              qword ptr [rsp + 3576], rax
                        lea              rdi, [rsp + 3568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3552], rax
                        mov              qword ptr [rsp + 3560], rdx
                        cmp              al, 104;                             je    n418_call_prolog_α
                                                                              jmp   n410_var_ref_α
n409_call_prolog_β:     mov              r11, 217;                            jmp   n418_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n410_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 3664]
                        mov              qword ptr [rsp + 3648], rax
                        mov              qword ptr [rsp + 3656], rdx;         jmp   n411_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n411_call_proc_staged_α:
                        mov              r11, 219
                        mov              qword ptr [rsp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_514_200
                        mov              rax, qword ptr [rsp + 3552]
                        mov              rdx, qword ptr [rsp + 3560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_514_201
.Lmain_α_514_200:       mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3552]
                        mov              rdx, qword ptr [rsp + 3560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_514_201:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_514_202
                        mov              rax, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_514_203
.Lmain_α_514_202:       mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_514_203:       lea              rax, [rip + .Lmain_α_514_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lmain_α_514_1
                        lea              rcx, [rip + .Lmain_α_514_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_514_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_514_4];         jmp   rax
.Lmain_α_514_3:         add              rsp, 16
                        mov              qword ptr [rsp + 248], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lmain_α_514_5
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_514_2
.Lmain_α_514_5:         call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_514_2
.Lmain_α_514_4:         add              rsp, 16
                        mov              rax, qword ptr [rsp + 240]
                        test             rax, rax;                            jne   .Lmain_α_514_6
                        mov              qword ptr [rsp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_514_2
.Lmain_α_514_6:         call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_514_2
.Lmain_α_514_1:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_514_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_514_29
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
.Lmain_α_514_29:        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n418_call_prolog_α
                                                                              jmp   n412_var_α
n411_call_proc_staged_β:
                        mov              r11, 219
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
                        test             rax, rax;                            je    n418_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 256]
                        mov              rdx, qword ptr [rsp + 264]
                        mov              ecx, 48
                        mov              r8d, 1104
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 3552]
                        mov              rdx, qword ptr [rsp + 3560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 3648]
                        mov              rdx, qword ptr [rsp + 3656]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n418_call_prolog_α
                        lea              r8, [rip + .Lmain_α_514_7]
                        push             r8
                        lea              rcx, [rip + .Lmain_α_514_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_514_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_514_4];         jmp   rax
.Lmain_α_514_7:         add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n418_call_prolog_α
                                                                              jmp   n412_var_α
.Lmain_β_514_0:         .quad            .Lmain_β_514_0_s
.Lmain_β_514_0_s:       .string          "nreverse/2"
#-----------------------------------------------------------------------------------------------------------------------
n412_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 184], rax;          jmp   n413_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n413_call_prolog_α:     mov              r11, 221
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn518:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn518]
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
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n414_lit_string_α
n413_call_prolog_β:     mov              r11, 221;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lmain_α_519_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n415_call_prolog_α
.Lmain_α_519_0:         .quad            .Lmain_α_519_0_s
.Lmain_α_519_0_s:       .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n415_call_prolog_α:     mov              r11, 223
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn521:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn521]
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
                        cmp              al, 104;                             je    n411_call_proc_staged_β
                                                                              jmp   n416_move_label_α
n415_call_prolog_β:     mov              r11, 223;                            jmp   n411_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n416_move_label_α:      mov              r11, 224
                        lea              rax, [rip + n411_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n417_disjunction_α:     mov              r11, 225
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
n417_disjunction_β:     mov              r11, 225;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_call_prolog_α:     mov              r11, 226
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
n418_call_prolog_β:     mov              r11, 226;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n417_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 3704]
                        add              rsp, 3728;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 3712]
                        add              rsp, 3728;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "nreverse/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__nreverse$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1184
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "reverse/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__reverse$2F2
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
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "$reverse_/3"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__$reverse_$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1248
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "concatenate/3"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__concatenate$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1168
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
