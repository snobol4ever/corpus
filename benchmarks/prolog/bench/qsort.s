                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__partition$2F4:
                        sub              rsp, 2240
                        mov              qword ptr [rsp + 2216], rcx
                        mov              qword ptr [rsp + 2224], rdx
                        mov              qword ptr [rsp + 2232], rsp
                        mov              rdi, rsp
                        mov              esi, 2080
                        mov              edx, 2208
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
partition$2F4_α_body:
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rsp + 2080], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lpartition$2F4_α_73_102
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88];           jmp   .Lpartition$2F4_α_73_101
.Lpartition$2F4_α_73_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_73_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lpartition$2F4_α_73_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lpartition$2F4_α_73_101
.Lpartition$2F4_α_73_100:
                        lea              rdi, [rsp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_73_101:
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rsp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_76_0]
                        mov              qword ptr [rsp + 2056], rax;         jmp   n3_lit_integer_α
.Lpartition$2F4_α_76_0: .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rsp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_77_0]
                        mov              qword ptr [rsp + 2072], rax;         jmp   n4_call_prolog_α
.Lpartition$2F4_α_77_0: .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
                        mov              rax, qword ptr [rsp + 2064]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2072]
                        mov              qword ptr [rsp + 2024], rax
                        mov              rax, qword ptr [rsp + 2048]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2056]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1984]
                        lea              r8, [rsp + 1984]
.Lpartition$2F4_α_78_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_78_111
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_78_112
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_78_110
.Lpartition$2F4_α_78_112:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_78_111
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_78_110
.Lpartition$2F4_α_78_113:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_78_111
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_78_111
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_78_110
.Lpartition$2F4_α_78_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_78_114
                        cmp              al, 104;                             je    .Lpartition$2F4_α_78_114
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_78_114
                                                                              jmp   .Lpartition$2F4_α_78_118
.Lpartition$2F4_α_78_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lpartition$2F4_α_78_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lpartition$2F4_α_78_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lpartition$2F4_α_78_115
                                                                              jmp   .Lpartition$2F4_α_78_114
.Lpartition$2F4_α_78_119:
                        cmp              al, 3;                               jne   .Lpartition$2F4_α_78_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lpartition$2F4_α_78_114
                                                                              jmp   .Lpartition$2F4_α_78_115
.Lpartition$2F4_α_78_120:
                        cmp              al, 2;                               jne   .Lpartition$2F4_α_78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lpartition$2F4_α_78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lpartition$2F4_α_78_114
                                                                              jmp   .Lpartition$2F4_α_78_115
.Lpartition$2F4_α_78_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lpartition$2F4_α_78_117
.Lpartition$2F4_α_78_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_78_117
.Lpartition$2F4_α_78_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_78_117:
                        mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n30_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n30_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1856], rax
                        mov              qword ptr [rsp + 1864], rdx;         jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n8_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_call_prolog_α:       mov              r11, 9
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1888], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1896], rax
                        lea              rdi, [rsp + 1888]
                        lea              r8, [rsp + 1888]
.Lpartition$2F4_α_85_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_85_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_61
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_85_62
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_85_60
.Lpartition$2F4_α_85_62:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_85_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_85_60
.Lpartition$2F4_α_85_63:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_61
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_85_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_85_60
.Lpartition$2F4_α_85_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_85_80
                        cmp              al, 104;                             je    .Lpartition$2F4_α_85_80
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_85_80
                                                                              jmp   .Lpartition$2F4_α_85_74
.Lpartition$2F4_α_85_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_85_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_85_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lpartition$2F4_α_85_73
                        lea              r9, [rsp + 1904]
.Lpartition$2F4_α_85_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_85_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_65
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_85_66
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_85_64
.Lpartition$2F4_α_85_66:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_85_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_85_64
.Lpartition$2F4_α_85_67:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_65
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_85_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_85_64
.Lpartition$2F4_α_85_65:
                        lea              rcx, [rsp + 1920]
.Lpartition$2F4_α_85_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_85_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_69
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_85_70
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_85_68
.Lpartition$2F4_α_85_70:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_85_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_85_68
.Lpartition$2F4_α_85_71:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_69
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_85_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_85_68
.Lpartition$2F4_α_85_69:
                        cmp              r9, rcx;                             je    .Lpartition$2F4_α_85_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_85_75
                        cmp              al, 104;                             je    .Lpartition$2F4_α_85_75
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_85_75
                                                                              jmp   .Lpartition$2F4_α_85_72
.Lpartition$2F4_α_85_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_85_76
                        cmp              al, 104;                             je    .Lpartition$2F4_α_85_76
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_85_76
                                                                              jmp   .Lpartition$2F4_α_85_72
.Lpartition$2F4_α_85_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_85_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_85_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_85_77
.Lpartition$2F4_α_85_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_85_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lpartition$2F4_α_85_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lpartition$2F4_α_85_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_85_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_85_72
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
                        lea              r9, [rsp + 1904]
.Lpartition$2F4_α_85_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_85_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_82
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_85_83
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_85_81
.Lpartition$2F4_α_85_83:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_85_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_85_81
.Lpartition$2F4_α_85_84:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_82
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_85_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_85_81
.Lpartition$2F4_α_85_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_85_85
                        cmp              al, 104;                             je    .Lpartition$2F4_α_85_85
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_85_85
                                                                              jmp   .Lpartition$2F4_α_85_86
.Lpartition$2F4_α_85_85:
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_85_87
.Lpartition$2F4_α_85_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lpartition$2F4_α_85_87:
                        lea              rcx, [rsp + 1920]
.Lpartition$2F4_α_85_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_85_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_89
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_85_90
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_85_88
.Lpartition$2F4_α_85_90:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_85_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_85_88
.Lpartition$2F4_α_85_91:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_85_89
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_85_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_85_88
.Lpartition$2F4_α_85_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_85_92
                        cmp              al, 104;                             je    .Lpartition$2F4_α_85_92
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_85_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_85_92
                                                                              jmp   .Lpartition$2F4_α_85_93
.Lpartition$2F4_α_85_92:
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lpartition$2F4_α_85_94
.Lpartition$2F4_α_85_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lpartition$2F4_α_85_94:
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lpartition$2F4_α_85_77
.Lpartition$2F4_α_85_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_85_77
.Lpartition$2F4_α_85_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_85_77:
                        mov              qword ptr [rsp + 1872], rax
                        mov              qword ptr [rsp + 1880], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n9_var_ref_α
n8_call_prolog_β:       mov              r11, 9;                              jmp   n29_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1832], rdx;         jmp   n10_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 1840], rax
                        mov              qword ptr [rsp + 1848], rdx;         jmp   n11_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
                        mov              rax, qword ptr [rsp + 1840]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1848]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1824]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1832]
                        mov              qword ptr [rsp + 1800], rax
                        lea              rdi, [rsp + 1792]
                        lea              r8, [rsp + 1792]
.Lpartition$2F4_α_90_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_90_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_90_41
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_90_55
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_90_40
.Lpartition$2F4_α_90_55:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_90_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_90_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_90_40
.Lpartition$2F4_α_90_56:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_90_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_90_41
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_90_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_90_40
.Lpartition$2F4_α_90_41:
                        lea              r9, [rsp + 1808]
.Lpartition$2F4_α_90_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_90_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_90_43
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_90_57
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_90_42
.Lpartition$2F4_α_90_57:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_90_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_90_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_90_42
.Lpartition$2F4_α_90_58:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_90_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_90_43
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_90_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_90_42
.Lpartition$2F4_α_90_43:
                        cmp              r8, r9;                              je    .Lpartition$2F4_α_90_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_90_44
                        cmp              al, 104;                             je    .Lpartition$2F4_α_90_44
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_90_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_90_44
                                                                              jmp   .Lpartition$2F4_α_90_45
.Lpartition$2F4_α_90_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_90_53
                        cmp              al, 104;                             je    .Lpartition$2F4_α_90_53
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_90_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_90_53
                                                                              jmp   .Lpartition$2F4_α_90_46
.Lpartition$2F4_α_90_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_90_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_90_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lpartition$2F4_α_90_51
.Lpartition$2F4_α_90_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_90_47
                        cmp              al, 104;                             je    .Lpartition$2F4_α_90_47
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_90_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_90_47
                                                                              jmp   .Lpartition$2F4_α_90_48
.Lpartition$2F4_α_90_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_90_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_90_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_90_51
.Lpartition$2F4_α_90_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_90_49
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_90_53
                                                                              jmp   .Lpartition$2F4_α_90_52
.Lpartition$2F4_α_90_49:
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_90_52
                        cmp              cl, 5;                               je    .Lpartition$2F4_α_90_53
                        cmp              dl, 5;                               je    .Lpartition$2F4_α_90_53
                        cmp              cl, 3;                               jne   .Lpartition$2F4_α_90_50
                        cmp              dl, 3;                               jne   .Lpartition$2F4_α_90_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_90_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lpartition$2F4_α_90_51
                                                                              jmp   .Lpartition$2F4_α_90_52
.Lpartition$2F4_α_90_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_90_53
.Lpartition$2F4_α_90_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_90_54
.Lpartition$2F4_α_90_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_90_54
.Lpartition$2F4_α_90_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_90_54:
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   n29_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n13_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 1744], rax
                        mov              qword ptr [rsp + 1752], rdx;         jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 1760], rax
                        mov              qword ptr [rsp + 1768], rdx;         jmp   n15_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1728], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1736], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1704], rax
                        lea              rdi, [rsp + 1696]
                        lea              r8, [rsp + 1696]
.Lpartition$2F4_α_97_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_97_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_61
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_97_62
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_97_60
.Lpartition$2F4_α_97_62:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_97_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_97_60
.Lpartition$2F4_α_97_63:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_61
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_97_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_97_60
.Lpartition$2F4_α_97_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_97_80
                        cmp              al, 104;                             je    .Lpartition$2F4_α_97_80
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_97_80
                                                                              jmp   .Lpartition$2F4_α_97_74
.Lpartition$2F4_α_97_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_97_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_97_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lpartition$2F4_α_97_73
                        lea              r9, [rsp + 1712]
.Lpartition$2F4_α_97_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_97_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_65
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_97_66
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_97_64
.Lpartition$2F4_α_97_66:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_97_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_97_64
.Lpartition$2F4_α_97_67:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_65
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_97_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_97_64
.Lpartition$2F4_α_97_65:
                        lea              rcx, [rsp + 1728]
.Lpartition$2F4_α_97_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_97_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_69
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_97_70
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_97_68
.Lpartition$2F4_α_97_70:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_97_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_97_68
.Lpartition$2F4_α_97_71:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_69
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_97_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_97_68
.Lpartition$2F4_α_97_69:
                        cmp              r9, rcx;                             je    .Lpartition$2F4_α_97_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_97_75
                        cmp              al, 104;                             je    .Lpartition$2F4_α_97_75
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_97_75
                                                                              jmp   .Lpartition$2F4_α_97_72
.Lpartition$2F4_α_97_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_97_76
                        cmp              al, 104;                             je    .Lpartition$2F4_α_97_76
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_97_76
                                                                              jmp   .Lpartition$2F4_α_97_72
.Lpartition$2F4_α_97_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_97_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_97_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_97_77
.Lpartition$2F4_α_97_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_97_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lpartition$2F4_α_97_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lpartition$2F4_α_97_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_97_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_97_72
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
                        lea              r9, [rsp + 1712]
.Lpartition$2F4_α_97_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_97_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_82
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_97_83
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_97_81
.Lpartition$2F4_α_97_83:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_97_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_97_81
.Lpartition$2F4_α_97_84:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_82
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_97_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_97_81
.Lpartition$2F4_α_97_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_97_85
                        cmp              al, 104;                             je    .Lpartition$2F4_α_97_85
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_97_85
                                                                              jmp   .Lpartition$2F4_α_97_86
.Lpartition$2F4_α_97_85:
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_97_87
.Lpartition$2F4_α_97_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lpartition$2F4_α_97_87:
                        lea              rcx, [rsp + 1728]
.Lpartition$2F4_α_97_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_97_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_89
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_97_90
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_97_88
.Lpartition$2F4_α_97_90:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_97_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_97_88
.Lpartition$2F4_α_97_91:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_97_89
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_97_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_97_88
.Lpartition$2F4_α_97_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_97_92
                        cmp              al, 104;                             je    .Lpartition$2F4_α_97_92
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_97_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_97_92
                                                                              jmp   .Lpartition$2F4_α_97_93
.Lpartition$2F4_α_97_92:
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lpartition$2F4_α_97_94
.Lpartition$2F4_α_97_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lpartition$2F4_α_97_94:
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lpartition$2F4_α_97_77
.Lpartition$2F4_α_97_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_97_77
.Lpartition$2F4_α_97_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_97_77:
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   n29_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1640], rdx;         jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 1648], rax
                        mov              qword ptr [rsp + 1656], rdx;         jmp   n18_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1616], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1624], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1608], rax
                        lea              rdi, [rsp + 1600]
                        lea              r8, [rsp + 1600]
.Lpartition$2F4_α_102_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_102_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_102_41
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_102_55
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_102_40
.Lpartition$2F4_α_102_55:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_102_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_102_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_102_40
.Lpartition$2F4_α_102_56:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_102_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_102_41
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_102_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_102_40
.Lpartition$2F4_α_102_41:
                        lea              r9, [rsp + 1616]
.Lpartition$2F4_α_102_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_102_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_102_43
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_102_57
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_102_42
.Lpartition$2F4_α_102_57:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_102_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_102_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_102_42
.Lpartition$2F4_α_102_58:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_102_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_102_43
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_102_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_102_42
.Lpartition$2F4_α_102_43:
                        cmp              r8, r9;                              je    .Lpartition$2F4_α_102_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_102_44
                        cmp              al, 104;                             je    .Lpartition$2F4_α_102_44
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_102_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_102_44
                                                                              jmp   .Lpartition$2F4_α_102_45
.Lpartition$2F4_α_102_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_102_53
                        cmp              al, 104;                             je    .Lpartition$2F4_α_102_53
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_102_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_102_53
                                                                              jmp   .Lpartition$2F4_α_102_46
.Lpartition$2F4_α_102_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_102_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_102_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lpartition$2F4_α_102_51
.Lpartition$2F4_α_102_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_102_47
                        cmp              al, 104;                             je    .Lpartition$2F4_α_102_47
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_102_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_102_47
                                                                              jmp   .Lpartition$2F4_α_102_48
.Lpartition$2F4_α_102_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_102_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_102_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_102_51
.Lpartition$2F4_α_102_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_102_49
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_102_53
                                                                              jmp   .Lpartition$2F4_α_102_52
.Lpartition$2F4_α_102_49:
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_102_52
                        cmp              cl, 5;                               je    .Lpartition$2F4_α_102_53
                        cmp              dl, 5;                               je    .Lpartition$2F4_α_102_53
                        cmp              cl, 3;                               jne   .Lpartition$2F4_α_102_50
                        cmp              dl, 3;                               jne   .Lpartition$2F4_α_102_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_102_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lpartition$2F4_α_102_51
                                                                              jmp   .Lpartition$2F4_α_102_52
.Lpartition$2F4_α_102_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_102_53
.Lpartition$2F4_α_102_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_102_54
.Lpartition$2F4_α_102_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_102_54
.Lpartition$2F4_α_102_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_102_54:
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n19_var_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   n29_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 1560], rax;         jmp   n20_var_α
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rsp + 2128]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 2136]
                        mov              qword ptr [rsp + 1576], rax;         jmp   n21_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
                        mov              rax, qword ptr [rsp + 1568]
                        mov              qword ptr [rsp + 1536], rax
                        mov              rax, qword ptr [rsp + 1576]
                        mov              qword ptr [rsp + 1544], rax
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1520], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1528], rax
                        lea              rdi, [rsp + 1520]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n22_cut_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   n29_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n22_cut_α:              mov              r11, 23;                             jmp   n23_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n24_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx;         jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 1472], rax
                        mov              qword ptr [rsp + 1480], rdx;         jmp   n26_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2176]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1496], rdx;         jmp   n27_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α: mov              r11, 28
                        mov              qword ptr [rsp + 1408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_118_200
                        mov              rax, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lpartition$2F4_α_118_201
.Lpartition$2F4_α_118_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_118_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_118_202
                        mov              rax, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lpartition$2F4_α_118_203
.Lpartition$2F4_α_118_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_118_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_118_204
                        mov              rax, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lpartition$2F4_α_118_205
.Lpartition$2F4_α_118_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_118_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_118_206
                        mov              rax, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lpartition$2F4_α_118_207
.Lpartition$2F4_α_118_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_118_207:
                        lea              rax, [rip + .Lpartition$2F4_α_118_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lpartition$2F4_α_118_1
                        lea              rcx, [rip + .Lpartition$2F4_α_118_4]
                        push             rcx
                        lea              rcx, [rip + .Lpartition$2F4_α_118_3]
                        push             rcx
                        lea              rdx, [rip + .Lpartition$2F4_α_118_4]
                                                                              jmp   rax
.Lpartition$2F4_α_118_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 1416], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1408]
                        test             rax, rax;                            jne   .Lpartition$2F4_α_118_5
                        mov              qword ptr [rsp + 1408], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lpartition$2F4_α_118_2
.Lpartition$2F4_α_118_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lpartition$2F4_α_118_2
.Lpartition$2F4_α_118_4:
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 1408]
                        test             rax, rax;                            jne   .Lpartition$2F4_α_118_6
                        mov              qword ptr [rsp + 1408], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lpartition$2F4_α_118_2
.Lpartition$2F4_α_118_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lpartition$2F4_α_118_2
.Lpartition$2F4_α_118_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_118_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lpartition$2F4_α_118_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1328]
                        mov              rdx, qword ptr [rsp + 1336]
.Lpartition$2F4_α_118_29:
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n28_suspend_α
n27_call_proc_staged_β: mov              r11, 28
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1408], 0
                        lea              rdi, [rsp + 1424]
                        lea              rsi, [rsp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n72_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1424]
                        mov              rdx, qword ptr [rsp + 1432]
                        mov              ecx, 80
                        mov              r8d, 2080
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1440]
                        mov              rdx, qword ptr [rsp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1456]
                        mov              rdx, qword ptr [rsp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1472]
                        mov              rdx, qword ptr [rsp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1488]
                        mov              rdx, qword ptr [rsp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n72_call_prolog_α
                        lea              r8, [rip + .Lpartition$2F4_α_118_7]
                        push             r8
                        lea              rcx, [rip + .Lpartition$2F4_α_118_4]
                        push             rcx
                        lea              rcx, [rip + .Lpartition$2F4_α_118_3]
                        push             rcx
                        lea              rdx, [rip + .Lpartition$2F4_α_118_4]
                                                                              jmp   rax
.Lpartition$2F4_α_118_7:
                        add              rsp, 8
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n28_suspend_α
.Lpartition$2F4_β_118_0:
                        .quad            .Lpartition$2F4_β_118_0_s
.Lpartition$2F4_β_118_0_s:
                        .string          "partition/4"
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:          mov              r11, 29
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_120_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2080];         jmp   rax
.Lpartition$2F4_α_120_61:
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n28_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n28_suspend_β]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   partition$2F4_γ
n28_suspend_β:          mov              r11, 29;                             jmp   n27_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n29_call_prolog_α:      mov              r11, 30
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   n30_var_ref_α
n29_call_prolog_β:      mov              r11, 30;                             jmp   partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n31_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rsp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_124_0]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n32_lit_integer_α
.Lpartition$2F4_α_124_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_125_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n33_call_prolog_α
.Lpartition$2F4_α_125_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n33_call_prolog_α:      mov              r11, 34
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        mov              rax, qword ptr [rsp + 1248]
                        mov              qword ptr [rsp + 1200], rax
                        mov              rax, qword ptr [rsp + 1256]
                        mov              qword ptr [rsp + 1208], rax
                        lea              rdi, [rsp + 1200]
                        lea              r8, [rsp + 1200]
.Lpartition$2F4_α_126_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_126_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_126_111
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_126_112
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_126_110
.Lpartition$2F4_α_126_112:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_126_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_126_111
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_126_110
.Lpartition$2F4_α_126_113:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_126_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_126_111
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_126_111
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_126_110
.Lpartition$2F4_α_126_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_126_114
                        cmp              al, 104;                             je    .Lpartition$2F4_α_126_114
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_126_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_126_114
                                                                              jmp   .Lpartition$2F4_α_126_118
.Lpartition$2F4_α_126_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lpartition$2F4_α_126_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lpartition$2F4_α_126_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lpartition$2F4_α_126_115
                                                                              jmp   .Lpartition$2F4_α_126_114
.Lpartition$2F4_α_126_119:
                        cmp              al, 3;                               jne   .Lpartition$2F4_α_126_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lpartition$2F4_α_126_114
                                                                              jmp   .Lpartition$2F4_α_126_115
.Lpartition$2F4_α_126_120:
                        cmp              al, 2;                               jne   .Lpartition$2F4_α_126_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lpartition$2F4_α_126_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lpartition$2F4_α_126_114
                                                                              jmp   .Lpartition$2F4_α_126_115
.Lpartition$2F4_α_126_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lpartition$2F4_α_126_117
.Lpartition$2F4_α_126_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_126_117
.Lpartition$2F4_α_126_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_126_117:
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n55_var_ref_α
                                                                              jmp   n34_var_ref_α
n33_call_prolog_β:      mov              r11, 34;                             jmp   n55_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n35_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n36_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n37_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n37_call_prolog_α:      mov              r11, 38
                        mov              rax, qword ptr [rsp + 1168]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1176]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1152]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1160]
                        mov              qword ptr [rsp + 1128], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1104], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1112], rax
                        lea              rdi, [rsp + 1104]
                        lea              r8, [rsp + 1104]
.Lpartition$2F4_α_133_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_133_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_61
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_133_62
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_133_60
.Lpartition$2F4_α_133_62:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_133_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_133_60
.Lpartition$2F4_α_133_63:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_61
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_133_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_133_60
.Lpartition$2F4_α_133_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_133_80
                        cmp              al, 104;                             je    .Lpartition$2F4_α_133_80
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_133_80
                                                                              jmp   .Lpartition$2F4_α_133_74
.Lpartition$2F4_α_133_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_133_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_133_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lpartition$2F4_α_133_73
                        lea              r9, [rsp + 1120]
.Lpartition$2F4_α_133_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_133_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_65
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_133_66
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_133_64
.Lpartition$2F4_α_133_66:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_133_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_133_64
.Lpartition$2F4_α_133_67:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_65
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_133_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_133_64
.Lpartition$2F4_α_133_65:
                        lea              rcx, [rsp + 1136]
.Lpartition$2F4_α_133_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_133_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_69
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_133_70
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_133_68
.Lpartition$2F4_α_133_70:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_133_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_133_68
.Lpartition$2F4_α_133_71:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_69
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_133_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_133_68
.Lpartition$2F4_α_133_69:
                        cmp              r9, rcx;                             je    .Lpartition$2F4_α_133_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_133_75
                        cmp              al, 104;                             je    .Lpartition$2F4_α_133_75
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_133_75
                                                                              jmp   .Lpartition$2F4_α_133_72
.Lpartition$2F4_α_133_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_133_76
                        cmp              al, 104;                             je    .Lpartition$2F4_α_133_76
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_133_76
                                                                              jmp   .Lpartition$2F4_α_133_72
.Lpartition$2F4_α_133_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_133_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_133_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_133_77
.Lpartition$2F4_α_133_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_133_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lpartition$2F4_α_133_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lpartition$2F4_α_133_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_133_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_133_72
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
                        lea              r9, [rsp + 1120]
.Lpartition$2F4_α_133_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_133_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_82
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_133_83
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_133_81
.Lpartition$2F4_α_133_83:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_133_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_133_81
.Lpartition$2F4_α_133_84:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_82
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_133_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_133_81
.Lpartition$2F4_α_133_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_133_85
                        cmp              al, 104;                             je    .Lpartition$2F4_α_133_85
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_133_85
                                                                              jmp   .Lpartition$2F4_α_133_86
.Lpartition$2F4_α_133_85:
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_133_87
.Lpartition$2F4_α_133_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lpartition$2F4_α_133_87:
                        lea              rcx, [rsp + 1136]
.Lpartition$2F4_α_133_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_133_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_89
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_133_90
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_133_88
.Lpartition$2F4_α_133_90:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_133_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_133_88
.Lpartition$2F4_α_133_91:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_133_89
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_133_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_133_88
.Lpartition$2F4_α_133_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_133_92
                        cmp              al, 104;                             je    .Lpartition$2F4_α_133_92
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_133_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_133_92
                                                                              jmp   .Lpartition$2F4_α_133_93
.Lpartition$2F4_α_133_92:
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lpartition$2F4_α_133_94
.Lpartition$2F4_α_133_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lpartition$2F4_α_133_94:
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lpartition$2F4_α_133_77
.Lpartition$2F4_α_133_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_133_77
.Lpartition$2F4_α_133_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_133_77:
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n38_var_ref_α
n37_call_prolog_β:      mov              r11, 38;                             jmp   n54_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n39_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n40_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rsp + 1056]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 1064]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1040]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1048]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        lea              r8, [rsp + 1008]
.Lpartition$2F4_α_138_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_138_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_138_41
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_138_55
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_138_40
.Lpartition$2F4_α_138_55:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_138_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_138_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_138_40
.Lpartition$2F4_α_138_56:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_138_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_138_41
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_138_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_138_40
.Lpartition$2F4_α_138_41:
                        lea              r9, [rsp + 1024]
.Lpartition$2F4_α_138_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_138_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_138_43
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_138_57
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_138_42
.Lpartition$2F4_α_138_57:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_138_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_138_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_138_42
.Lpartition$2F4_α_138_58:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_138_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_138_43
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_138_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_138_42
.Lpartition$2F4_α_138_43:
                        cmp              r8, r9;                              je    .Lpartition$2F4_α_138_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_138_44
                        cmp              al, 104;                             je    .Lpartition$2F4_α_138_44
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_138_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_138_44
                                                                              jmp   .Lpartition$2F4_α_138_45
.Lpartition$2F4_α_138_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_138_53
                        cmp              al, 104;                             je    .Lpartition$2F4_α_138_53
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_138_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_138_53
                                                                              jmp   .Lpartition$2F4_α_138_46
.Lpartition$2F4_α_138_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_138_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_138_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lpartition$2F4_α_138_51
.Lpartition$2F4_α_138_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_138_47
                        cmp              al, 104;                             je    .Lpartition$2F4_α_138_47
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_138_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_138_47
                                                                              jmp   .Lpartition$2F4_α_138_48
.Lpartition$2F4_α_138_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_138_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_138_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_138_51
.Lpartition$2F4_α_138_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_138_49
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_138_53
                                                                              jmp   .Lpartition$2F4_α_138_52
.Lpartition$2F4_α_138_49:
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_138_52
                        cmp              cl, 5;                               je    .Lpartition$2F4_α_138_53
                        cmp              dl, 5;                               je    .Lpartition$2F4_α_138_53
                        cmp              cl, 3;                               jne   .Lpartition$2F4_α_138_50
                        cmp              dl, 3;                               jne   .Lpartition$2F4_α_138_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_138_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lpartition$2F4_α_138_51
                                                                              jmp   .Lpartition$2F4_α_138_52
.Lpartition$2F4_α_138_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_138_53
.Lpartition$2F4_α_138_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_138_54
.Lpartition$2F4_α_138_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_138_54
.Lpartition$2F4_α_138_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_138_54:
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   n54_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 960], rax
                        mov              qword ptr [rsp + 968], rdx;          jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2144]
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx;          jmp   n43_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n43_call_prolog_α:      mov              r11, 44
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 952], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 936], rax
                        lea              rdi, [rsp + 928]
                        lea              r8, [rsp + 928]
.Lpartition$2F4_α_143_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_143_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_143_41
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_143_55
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_143_40
.Lpartition$2F4_α_143_55:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_143_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_143_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_143_40
.Lpartition$2F4_α_143_56:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_143_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_143_41
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_143_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_143_40
.Lpartition$2F4_α_143_41:
                        lea              r9, [rsp + 944]
.Lpartition$2F4_α_143_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_143_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_143_43
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_143_57
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_143_42
.Lpartition$2F4_α_143_57:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_143_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_143_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_143_42
.Lpartition$2F4_α_143_58:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_143_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_143_43
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_143_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_143_42
.Lpartition$2F4_α_143_43:
                        cmp              r8, r9;                              je    .Lpartition$2F4_α_143_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_143_44
                        cmp              al, 104;                             je    .Lpartition$2F4_α_143_44
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_143_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_143_44
                                                                              jmp   .Lpartition$2F4_α_143_45
.Lpartition$2F4_α_143_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_143_53
                        cmp              al, 104;                             je    .Lpartition$2F4_α_143_53
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_143_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_143_53
                                                                              jmp   .Lpartition$2F4_α_143_46
.Lpartition$2F4_α_143_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_143_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_143_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lpartition$2F4_α_143_51
.Lpartition$2F4_α_143_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_143_47
                        cmp              al, 104;                             je    .Lpartition$2F4_α_143_47
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_143_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_143_47
                                                                              jmp   .Lpartition$2F4_α_143_48
.Lpartition$2F4_α_143_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_143_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_143_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_143_51
.Lpartition$2F4_α_143_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_143_49
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_143_53
                                                                              jmp   .Lpartition$2F4_α_143_52
.Lpartition$2F4_α_143_49:
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_143_52
                        cmp              cl, 5;                               je    .Lpartition$2F4_α_143_53
                        cmp              dl, 5;                               je    .Lpartition$2F4_α_143_53
                        cmp              cl, 3;                               jne   .Lpartition$2F4_α_143_50
                        cmp              dl, 3;                               jne   .Lpartition$2F4_α_143_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_143_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lpartition$2F4_α_143_51
                                                                              jmp   .Lpartition$2F4_α_143_52
.Lpartition$2F4_α_143_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_143_53
.Lpartition$2F4_α_143_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_143_54
.Lpartition$2F4_α_143_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_143_54
.Lpartition$2F4_α_143_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_143_54:
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n44_var_ref_α
n43_call_prolog_β:      mov              r11, 44;                             jmp   n54_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n45_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n47_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_prolog_α:      mov              r11, 48
                        mov              rax, qword ptr [rsp + 896]
                        mov              qword ptr [rsp + 864], rax
                        mov              rax, qword ptr [rsp + 904]
                        mov              qword ptr [rsp + 872], rax
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 800]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 808]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        lea              r8, [rsp + 832]
.Lpartition$2F4_α_150_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_150_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_61
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_150_62
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_150_60
.Lpartition$2F4_α_150_62:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_150_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_150_60
.Lpartition$2F4_α_150_63:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_61
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_150_61
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_150_60
.Lpartition$2F4_α_150_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_150_80
                        cmp              al, 104;                             je    .Lpartition$2F4_α_150_80
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_150_80
                                                                              jmp   .Lpartition$2F4_α_150_74
.Lpartition$2F4_α_150_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_150_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_150_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lpartition$2F4_α_150_73
                        lea              r9, [rsp + 848]
.Lpartition$2F4_α_150_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_150_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_65
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_150_66
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_150_64
.Lpartition$2F4_α_150_66:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_150_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_150_64
.Lpartition$2F4_α_150_67:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_65
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_150_65
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_150_64
.Lpartition$2F4_α_150_65:
                        lea              rcx, [rsp + 864]
.Lpartition$2F4_α_150_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_150_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_69
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_150_70
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_150_68
.Lpartition$2F4_α_150_70:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_150_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_150_68
.Lpartition$2F4_α_150_71:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_69
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_150_69
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_150_68
.Lpartition$2F4_α_150_69:
                        cmp              r9, rcx;                             je    .Lpartition$2F4_α_150_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_150_75
                        cmp              al, 104;                             je    .Lpartition$2F4_α_150_75
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_150_75
                                                                              jmp   .Lpartition$2F4_α_150_72
.Lpartition$2F4_α_150_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_150_76
                        cmp              al, 104;                             je    .Lpartition$2F4_α_150_76
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_150_76
                                                                              jmp   .Lpartition$2F4_α_150_72
.Lpartition$2F4_α_150_76:
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_150_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_150_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_150_77
.Lpartition$2F4_α_150_80:
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lpartition$2F4_α_150_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lpartition$2F4_α_150_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lpartition$2F4_α_150_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lpartition$2F4_α_150_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_150_72
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
                        lea              r9, [rsp + 848]
.Lpartition$2F4_α_150_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_150_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_82
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_150_83
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_150_81
.Lpartition$2F4_α_150_83:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_150_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_150_81
.Lpartition$2F4_α_150_84:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_82
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_150_82
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_150_81
.Lpartition$2F4_α_150_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_150_85
                        cmp              al, 104;                             je    .Lpartition$2F4_α_150_85
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_150_85
                                                                              jmp   .Lpartition$2F4_α_150_86
.Lpartition$2F4_α_150_85:
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_150_87
.Lpartition$2F4_α_150_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lpartition$2F4_α_150_87:
                        lea              rcx, [rsp + 864]
.Lpartition$2F4_α_150_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_150_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_89
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_150_90
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_150_88
.Lpartition$2F4_α_150_90:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_150_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_150_88
.Lpartition$2F4_α_150_91:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_150_89
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_150_89
                        mov              rcx, rax;                            jmp   .Lpartition$2F4_α_150_88
.Lpartition$2F4_α_150_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_150_92
                        cmp              al, 104;                             je    .Lpartition$2F4_α_150_92
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_150_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lpartition$2F4_α_150_92
                                                                              jmp   .Lpartition$2F4_α_150_93
.Lpartition$2F4_α_150_92:
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lpartition$2F4_α_150_94
.Lpartition$2F4_α_150_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lpartition$2F4_α_150_94:
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lpartition$2F4_α_150_77
.Lpartition$2F4_α_150_73:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_150_77
.Lpartition$2F4_α_150_72:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_150_77:
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n48_var_ref_α
n47_call_prolog_β:      mov              r11, 48;                             jmp   n54_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2112]
                        mov              qword ptr [rsp + 736], rax
                        mov              qword ptr [rsp + 744], rdx;          jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2128]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2144]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n51_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2160]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n52_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: mov              r11, 53
                        mov              qword ptr [rsp + 704], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_160_200
                        mov              rax, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lpartition$2F4_α_160_201
.Lpartition$2F4_α_160_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_160_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_160_202
                        mov              rax, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lpartition$2F4_α_160_203
.Lpartition$2F4_α_160_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_160_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_160_204
                        mov              rax, qword ptr [rsp + 768]
                        mov              rdx, qword ptr [rsp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lpartition$2F4_α_160_205
.Lpartition$2F4_α_160_204:
                        mov              edi, 2
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
.Lpartition$2F4_α_160_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lpartition$2F4_α_160_206
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lpartition$2F4_α_160_207
.Lpartition$2F4_α_160_206:
                        mov              edi, 3
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
.Lpartition$2F4_α_160_207:
                        lea              rax, [rip + .Lpartition$2F4_α_160_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lpartition$2F4_α_160_1
                        lea              rcx, [rip + .Lpartition$2F4_α_160_4]
                        push             rcx
                        lea              rcx, [rip + .Lpartition$2F4_α_160_3]
                        push             rcx
                        lea              rdx, [rip + .Lpartition$2F4_α_160_4]
                                                                              jmp   rax
.Lpartition$2F4_α_160_3:
                        add              rsp, 16
                        mov              qword ptr [rsp + 712], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 704]
                        test             rax, rax;                            jne   .Lpartition$2F4_α_160_5
                        mov              qword ptr [rsp + 704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lpartition$2F4_α_160_2
.Lpartition$2F4_α_160_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lpartition$2F4_α_160_2
.Lpartition$2F4_α_160_4:
                        add              rsp, 16
                        mov              rax, qword ptr [rsp + 704]
                        test             rax, rax;                            jne   .Lpartition$2F4_α_160_6
                        mov              qword ptr [rsp + 704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lpartition$2F4_α_160_2
.Lpartition$2F4_α_160_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lpartition$2F4_α_160_2
.Lpartition$2F4_α_160_1:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_160_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lpartition$2F4_α_160_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
.Lpartition$2F4_α_160_29:
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n53_suspend_α
n52_call_proc_staged_β: mov              r11, 53
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 704], 0
                        lea              rdi, [rsp + 720]
                        lea              rsi, [rsp + 728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n54_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 720]
                        mov              rdx, qword ptr [rsp + 728]
                        mov              ecx, 80
                        mov              r8d, 2080
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 736]
                        mov              rdx, qword ptr [rsp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 752]
                        mov              rdx, qword ptr [rsp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
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
                        mov              edi, 3
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
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n54_call_prolog_α
                        lea              r8, [rip + .Lpartition$2F4_α_160_7]
                        push             r8
                        lea              rcx, [rip + .Lpartition$2F4_α_160_4]
                        push             rcx
                        lea              rcx, [rip + .Lpartition$2F4_α_160_3]
                        push             rcx
                        lea              rdx, [rip + .Lpartition$2F4_α_160_4]
                                                                              jmp   rax
.Lpartition$2F4_α_160_7:
                        add              rsp, 8
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n53_suspend_α
.Lpartition$2F4_β_160_0:
                        .quad            .Lpartition$2F4_β_160_0_s
.Lpartition$2F4_β_160_0_s:
                        .string          "partition/4"
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:          mov              r11, 54
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_162_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2080];         jmp   rax
.Lpartition$2F4_α_162_61:
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n53_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n53_suspend_β]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   partition$2F4_γ
n53_suspend_β:          mov              r11, 54;                             jmp   n52_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n54_call_prolog_α:      mov              r11, 55
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 608], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 616], rax
                        lea              rdi, [rsp + 608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 592], rax
                        mov              qword ptr [rsp + 600], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   n55_var_ref_α
n54_call_prolog_β:      mov              r11, 55;                             jmp   partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n56_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              r11, 57
                        mov              qword ptr [rsp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_166_0]
                        mov              qword ptr [rsp + 568], rax;          jmp   n57_lit_string_α
.Lpartition$2F4_α_166_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rsp + 576], 2             # result
                        mov              dword ptr [rsp + 580], 2
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_167_0]
                        mov              qword ptr [rsp + 584], rax;          jmp   n58_call_prolog_α
.Lpartition$2F4_α_167_0:
                        .quad            .Lpartition$2F4_α_167_0_s
.Lpartition$2F4_α_167_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n58_call_prolog_α:      mov              r11, 59
                        mov              rax, qword ptr [rsp + 576]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 584]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 520], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 496], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 504], rax
                        lea              rdi, [rsp + 496]
                        lea              r8, [rsp + 496]
.Lpartition$2F4_α_168_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_168_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_168_111
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_168_112
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_168_110
.Lpartition$2F4_α_168_112:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_168_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_168_111
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_168_110
.Lpartition$2F4_α_168_113:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_168_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_168_111
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_168_111
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_168_110
.Lpartition$2F4_α_168_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_168_114
                        cmp              al, 104;                             je    .Lpartition$2F4_α_168_114
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_168_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_168_114
                                                                              jmp   .Lpartition$2F4_α_168_118
.Lpartition$2F4_α_168_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lpartition$2F4_α_168_115
                        cmp              al, 3;                               je    .Lpartition$2F4_α_168_114
                        cmp              al, 2;                               jne   .Lpartition$2F4_α_168_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lpartition$2F4_α_168_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lpartition$2F4_α_168_114
                                                                              jmp   .Lpartition$2F4_α_168_116
.Lpartition$2F4_α_168_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lpartition$2F4_α_168_117
.Lpartition$2F4_α_168_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_168_117
.Lpartition$2F4_α_168_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_168_117:
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n59_var_ref_α
n58_call_prolog_β:      mov              r11, 59;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n60_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rsp + 464], 2             # result
                        mov              dword ptr [rsp + 468], 2
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_171_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n61_call_prolog_α
.Lpartition$2F4_α_171_0:
                        .quad            .Lpartition$2F4_α_171_0_s
.Lpartition$2F4_α_171_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n61_call_prolog_α:      mov              r11, 62
                        mov              rax, qword ptr [rsp + 448]
                        mov              qword ptr [rsp + 416], rax
                        mov              rax, qword ptr [rsp + 456]
                        mov              qword ptr [rsp + 424], rax
                        lea              rdi, [rsp + 416]
                        mov              rsi, qword ptr [rip + .Lpartition$2F4_α_172_2]
                                                                              jmp   .Lpartition$2F4_α_172_3
.Lpartition$2F4_α_172_2:
                        .quad            .Lpartition$2F4_α_172_2_s
.Lpartition$2F4_α_172_2_s:
                        .string          "[]"
.Lpartition$2F4_α_172_3:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 400], rax
                        mov              qword ptr [rsp + 408], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n62_var_ref_α
n61_call_prolog_β:      mov              r11, 62;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 368], rax
                        mov              qword ptr [rsp + 376], rdx;          jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2096]
                        mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx;          jmp   n64_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n64_call_prolog_α:      mov              r11, 65
                        mov              rax, qword ptr [rsp + 384]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 392]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 368]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 376]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        lea              r8, [rsp + 336]
.Lpartition$2F4_α_177_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_177_41
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_177_55
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_177_40
.Lpartition$2F4_α_177_55:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_177_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_177_40
.Lpartition$2F4_α_177_56:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_177_41
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_177_41
                        mov              r8, rax;                             jmp   .Lpartition$2F4_α_177_40
.Lpartition$2F4_α_177_41:
                        lea              r9, [rsp + 352]
.Lpartition$2F4_α_177_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lpartition$2F4_α_177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_177_43
                        cmp              esi, 1;                              jne   .Lpartition$2F4_α_177_57
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_177_42
.Lpartition$2F4_α_177_57:
                        cmp              esi, 2;                              jne   .Lpartition$2F4_α_177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_177_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_177_42
.Lpartition$2F4_α_177_58:
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lpartition$2F4_α_177_43
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_177_43
                        mov              r9, rax;                             jmp   .Lpartition$2F4_α_177_42
.Lpartition$2F4_α_177_43:
                        cmp              r8, r9;                              je    .Lpartition$2F4_α_177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_177_44
                        cmp              al, 104;                             je    .Lpartition$2F4_α_177_44
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lpartition$2F4_α_177_44
                                                                              jmp   .Lpartition$2F4_α_177_45
.Lpartition$2F4_α_177_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_177_53
                        cmp              al, 104;                             je    .Lpartition$2F4_α_177_53
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_177_53
                                                                              jmp   .Lpartition$2F4_α_177_46
.Lpartition$2F4_α_177_46:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_177_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lpartition$2F4_α_177_51
.Lpartition$2F4_α_177_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lpartition$2F4_α_177_47
                        cmp              al, 104;                             je    .Lpartition$2F4_α_177_47
                        cmp              al, 72;                              jne   .Lpartition$2F4_α_177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lpartition$2F4_α_177_47
                                                                              jmp   .Lpartition$2F4_α_177_48
.Lpartition$2F4_α_177_47:
                        lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lpartition$2F4_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lpartition$2F4_α_177_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lpartition$2F4_α_177_51
.Lpartition$2F4_α_177_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lpartition$2F4_α_177_49
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_177_53
                                                                              jmp   .Lpartition$2F4_α_177_52
.Lpartition$2F4_α_177_49:
                        cmp              dl, 80;                              je    .Lpartition$2F4_α_177_52
                        cmp              cl, 5;                               je    .Lpartition$2F4_α_177_53
                        cmp              dl, 5;                               je    .Lpartition$2F4_α_177_53
                        cmp              cl, 3;                               jne   .Lpartition$2F4_α_177_50
                        cmp              dl, 3;                               jne   .Lpartition$2F4_α_177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lpartition$2F4_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lpartition$2F4_α_177_51
                                                                              jmp   .Lpartition$2F4_α_177_52
.Lpartition$2F4_α_177_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lpartition$2F4_α_177_53
.Lpartition$2F4_α_177_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lpartition$2F4_α_177_54
.Lpartition$2F4_α_177_52:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lpartition$2F4_α_177_54
.Lpartition$2F4_α_177_53:
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lpartition$2F4_α_177_54:
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n65_var_ref_α
n64_call_prolog_β:      mov              r11, 65;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n66_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rsp + 304], 2             # result
                        mov              dword ptr [rsp + 308], 2
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_180_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n67_call_prolog_α
.Lpartition$2F4_α_180_0:
                        .quad            .Lpartition$2F4_α_180_0_s
.Lpartition$2F4_α_180_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n67_call_prolog_α:      mov              r11, 68
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 256], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 264], rax
                        lea              rdi, [rsp + 256]
                        mov              rsi, qword ptr [rip + .Lpartition$2F4_α_181_2]
                                                                              jmp   .Lpartition$2F4_α_181_3
.Lpartition$2F4_α_181_2:
                        .quad            .Lpartition$2F4_α_181_2_s
.Lpartition$2F4_α_181_2_s:
                        .string          "[]"
.Lpartition$2F4_α_181_3:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 240], rax
                        mov              qword ptr [rsp + 248], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n68_var_ref_α
n67_call_prolog_β:      mov              r11, 68;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n69_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 70
                        mov              qword ptr [rsp + 224], 2             # result
                        mov              dword ptr [rsp + 228], 2
                        mov              rax, qword ptr [rip + .Lpartition$2F4_α_184_0]
                        mov              qword ptr [rsp + 232], rax;          jmp   n70_call_prolog_α
.Lpartition$2F4_α_184_0:
                        .quad            .Lpartition$2F4_α_184_0_s
.Lpartition$2F4_α_184_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n70_call_prolog_α:      mov              r11, 71
                        mov              rax, qword ptr [rsp + 208]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 216]
                        mov              qword ptr [rsp + 184], rax
                        lea              rdi, [rsp + 176]
                        mov              rsi, qword ptr [rip + .Lpartition$2F4_α_185_2]
                                                                              jmp   .Lpartition$2F4_α_185_3
.Lpartition$2F4_α_185_2:
                        .quad            .Lpartition$2F4_α_185_2_s
.Lpartition$2F4_α_185_2_s:
                        .string          "[]"
.Lpartition$2F4_α_185_3:
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 160], rax
                        mov              qword ptr [rsp + 168], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n71_suspend_α
n70_call_prolog_β:      mov              r11, 71;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:          mov              r11, 72
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lpartition$2F4_α_187_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2080];         jmp   rax
.Lpartition$2F4_α_187_61:
                        mov              rdi, qword ptr [rsp + 80]
                        mov              rsi, qword ptr [rsp + 88]
                        lea              rdx, [rip + n71_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n71_suspend_β]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 8], rax;            jmp   partition$2F4_γ
n71_suspend_β:          mov              r11, 72;                             jmp   n72_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n72_call_prolog_α:      mov              r11, 73
                        mov              rax, qword ptr [rsp + 80]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 88]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   partition$2F4_ω
n72_call_prolog_β:      mov              r11, 73;                             jmp   partition$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_β:
                                                                              jmp   n28_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lpartition$2F4_α_188_50
                        mov              qword ptr [rsp + 2080], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 2080];         jmp   rax
.Lpartition$2F4_α_188_50:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2216]
                        add              rsp, 2240;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_ω:
                        mov              rcx, qword ptr [rsp + 2224]
                        add              rsp, 2240;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__qsort$2F3:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rsp
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1632
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
qsort$2F3_α_body:
                        lea              rax, [rip + n220_suspend_β]
                        mov              qword ptr [rsp + 1488], rax
#-----------------------------------------------------------------------------------------------------------------------
n189_call_prolog_α:     mov              r11, 74
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lqsort$2F3_α_237_102
                        mov              rax, qword ptr [rsp + 64]
                        mov              rdx, qword ptr [rsp + 72];           jmp   .Lqsort$2F3_α_237_101
.Lqsort$2F3_α_237_102:  lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_237_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lqsort$2F3_α_237_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lqsort$2F3_α_237_101
.Lqsort$2F3_α_237_100:  lea              rdi, [rsp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_237_101:  mov              qword ptr [rsp + 64], rax
                        mov              qword ptr [rsp + 72], rdx
                        cmp              al, 104;                             je    qsort$2F3_ω
                                                                              jmp   n190_var_ref_α
n189_call_prolog_β:     mov              r11, 74;                             jmp   qsort$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n191_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Lqsort$2F3_α_240_0]
                        mov              qword ptr [rsp + 1464], rax;         jmp   n192_lit_integer_α
.Lqsort$2F3_α_240_0:    .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rsp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Lqsort$2F3_α_241_0]
                        mov              qword ptr [rsp + 1480], rax;         jmp   n193_call_prolog_α
.Lqsort$2F3_α_241_0:    .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n193_call_prolog_α:     mov              r11, 78
                        mov              rax, qword ptr [rsp + 1472]
                        mov              qword ptr [rsp + 1424], rax
                        mov              rax, qword ptr [rsp + 1480]
                        mov              qword ptr [rsp + 1432], rax
                        mov              rax, qword ptr [rsp + 1456]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1464]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        lea              r8, [rsp + 1392]
.Lqsort$2F3_α_242_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_242_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_242_111
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_242_112
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_242_110
.Lqsort$2F3_α_242_112:  cmp              esi, 2;                              jne   .Lqsort$2F3_α_242_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_242_111
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_242_110
.Lqsort$2F3_α_242_113:  cmp              al, 72;                              jne   .Lqsort$2F3_α_242_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_242_111
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_242_111
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_242_110
.Lqsort$2F3_α_242_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_242_114
                        cmp              al, 104;                             je    .Lqsort$2F3_α_242_114
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_242_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_242_114
                                                                              jmp   .Lqsort$2F3_α_242_118
.Lqsort$2F3_α_242_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lqsort$2F3_α_242_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lqsort$2F3_α_242_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lqsort$2F3_α_242_115
                                                                              jmp   .Lqsort$2F3_α_242_114
.Lqsort$2F3_α_242_119:  cmp              al, 3;                               jne   .Lqsort$2F3_α_242_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lqsort$2F3_α_242_114
                                                                              jmp   .Lqsort$2F3_α_242_115
.Lqsort$2F3_α_242_120:  cmp              al, 2;                               jne   .Lqsort$2F3_α_242_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lqsort$2F3_α_242_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lqsort$2F3_α_242_114
                                                                              jmp   .Lqsort$2F3_α_242_115
.Lqsort$2F3_α_242_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Lqsort$2F3_α_242_117
.Lqsort$2F3_α_242_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_242_117
.Lqsort$2F3_α_242_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_242_117:  mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n222_var_ref_α
                                                                              jmp   n194_var_ref_α
n193_call_prolog_β:     mov              r11, 78;                             jmp   n222_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1264], rax
                        mov              qword ptr [rsp + 1272], rdx;         jmp   n195_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1344], rax
                        mov              qword ptr [rsp + 1352], rdx;         jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1360], rax
                        mov              qword ptr [rsp + 1368], rdx;         jmp   n197_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n197_call_prolog_α:     mov              r11, 82
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1296], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1304], rax
                        lea              rdi, [rsp + 1296]
                        lea              r8, [rsp + 1296]
.Lqsort$2F3_α_249_60:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_249_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_61
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_249_62
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_249_60
.Lqsort$2F3_α_249_62:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_249_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_61
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_249_60
.Lqsort$2F3_α_249_63:   cmp              al, 72;                              jne   .Lqsort$2F3_α_249_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_61
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_249_61
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_249_60
.Lqsort$2F3_α_249_61:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_249_80
                        cmp              al, 104;                             je    .Lqsort$2F3_α_249_80
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_249_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_249_80
                                                                              jmp   .Lqsort$2F3_α_249_74
.Lqsort$2F3_α_249_74:   mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lqsort$2F3_α_249_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lqsort$2F3_α_249_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lqsort$2F3_α_249_73
                        lea              r9, [rsp + 1312]
.Lqsort$2F3_α_249_64:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_249_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_65
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_249_66
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_249_64
.Lqsort$2F3_α_249_66:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_249_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_65
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_249_64
.Lqsort$2F3_α_249_67:   cmp              al, 72;                              jne   .Lqsort$2F3_α_249_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_65
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_249_65
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_249_64
.Lqsort$2F3_α_249_65:   lea              rcx, [rsp + 1328]
.Lqsort$2F3_α_249_68:   mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_249_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_69
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_249_70
                        mov              rcx, rax;                            jmp   .Lqsort$2F3_α_249_68
.Lqsort$2F3_α_249_70:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_249_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_69
                        mov              rcx, rax;                            jmp   .Lqsort$2F3_α_249_68
.Lqsort$2F3_α_249_71:   cmp              al, 72;                              jne   .Lqsort$2F3_α_249_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_69
                        cmp              rax, rcx;                            je    .Lqsort$2F3_α_249_69
                        mov              rcx, rax;                            jmp   .Lqsort$2F3_α_249_68
.Lqsort$2F3_α_249_69:   cmp              r9, rcx;                             je    .Lqsort$2F3_α_249_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_249_75
                        cmp              al, 104;                             je    .Lqsort$2F3_α_249_75
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_249_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_249_75
                                                                              jmp   .Lqsort$2F3_α_249_72
.Lqsort$2F3_α_249_75:   mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_249_76
                        cmp              al, 104;                             je    .Lqsort$2F3_α_249_76
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_249_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lqsort$2F3_α_249_76
                                                                              jmp   .Lqsort$2F3_α_249_72
.Lqsort$2F3_α_249_76:   lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lqsort$2F3_α_249_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_249_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lqsort$2F3_α_249_77
.Lqsort$2F3_α_249_80:   lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lqsort$2F3_α_249_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lqsort$2F3_α_249_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lqsort$2F3_α_249_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lqsort$2F3_α_249_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_249_72
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
                        lea              r9, [rsp + 1312]
.Lqsort$2F3_α_249_81:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_249_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_82
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_249_83
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_249_81
.Lqsort$2F3_α_249_83:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_249_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_82
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_249_81
.Lqsort$2F3_α_249_84:   cmp              al, 72;                              jne   .Lqsort$2F3_α_249_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_82
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_249_82
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_249_81
.Lqsort$2F3_α_249_82:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_249_85
                        cmp              al, 104;                             je    .Lqsort$2F3_α_249_85
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_249_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_249_85
                                                                              jmp   .Lqsort$2F3_α_249_86
.Lqsort$2F3_α_249_85:   mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lqsort$2F3_α_249_87
.Lqsort$2F3_α_249_86:   mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lqsort$2F3_α_249_87:   lea              rcx, [rsp + 1328]
.Lqsort$2F3_α_249_88:   mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_249_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_89
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_249_90
                        mov              rcx, rax;                            jmp   .Lqsort$2F3_α_249_88
.Lqsort$2F3_α_249_90:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_249_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_89
                        mov              rcx, rax;                            jmp   .Lqsort$2F3_α_249_88
.Lqsort$2F3_α_249_91:   cmp              al, 72;                              jne   .Lqsort$2F3_α_249_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_249_89
                        cmp              rax, rcx;                            je    .Lqsort$2F3_α_249_89
                        mov              rcx, rax;                            jmp   .Lqsort$2F3_α_249_88
.Lqsort$2F3_α_249_89:   mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_249_92
                        cmp              al, 104;                             je    .Lqsort$2F3_α_249_92
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_249_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lqsort$2F3_α_249_92
                                                                              jmp   .Lqsort$2F3_α_249_93
.Lqsort$2F3_α_249_92:   mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lqsort$2F3_α_249_94
.Lqsort$2F3_α_249_93:   mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lqsort$2F3_α_249_94:   lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lqsort$2F3_α_249_77
.Lqsort$2F3_α_249_73:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_249_77
.Lqsort$2F3_α_249_72:   mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_249_77:   mov              qword ptr [rsp + 1280], rax
                        mov              qword ptr [rsp + 1288], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n198_var_ref_α
n197_call_prolog_β:     mov              r11, 82;                             jmp   n221_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1232], rax
                        mov              qword ptr [rsp + 1240], rdx;         jmp   n199_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 1248], rax
                        mov              qword ptr [rsp + 1256], rdx;         jmp   n200_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n200_call_prolog_α:     mov              r11, 85
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
.Lqsort$2F3_α_254_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_254_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_254_41
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_254_55
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_254_40
.Lqsort$2F3_α_254_55:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_254_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_254_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_254_40
.Lqsort$2F3_α_254_56:   cmp              al, 72;                              jne   .Lqsort$2F3_α_254_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_254_41
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_254_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_254_40
.Lqsort$2F3_α_254_41:   lea              r9, [rsp + 1216]
.Lqsort$2F3_α_254_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_254_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_254_43
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_254_57
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_254_42
.Lqsort$2F3_α_254_57:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_254_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_254_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_254_42
.Lqsort$2F3_α_254_58:   cmp              al, 72;                              jne   .Lqsort$2F3_α_254_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_254_43
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_254_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_254_42
.Lqsort$2F3_α_254_43:   cmp              r8, r9;                              je    .Lqsort$2F3_α_254_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_254_44
                        cmp              al, 104;                             je    .Lqsort$2F3_α_254_44
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_254_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_254_44
                                                                              jmp   .Lqsort$2F3_α_254_45
.Lqsort$2F3_α_254_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_254_53
                        cmp              al, 104;                             je    .Lqsort$2F3_α_254_53
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_254_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_254_53
                                                                              jmp   .Lqsort$2F3_α_254_46
.Lqsort$2F3_α_254_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_254_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_254_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lqsort$2F3_α_254_51
.Lqsort$2F3_α_254_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_254_47
                        cmp              al, 104;                             je    .Lqsort$2F3_α_254_47
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_254_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_254_47
                                                                              jmp   .Lqsort$2F3_α_254_48
.Lqsort$2F3_α_254_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_254_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_254_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lqsort$2F3_α_254_51
.Lqsort$2F3_α_254_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lqsort$2F3_α_254_49
                        cmp              dl, 80;                              je    .Lqsort$2F3_α_254_53
                                                                              jmp   .Lqsort$2F3_α_254_52
.Lqsort$2F3_α_254_49:   cmp              dl, 80;                              je    .Lqsort$2F3_α_254_52
                        cmp              cl, 5;                               je    .Lqsort$2F3_α_254_53
                        cmp              dl, 5;                               je    .Lqsort$2F3_α_254_53
                        cmp              cl, 3;                               jne   .Lqsort$2F3_α_254_50
                        cmp              dl, 3;                               jne   .Lqsort$2F3_α_254_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_254_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lqsort$2F3_α_254_51
                                                                              jmp   .Lqsort$2F3_α_254_52
.Lqsort$2F3_α_254_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_254_53
.Lqsort$2F3_α_254_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lqsort$2F3_α_254_54
.Lqsort$2F3_α_254_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_254_54
.Lqsort$2F3_α_254_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_254_54:   mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n201_var_ref_α
n200_call_prolog_β:     mov              r11, 85;                             jmp   n221_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1152], rax
                        mov              qword ptr [rsp + 1160], rdx;         jmp   n202_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 1168], rax
                        mov              qword ptr [rsp + 1176], rdx;         jmp   n203_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n203_call_prolog_α:     mov              r11, 88
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
.Lqsort$2F3_α_259_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_259_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_259_41
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_259_55
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_259_40
.Lqsort$2F3_α_259_55:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_259_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_259_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_259_40
.Lqsort$2F3_α_259_56:   cmp              al, 72;                              jne   .Lqsort$2F3_α_259_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_259_41
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_259_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_259_40
.Lqsort$2F3_α_259_41:   lea              r9, [rsp + 1136]
.Lqsort$2F3_α_259_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_259_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_259_43
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_259_57
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_259_42
.Lqsort$2F3_α_259_57:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_259_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_259_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_259_42
.Lqsort$2F3_α_259_58:   cmp              al, 72;                              jne   .Lqsort$2F3_α_259_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_259_43
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_259_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_259_42
.Lqsort$2F3_α_259_43:   cmp              r8, r9;                              je    .Lqsort$2F3_α_259_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_259_44
                        cmp              al, 104;                             je    .Lqsort$2F3_α_259_44
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_259_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_259_44
                                                                              jmp   .Lqsort$2F3_α_259_45
.Lqsort$2F3_α_259_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_259_53
                        cmp              al, 104;                             je    .Lqsort$2F3_α_259_53
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_259_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_259_53
                                                                              jmp   .Lqsort$2F3_α_259_46
.Lqsort$2F3_α_259_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_259_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_259_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lqsort$2F3_α_259_51
.Lqsort$2F3_α_259_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_259_47
                        cmp              al, 104;                             je    .Lqsort$2F3_α_259_47
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_259_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_259_47
                                                                              jmp   .Lqsort$2F3_α_259_48
.Lqsort$2F3_α_259_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_259_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_259_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lqsort$2F3_α_259_51
.Lqsort$2F3_α_259_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lqsort$2F3_α_259_49
                        cmp              dl, 80;                              je    .Lqsort$2F3_α_259_53
                                                                              jmp   .Lqsort$2F3_α_259_52
.Lqsort$2F3_α_259_49:   cmp              dl, 80;                              je    .Lqsort$2F3_α_259_52
                        cmp              cl, 5;                               je    .Lqsort$2F3_α_259_53
                        cmp              dl, 5;                               je    .Lqsort$2F3_α_259_53
                        cmp              cl, 3;                               jne   .Lqsort$2F3_α_259_50
                        cmp              dl, 3;                               jne   .Lqsort$2F3_α_259_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_259_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lqsort$2F3_α_259_51
                                                                              jmp   .Lqsort$2F3_α_259_52
.Lqsort$2F3_α_259_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_259_53
.Lqsort$2F3_α_259_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lqsort$2F3_α_259_54
.Lqsort$2F3_α_259_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_259_54
.Lqsort$2F3_α_259_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_259_54:   mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n204_var_ref_α
n203_call_prolog_β:     mov              r11, 88;                             jmp   n221_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1600]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1048], rdx;         jmp   n205_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 1056], rax
                        mov              qword ptr [rsp + 1064], rdx;         jmp   n206_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n207_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n208_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              r11, 93
                        mov              qword ptr [rsp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_269_200
                        mov              rax, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lqsort$2F3_α_269_201
.Lqsort$2F3_α_269_200:  mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_269_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_269_202
                        mov              rax, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lqsort$2F3_α_269_203
.Lqsort$2F3_α_269_202:  mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_269_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_269_204
                        mov              rax, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lqsort$2F3_α_269_205
.Lqsort$2F3_α_269_204:  mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_269_205:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_269_206
                        mov              rax, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lqsort$2F3_α_269_207
.Lqsort$2F3_α_269_206:  mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_269_207:  lea              rax, [rip + .Lqsort$2F3_α_269_7]
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lqsort$2F3_α_269_1
                        lea              rcx, [rip + .Lqsort$2F3_α_269_4]
                        push             rcx
                        lea              rcx, [rip + .Lqsort$2F3_α_269_3]
                        push             rcx
                        lea              rdx, [rip + .Lqsort$2F3_α_269_4];    jmp   rax
.Lqsort$2F3_α_269_3:    add              rsp, 16
                        mov              qword ptr [rsp + 1016], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lqsort$2F3_α_269_5
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lqsort$2F3_α_269_2
.Lqsort$2F3_α_269_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lqsort$2F3_α_269_2
.Lqsort$2F3_α_269_4:    add              rsp, 16
                        mov              rax, qword ptr [rsp + 1008]
                        test             rax, rax;                            jne   .Lqsort$2F3_α_269_6
                        mov              qword ptr [rsp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lqsort$2F3_α_269_2
.Lqsort$2F3_α_269_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lqsort$2F3_α_269_2
.Lqsort$2F3_α_269_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_269_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lqsort$2F3_α_269_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 928]
                        mov              rdx, qword ptr [rsp + 936]
.Lqsort$2F3_α_269_29:   mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n209_var_ref_α
n208_call_proc_staged_β:
                        mov              r11, 93
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 1008], 0
                        lea              rdi, [rsp + 1024]
                        lea              rsi, [rsp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n221_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 1024]
                        mov              rdx, qword ptr [rsp + 1032]
                        mov              ecx, 80
                        mov              r8d, 2080
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 1040]
                        mov              rdx, qword ptr [rsp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 1056]
                        mov              rdx, qword ptr [rsp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 1072]
                        mov              rdx, qword ptr [rsp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rsp + 1088]
                        mov              rdx, qword ptr [rsp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n221_call_prolog_α
                        lea              r8, [rip + .Lqsort$2F3_α_269_7]
                        push             r8
                        lea              rcx, [rip + .Lqsort$2F3_α_269_4]
                        push             rcx
                        lea              rcx, [rip + .Lqsort$2F3_α_269_3]
                        push             rcx
                        lea              rdx, [rip + .Lqsort$2F3_α_269_4];    jmp   rax
.Lqsort$2F3_α_269_7:    add              rsp, 8
                        mov              qword ptr [rsp + 928], rax
                        mov              qword ptr [rsp + 936], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n209_var_ref_α
.Lqsort$2F3_β_269_0:    .quad            .Lqsort$2F3_β_269_0_s
.Lqsort$2F3_β_269_0_s:  .string          "partition/4"
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1568]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx;          jmp   n210_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 896], rax
                        mov              qword ptr [rsp + 904], rdx;          jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1584]
                        mov              qword ptr [rsp + 912], rax
                        mov              qword ptr [rsp + 920], rdx;          jmp   n212_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              r11, 97
                        mov              qword ptr [rsp + 848], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_277_200
                        mov              rax, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lqsort$2F3_α_277_201
.Lqsort$2F3_α_277_200:  mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_277_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_277_202
                        mov              rax, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lqsort$2F3_α_277_203
.Lqsort$2F3_α_277_202:  mov              edi, 1
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_277_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_277_204
                        mov              rax, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lqsort$2F3_α_277_205
.Lqsort$2F3_α_277_204:  mov              edi, 2
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_277_205:  lea              rax, [rip + .Lqsort$2F3_α_277_7]
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
                        test             rax, rax;                            je    .Lqsort$2F3_α_277_1
                        lea              rcx, [rip + .Lqsort$2F3_α_277_4]
                        push             rcx
                        lea              rcx, [rip + .Lqsort$2F3_α_277_3]
                        push             rcx
                        lea              rdx, [rip + .Lqsort$2F3_α_277_4];    jmp   rax
.Lqsort$2F3_α_277_3:    add              rsp, 16
                        mov              qword ptr [rsp + 856], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lqsort$2F3_α_277_5
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lqsort$2F3_α_277_2
.Lqsort$2F3_α_277_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lqsort$2F3_α_277_2
.Lqsort$2F3_α_277_4:    add              rsp, 16
                        mov              rax, qword ptr [rsp + 848]
                        test             rax, rax;                            jne   .Lqsort$2F3_α_277_6
                        mov              qword ptr [rsp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lqsort$2F3_α_277_2
.Lqsort$2F3_α_277_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lqsort$2F3_α_277_2
.Lqsort$2F3_α_277_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_277_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lqsort$2F3_α_277_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 784]
                        mov              rdx, qword ptr [rsp + 792]
.Lqsort$2F3_α_277_29:   mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n213_var_ref_α
n212_call_proc_staged_β:
                        mov              r11, 97
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 848], 0
                        lea              rdi, [rsp + 864]
                        lea              rsi, [rsp + 872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n208_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 864]
                        mov              rdx, qword ptr [rsp + 872]
                        mov              ecx, 64
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 880]
                        mov              rdx, qword ptr [rsp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 896]
                        mov              rdx, qword ptr [rsp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 912]
                        mov              rdx, qword ptr [rsp + 920]
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
                        test             rax, rax;                            je    n208_call_proc_staged_β
                        lea              r8, [rip + .Lqsort$2F3_α_277_7]
                        push             r8
                        lea              rcx, [rip + .Lqsort$2F3_α_277_4]
                        push             rcx
                        lea              rcx, [rip + .Lqsort$2F3_α_277_3]
                        push             rcx
                        lea              rdx, [rip + .Lqsort$2F3_α_277_4];    jmp   rax
.Lqsort$2F3_α_277_7:    add              rsp, 8
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n213_var_ref_α
.Lqsort$2F3_β_277_0:    .quad            .Lqsort$2F3_β_277_0_s
.Lqsort$2F3_β_277_0_s:  .string          "qsort/3"
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1520]
                        mov              qword ptr [rsp + 624], rax
                        mov              qword ptr [rsp + 632], rdx;          jmp   n214_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 640], rax
                        mov              qword ptr [rsp + 648], rdx;          jmp   n215_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rsp + 768], 2             # result
                        mov              dword ptr [rsp + 772], 1
                        mov              rax, qword ptr [rip + .Lqsort$2F3_α_282_0]
                        mov              qword ptr [rsp + 776], rax;          jmp   n216_var_ref_α
.Lqsort$2F3_α_282_0:    .quad            .Lqsort$2F3_α_282_0_s
.Lqsort$2F3_α_282_0_s:  .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1552]
                        mov              qword ptr [rsp + 672], rax
                        mov              qword ptr [rsp + 680], rdx;          jmp   n217_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1536]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx;          jmp   n218_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n218_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 736], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 744], rax
                        mov              rax, qword ptr [rsp + 672]
                        mov              qword ptr [rsp + 720], rax
                        mov              rax, qword ptr [rsp + 680]
                        mov              qword ptr [rsp + 728], rax
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 712], rax
                        lea              rdi, [rsp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 688], rax
                        mov              qword ptr [rsp + 696], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n219_call_proc_staged_α
n218_call_prolog_β:     mov              r11, 103;                            jmp   n221_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              r11, 104
                        mov              qword ptr [rsp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_289_200
                        mov              rax, qword ptr [rsp + 624]
                        mov              rdx, qword ptr [rsp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lqsort$2F3_α_289_201
.Lqsort$2F3_α_289_200:  mov              edi, 0
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
.Lqsort$2F3_α_289_201:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_289_202
                        mov              rax, qword ptr [rsp + 640]
                        mov              rdx, qword ptr [rsp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lqsort$2F3_α_289_203
.Lqsort$2F3_α_289_202:  mov              edi, 1
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
.Lqsort$2F3_α_289_203:  lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lqsort$2F3_α_289_204
                        mov              rax, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lqsort$2F3_α_289_205
.Lqsort$2F3_α_289_204:  mov              edi, 2
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_289_205:  lea              rax, [rip + .Lqsort$2F3_α_289_7]
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
                        test             rax, rax;                            je    .Lqsort$2F3_α_289_1
                        lea              rcx, [rip + .Lqsort$2F3_α_289_4]
                        push             rcx
                        lea              rcx, [rip + .Lqsort$2F3_α_289_3]
                        push             rcx
                        lea              rdx, [rip + .Lqsort$2F3_α_289_4];    jmp   rax
.Lqsort$2F3_α_289_3:    add              rsp, 16
                        mov              qword ptr [rsp + 600], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lqsort$2F3_α_289_5
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lqsort$2F3_α_289_2
.Lqsort$2F3_α_289_5:    call             rt_gen_spine_pass_γ@PLT;             jmp   .Lqsort$2F3_α_289_2
.Lqsort$2F3_α_289_4:    add              rsp, 16
                        mov              rax, qword ptr [rsp + 592]
                        test             rax, rax;                            jne   .Lqsort$2F3_α_289_6
                        mov              qword ptr [rsp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lqsort$2F3_α_289_2
.Lqsort$2F3_α_289_6:    call             rt_gen_spine_pass_ω@PLT;             jmp   .Lqsort$2F3_α_289_2
.Lqsort$2F3_α_289_1:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_289_2:    mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lqsort$2F3_α_289_29
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
.Lqsort$2F3_α_289_29:   mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n212_call_proc_staged_β
                                                                              jmp   n220_suspend_α
n219_call_proc_staged_β:
                        mov              r11, 104
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
                        test             rax, rax;                            je    n212_call_proc_staged_β
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 608]
                        mov              rdx, qword ptr [rsp + 616]
                        mov              ecx, 64
                        mov              r8d, 1488
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
                        mov              rsi, qword ptr [rsp + 688]
                        mov              rdx, qword ptr [rsp + 696]
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
                        test             rax, rax;                            je    n212_call_proc_staged_β
                        lea              r8, [rip + .Lqsort$2F3_α_289_7]
                        push             r8
                        lea              rcx, [rip + .Lqsort$2F3_α_289_4]
                        push             rcx
                        lea              rcx, [rip + .Lqsort$2F3_α_289_3]
                        push             rcx
                        lea              rdx, [rip + .Lqsort$2F3_α_289_4];    jmp   rax
.Lqsort$2F3_α_289_7:    add              rsp, 8
                        mov              qword ptr [rsp + 528], rax
                        mov              qword ptr [rsp + 536], rdx
                        cmp              al, 104;                             je    n212_call_proc_staged_β
                                                                              jmp   n220_suspend_α
.Lqsort$2F3_β_289_0:    .quad            .Lqsort$2F3_β_289_0_s
.Lqsort$2F3_β_289_0_s:  .string          "qsort/3"
#-----------------------------------------------------------------------------------------------------------------------
n220_suspend_α:         mov              r11, 105
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_291_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1488];         jmp   rax
.Lqsort$2F3_α_291_61:   mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n220_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n220_suspend_β]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   qsort$2F3_γ
n220_suspend_β:         mov              r11, 105;                            jmp   n219_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n221_call_prolog_α:     mov              r11, 106
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
                        cmp              al, 104;                             je    qsort$2F3_ω
                                                                              jmp   n222_var_ref_α
n221_call_prolog_β:     mov              r11, 106;                            jmp   qsort$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n223_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rsp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Lqsort$2F3_α_295_0]
                        mov              qword ptr [rsp + 472], rax;          jmp   n224_lit_string_α
.Lqsort$2F3_α_295_0:    .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rsp + 480], 2             # result
                        mov              dword ptr [rsp + 484], 2
                        mov              rax, qword ptr [rip + .Lqsort$2F3_α_296_0]
                        mov              qword ptr [rsp + 488], rax;          jmp   n225_call_prolog_α
.Lqsort$2F3_α_296_0:    .quad            .Lqsort$2F3_α_296_0_s
.Lqsort$2F3_α_296_0_s:  .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n225_call_prolog_α:     mov              r11, 110
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
.Lqsort$2F3_α_297_110:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_297_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_297_111
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_297_112
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_297_110
.Lqsort$2F3_α_297_112:  cmp              esi, 2;                              jne   .Lqsort$2F3_α_297_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_297_111
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_297_110
.Lqsort$2F3_α_297_113:  cmp              al, 72;                              jne   .Lqsort$2F3_α_297_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_297_111
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_297_111
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_297_110
.Lqsort$2F3_α_297_111:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_297_114
                        cmp              al, 104;                             je    .Lqsort$2F3_α_297_114
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_297_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_297_114
                                                                              jmp   .Lqsort$2F3_α_297_118
.Lqsort$2F3_α_297_118:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lqsort$2F3_α_297_115
                        cmp              al, 3;                               je    .Lqsort$2F3_α_297_114
                        cmp              al, 2;                               jne   .Lqsort$2F3_α_297_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lqsort$2F3_α_297_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lqsort$2F3_α_297_114
                                                                              jmp   .Lqsort$2F3_α_297_116
.Lqsort$2F3_α_297_114:  mov              eax, 3
                        mov              edx, 1;                              jmp   .Lqsort$2F3_α_297_117
.Lqsort$2F3_α_297_115:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_297_117
.Lqsort$2F3_α_297_116:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_297_117:  mov              qword ptr [rsp + 384], rax
                        mov              qword ptr [rsp + 392], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n226_var_ref_α
n225_call_prolog_β:     mov              r11, 110;                            jmp   n236_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 352], rax
                        mov              qword ptr [rsp + 360], rdx;          jmp   n227_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rsp + 368], 2             # result
                        mov              dword ptr [rsp + 372], 2
                        mov              rax, qword ptr [rip + .Lqsort$2F3_α_300_0]
                        mov              qword ptr [rsp + 376], rax;          jmp   n228_call_prolog_α
.Lqsort$2F3_α_300_0:    .quad            .Lqsort$2F3_α_300_0_s
.Lqsort$2F3_α_300_0_s:  .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n228_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 320], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 328], rax
                        lea              rdi, [rsp + 320]
                        mov              rsi, qword ptr [rip + .Lqsort$2F3_α_301_2]
                                                                              jmp   .Lqsort$2F3_α_301_3
.Lqsort$2F3_α_301_2:    .quad            .Lqsort$2F3_α_301_2_s
.Lqsort$2F3_α_301_2_s:  .string          "[]"
.Lqsort$2F3_α_301_3:    mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n229_var_ref_α
n228_call_prolog_β:     mov              r11, 113;                            jmp   n236_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n230_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n231_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n231_call_prolog_α:     mov              r11, 116
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
.Lqsort$2F3_α_306_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_306_41
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_306_55
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_306_40
.Lqsort$2F3_α_306_55:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_306_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_306_40
.Lqsort$2F3_α_306_56:   cmp              al, 72;                              jne   .Lqsort$2F3_α_306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_306_41
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_306_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_306_40
.Lqsort$2F3_α_306_41:   lea              r9, [rsp + 256]
.Lqsort$2F3_α_306_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_306_43
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_306_57
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_306_42
.Lqsort$2F3_α_306_57:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_306_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_306_42
.Lqsort$2F3_α_306_58:   cmp              al, 72;                              jne   .Lqsort$2F3_α_306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_306_43
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_306_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_306_42
.Lqsort$2F3_α_306_43:   cmp              r8, r9;                              je    .Lqsort$2F3_α_306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_306_44
                        cmp              al, 104;                             je    .Lqsort$2F3_α_306_44
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_306_44
                                                                              jmp   .Lqsort$2F3_α_306_45
.Lqsort$2F3_α_306_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_306_53
                        cmp              al, 104;                             je    .Lqsort$2F3_α_306_53
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_306_53
                                                                              jmp   .Lqsort$2F3_α_306_46
.Lqsort$2F3_α_306_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_306_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_306_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lqsort$2F3_α_306_51
.Lqsort$2F3_α_306_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_306_47
                        cmp              al, 104;                             je    .Lqsort$2F3_α_306_47
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_306_47
                                                                              jmp   .Lqsort$2F3_α_306_48
.Lqsort$2F3_α_306_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_306_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_306_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lqsort$2F3_α_306_51
.Lqsort$2F3_α_306_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lqsort$2F3_α_306_49
                        cmp              dl, 80;                              je    .Lqsort$2F3_α_306_53
                                                                              jmp   .Lqsort$2F3_α_306_52
.Lqsort$2F3_α_306_49:   cmp              dl, 80;                              je    .Lqsort$2F3_α_306_52
                        cmp              cl, 5;                               je    .Lqsort$2F3_α_306_53
                        cmp              dl, 5;                               je    .Lqsort$2F3_α_306_53
                        cmp              cl, 3;                               jne   .Lqsort$2F3_α_306_50
                        cmp              dl, 3;                               jne   .Lqsort$2F3_α_306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lqsort$2F3_α_306_51
                                                                              jmp   .Lqsort$2F3_α_306_52
.Lqsort$2F3_α_306_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_306_53
.Lqsort$2F3_α_306_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lqsort$2F3_α_306_54
.Lqsort$2F3_α_306_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_306_54
.Lqsort$2F3_α_306_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_306_54:   mov              qword ptr [rsp + 224], rax
                        mov              qword ptr [rsp + 232], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n232_var_ref_α
n231_call_prolog_β:     mov              r11, 116;                            jmp   n236_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx;          jmp   n233_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 1504]
                        mov              qword ptr [rsp + 208], rax
                        mov              qword ptr [rsp + 216], rdx;          jmp   n234_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n234_call_prolog_α:     mov              r11, 119
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
.Lqsort$2F3_α_311_40:   mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_311_41
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_311_55
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_311_40
.Lqsort$2F3_α_311_55:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_311_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_311_40
.Lqsort$2F3_α_311_56:   cmp              al, 72;                              jne   .Lqsort$2F3_α_311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_311_41
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_311_41
                        mov              r8, rax;                             jmp   .Lqsort$2F3_α_311_40
.Lqsort$2F3_α_311_41:   lea              r9, [rsp + 176]
.Lqsort$2F3_α_311_42:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lqsort$2F3_α_311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_311_43
                        cmp              esi, 1;                              jne   .Lqsort$2F3_α_311_57
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_311_42
.Lqsort$2F3_α_311_57:   cmp              esi, 2;                              jne   .Lqsort$2F3_α_311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_311_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_311_42
.Lqsort$2F3_α_311_58:   cmp              al, 72;                              jne   .Lqsort$2F3_α_311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lqsort$2F3_α_311_43
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_311_43
                        mov              r9, rax;                             jmp   .Lqsort$2F3_α_311_42
.Lqsort$2F3_α_311_43:   cmp              r8, r9;                              je    .Lqsort$2F3_α_311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_311_44
                        cmp              al, 104;                             je    .Lqsort$2F3_α_311_44
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lqsort$2F3_α_311_44
                                                                              jmp   .Lqsort$2F3_α_311_45
.Lqsort$2F3_α_311_44:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_311_53
                        cmp              al, 104;                             je    .Lqsort$2F3_α_311_53
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_311_53
                                                                              jmp   .Lqsort$2F3_α_311_46
.Lqsort$2F3_α_311_46:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_311_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lqsort$2F3_α_311_51
.Lqsort$2F3_α_311_45:   mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lqsort$2F3_α_311_47
                        cmp              al, 104;                             je    .Lqsort$2F3_α_311_47
                        cmp              al, 72;                              jne   .Lqsort$2F3_α_311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lqsort$2F3_α_311_47
                                                                              jmp   .Lqsort$2F3_α_311_48
.Lqsort$2F3_α_311_47:   lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lqsort$2F3_α_311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lqsort$2F3_α_311_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lqsort$2F3_α_311_51
.Lqsort$2F3_α_311_48:   mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lqsort$2F3_α_311_49
                        cmp              dl, 80;                              je    .Lqsort$2F3_α_311_53
                                                                              jmp   .Lqsort$2F3_α_311_52
.Lqsort$2F3_α_311_49:   cmp              dl, 80;                              je    .Lqsort$2F3_α_311_52
                        cmp              cl, 5;                               je    .Lqsort$2F3_α_311_53
                        cmp              dl, 5;                               je    .Lqsort$2F3_α_311_53
                        cmp              cl, 3;                               jne   .Lqsort$2F3_α_311_50
                        cmp              dl, 3;                               jne   .Lqsort$2F3_α_311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lqsort$2F3_α_311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lqsort$2F3_α_311_51
                                                                              jmp   .Lqsort$2F3_α_311_52
.Lqsort$2F3_α_311_50:   mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lqsort$2F3_α_311_53
.Lqsort$2F3_α_311_51:   mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lqsort$2F3_α_311_54
.Lqsort$2F3_α_311_52:   mov              eax, 104
                        mov              edx, 0;                              jmp   .Lqsort$2F3_α_311_54
.Lqsort$2F3_α_311_53:   mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lqsort$2F3_α_311_54:   mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n235_suspend_α
n234_call_prolog_β:     mov              r11, 119;                            jmp   n236_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n235_suspend_α:         mov              r11, 120
                        mov              rax, qword ptr [rsp + 0]
                        test             rax, rax;                            je    .Lqsort$2F3_α_313_61
                        mov              qword ptr [rsp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1488];         jmp   rax
.Lqsort$2F3_α_313_61:   mov              rdi, qword ptr [rsp + 64]
                        mov              rsi, qword ptr [rsp + 72]
                        lea              rdx, [rip + n235_suspend_β]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_push3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        lea              rax, [rip + n235_suspend_β]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 0], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 8], rax;            jmp   qsort$2F3_γ
n235_suspend_β:         mov              r11, 120;                            jmp   n236_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_prolog_α:     mov              r11, 121
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
                        cmp              al, 104;                             je    qsort$2F3_ω
                                                                              jmp   qsort$2F3_ω
n236_call_prolog_β:     mov              r11, 121;                            jmp   qsort$2F3_ω
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_β:
                                                                              jmp   n220_suspend_β
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_γ:
                        lea              r12, [rip + g_pl_zf_pending_cursor]
                        mov              r12, qword ptr [r12]
                        test             r12, r12;                            je    .Lqsort$2F3_α_314_50
                        mov              qword ptr [rsp + 1488], r12
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 1488];         jmp   rax
.Lqsort$2F3_α_314_50:   mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1640]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1648]
                        add              rsp, 1664;                           jmp   rcx
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
                        sub              rsp, 6000
                        mov              qword ptr [rsp + 5976], rcx
                        mov              qword ptr [rsp + 5984], rdx
                        mov              qword ptr [rsp + 5992], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 5968
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
n315_call_prolog_α:     mov              r11, 122
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lmain_α_477_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lmain_α_477_101
.Lmain_α_477_102:       lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lmain_α_477_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lmain_α_477_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lmain_α_477_101
.Lmain_α_477_100:       lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_477_101:       mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n316_lit_string_α
n315_call_prolog_β:     mov              r11, 122;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rsp + 5888], 2            # result
                        mov              dword ptr [rsp + 5892], 1
                        mov              rax, qword ptr [rip + .Lmain_α_478_0]
                        mov              qword ptr [rsp + 5896], rax;         jmp   n317_lit_integer_α
.Lmain_α_478_0:         .quad            .Lmain_α_478_0_s
.Lmain_α_478_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:     mov              r11, 124
                        mov              qword ptr [rsp + 5792], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_479_0]
                        mov              qword ptr [rsp + 5800], rax;         jmp   n318_lit_string_α
.Lmain_α_479_0:         .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      mov              r11, 125
                        mov              qword ptr [rsp + 5776], 2            # result
                        mov              dword ptr [rsp + 5780], 1
                        mov              rax, qword ptr [rip + .Lmain_α_480_0]
                        mov              qword ptr [rsp + 5784], rax;         jmp   n319_lit_integer_α
.Lmain_α_480_0:         .quad            .Lmain_α_480_0_s
.Lmain_α_480_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:     mov              r11, 126
                        mov              qword ptr [rsp + 5680], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_481_0]
                        mov              qword ptr [rsp + 5688], rax;         jmp   n320_lit_string_α
.Lmain_α_481_0:         .quad            74
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 127
                        mov              qword ptr [rsp + 5664], 2            # result
                        mov              dword ptr [rsp + 5668], 1
                        mov              rax, qword ptr [rip + .Lmain_α_482_0]
                        mov              qword ptr [rsp + 5672], rax;         jmp   n321_lit_integer_α
.Lmain_α_482_0:         .quad            .Lmain_α_482_0_s
.Lmain_α_482_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:     mov              r11, 128
                        mov              qword ptr [rsp + 5568], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_483_0]
                        mov              qword ptr [rsp + 5576], rax;         jmp   n322_lit_string_α
.Lmain_α_483_0:         .quad            17
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rsp + 5552], 2            # result
                        mov              dword ptr [rsp + 5556], 1
                        mov              rax, qword ptr [rip + .Lmain_α_484_0]
                        mov              qword ptr [rsp + 5560], rax;         jmp   n323_lit_integer_α
.Lmain_α_484_0:         .quad            .Lmain_α_484_0_s
.Lmain_α_484_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     mov              r11, 130
                        mov              qword ptr [rsp + 5456], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_485_0]
                        mov              qword ptr [rsp + 5464], rax;         jmp   n324_lit_string_α
.Lmain_α_485_0:         .quad            33
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 131
                        mov              qword ptr [rsp + 5440], 2            # result
                        mov              dword ptr [rsp + 5444], 1
                        mov              rax, qword ptr [rip + .Lmain_α_486_0]
                        mov              qword ptr [rsp + 5448], rax;         jmp   n325_lit_integer_α
.Lmain_α_486_0:         .quad            .Lmain_α_486_0_s
.Lmain_α_486_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_integer_α:     mov              r11, 132
                        mov              qword ptr [rsp + 5344], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_487_0]
                        mov              qword ptr [rsp + 5352], rax;         jmp   n326_lit_string_α
.Lmain_α_487_0:         .quad            94
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rsp + 5328], 2            # result
                        mov              dword ptr [rsp + 5332], 1
                        mov              rax, qword ptr [rip + .Lmain_α_488_0]
                        mov              qword ptr [rsp + 5336], rax;         jmp   n327_lit_integer_α
.Lmain_α_488_0:         .quad            .Lmain_α_488_0_s
.Lmain_α_488_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     mov              r11, 134
                        mov              qword ptr [rsp + 5232], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_489_0]
                        mov              qword ptr [rsp + 5240], rax;         jmp   n328_lit_string_α
.Lmain_α_489_0:         .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rsp + 5216], 2            # result
                        mov              dword ptr [rsp + 5220], 1
                        mov              rax, qword ptr [rip + .Lmain_α_490_0]
                        mov              qword ptr [rsp + 5224], rax;         jmp   n329_lit_integer_α
.Lmain_α_490_0:         .quad            .Lmain_α_490_0_s
.Lmain_α_490_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_integer_α:     mov              r11, 136
                        mov              qword ptr [rsp + 5120], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_491_0]
                        mov              qword ptr [rsp + 5128], rax;         jmp   n330_lit_string_α
.Lmain_α_491_0:         .quad            46
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rsp + 5104], 2            # result
                        mov              dword ptr [rsp + 5108], 1
                        mov              rax, qword ptr [rip + .Lmain_α_492_0]
                        mov              qword ptr [rsp + 5112], rax;         jmp   n331_lit_integer_α
.Lmain_α_492_0:         .quad            .Lmain_α_492_0_s
.Lmain_α_492_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:     mov              r11, 138
                        mov              qword ptr [rsp + 5008], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_493_0]
                        mov              qword ptr [rsp + 5016], rax;         jmp   n332_lit_string_α
.Lmain_α_493_0:         .quad            83
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 139
                        mov              qword ptr [rsp + 4992], 2            # result
                        mov              dword ptr [rsp + 4996], 1
                        mov              rax, qword ptr [rip + .Lmain_α_494_0]
                        mov              qword ptr [rsp + 5000], rax;         jmp   n333_lit_integer_α
.Lmain_α_494_0:         .quad            .Lmain_α_494_0_s
.Lmain_α_494_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:     mov              r11, 140
                        mov              qword ptr [rsp + 4896], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_495_0]
                        mov              qword ptr [rsp + 4904], rax;         jmp   n334_lit_string_α
.Lmain_α_495_0:         .quad            65
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:      mov              r11, 141
                        mov              qword ptr [rsp + 4880], 2            # result
                        mov              dword ptr [rsp + 4884], 1
                        mov              rax, qword ptr [rip + .Lmain_α_496_0]
                        mov              qword ptr [rsp + 4888], rax;         jmp   n335_lit_integer_α
.Lmain_α_496_0:         .quad            .Lmain_α_496_0_s
.Lmain_α_496_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:     mov              r11, 142
                        mov              qword ptr [rsp + 4784], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_497_0]
                        mov              qword ptr [rsp + 4792], rax;         jmp   n336_lit_string_α
.Lmain_α_497_0:         .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              r11, 143
                        mov              qword ptr [rsp + 4768], 2            # result
                        mov              dword ptr [rsp + 4772], 1
                        mov              rax, qword ptr [rip + .Lmain_α_498_0]
                        mov              qword ptr [rsp + 4776], rax;         jmp   n337_lit_integer_α
.Lmain_α_498_0:         .quad            .Lmain_α_498_0_s
.Lmain_α_498_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     mov              r11, 144
                        mov              qword ptr [rsp + 4672], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_499_0]
                        mov              qword ptr [rsp + 4680], rax;         jmp   n338_lit_string_α
.Lmain_α_499_0:         .quad            32
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 145
                        mov              qword ptr [rsp + 4656], 2            # result
                        mov              dword ptr [rsp + 4660], 1
                        mov              rax, qword ptr [rip + .Lmain_α_500_0]
                        mov              qword ptr [rsp + 4664], rax;         jmp   n339_lit_integer_α
.Lmain_α_500_0:         .quad            .Lmain_α_500_0_s
.Lmain_α_500_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     mov              r11, 146
                        mov              qword ptr [rsp + 4560], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_501_0]
                        mov              qword ptr [rsp + 4568], rax;         jmp   n340_lit_string_α
.Lmain_α_501_0:         .quad            53
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rsp + 4544], 2            # result
                        mov              dword ptr [rsp + 4548], 1
                        mov              rax, qword ptr [rip + .Lmain_α_502_0]
                        mov              qword ptr [rsp + 4552], rax;         jmp   n341_lit_integer_α
.Lmain_α_502_0:         .quad            .Lmain_α_502_0_s
.Lmain_α_502_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_integer_α:     mov              r11, 148
                        mov              qword ptr [rsp + 4448], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_503_0]
                        mov              qword ptr [rsp + 4456], rax;         jmp   n342_lit_string_α
.Lmain_α_503_0:         .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rsp + 4432], 2            # result
                        mov              dword ptr [rsp + 4436], 1
                        mov              rax, qword ptr [rip + .Lmain_α_504_0]
                        mov              qword ptr [rsp + 4440], rax;         jmp   n343_lit_integer_α
.Lmain_α_504_0:         .quad            .Lmain_α_504_0_s
.Lmain_α_504_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     mov              r11, 150
                        mov              qword ptr [rsp + 4336], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_505_0]
                        mov              qword ptr [rsp + 4344], rax;         jmp   n344_lit_string_α
.Lmain_α_505_0:         .quad            85
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rsp + 4320], 2            # result
                        mov              dword ptr [rsp + 4324], 1
                        mov              rax, qword ptr [rip + .Lmain_α_506_0]
                        mov              qword ptr [rsp + 4328], rax;         jmp   n345_lit_integer_α
.Lmain_α_506_0:         .quad            .Lmain_α_506_0_s
.Lmain_α_506_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:     mov              r11, 152
                        mov              qword ptr [rsp + 4224], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_507_0]
                        mov              qword ptr [rsp + 4232], rax;         jmp   n346_lit_string_α
.Lmain_α_507_0:         .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rsp + 4208], 2            # result
                        mov              dword ptr [rsp + 4212], 1
                        mov              rax, qword ptr [rip + .Lmain_α_508_0]
                        mov              qword ptr [rsp + 4216], rax;         jmp   n347_lit_integer_α
.Lmain_α_508_0:         .quad            .Lmain_α_508_0_s
.Lmain_α_508_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:     mov              r11, 154
                        mov              qword ptr [rsp + 4112], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_509_0]
                        mov              qword ptr [rsp + 4120], rax;         jmp   n348_lit_string_α
.Lmain_α_509_0:         .quad            47
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              r11, 155
                        mov              qword ptr [rsp + 4096], 2            # result
                        mov              dword ptr [rsp + 4100], 1
                        mov              rax, qword ptr [rip + .Lmain_α_510_0]
                        mov              qword ptr [rsp + 4104], rax;         jmp   n349_lit_integer_α
.Lmain_α_510_0:         .quad            .Lmain_α_510_0_s
.Lmain_α_510_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:     mov              r11, 156
                        mov              qword ptr [rsp + 4000], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_511_0]
                        mov              qword ptr [rsp + 4008], rax;         jmp   n350_lit_string_α
.Lmain_α_511_0:         .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 157
                        mov              qword ptr [rsp + 3984], 2            # result
                        mov              dword ptr [rsp + 3988], 1
                        mov              rax, qword ptr [rip + .Lmain_α_512_0]
                        mov              qword ptr [rsp + 3992], rax;         jmp   n351_lit_integer_α
.Lmain_α_512_0:         .quad            .Lmain_α_512_0_s
.Lmain_α_512_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              r11, 158
                        mov              qword ptr [rsp + 3888], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_513_0]
                        mov              qword ptr [rsp + 3896], rax;         jmp   n352_lit_string_α
.Lmain_α_513_0:         .quad            82
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rsp + 3872], 2            # result
                        mov              dword ptr [rsp + 3876], 1
                        mov              rax, qword ptr [rip + .Lmain_α_514_0]
                        mov              qword ptr [rsp + 3880], rax;         jmp   n353_lit_integer_α
.Lmain_α_514_0:         .quad            .Lmain_α_514_0_s
.Lmain_α_514_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:     mov              r11, 160
                        mov              qword ptr [rsp + 3776], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_515_0]
                        mov              qword ptr [rsp + 3784], rax;         jmp   n354_lit_string_α
.Lmain_α_515_0:         .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              r11, 161
                        mov              qword ptr [rsp + 3760], 2            # result
                        mov              dword ptr [rsp + 3764], 1
                        mov              rax, qword ptr [rip + .Lmain_α_516_0]
                        mov              qword ptr [rsp + 3768], rax;         jmp   n355_lit_integer_α
.Lmain_α_516_0:         .quad            .Lmain_α_516_0_s
.Lmain_α_516_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              r11, 162
                        mov              qword ptr [rsp + 3664], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_517_0]
                        mov              qword ptr [rsp + 3672], rax;         jmp   n356_lit_string_α
.Lmain_α_517_0:         .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rsp + 3648], 2            # result
                        mov              dword ptr [rsp + 3652], 1
                        mov              rax, qword ptr [rip + .Lmain_α_518_0]
                        mov              qword ptr [rsp + 3656], rax;         jmp   n357_lit_integer_α
.Lmain_α_518_0:         .quad            .Lmain_α_518_0_s
.Lmain_α_518_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:     mov              r11, 164
                        mov              qword ptr [rsp + 3552], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_519_0]
                        mov              qword ptr [rsp + 3560], rax;         jmp   n358_lit_string_α
.Lmain_α_519_0:         .quad            55
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rsp + 3536], 2            # result
                        mov              dword ptr [rsp + 3540], 1
                        mov              rax, qword ptr [rip + .Lmain_α_520_0]
                        mov              qword ptr [rsp + 3544], rax;         jmp   n359_lit_integer_α
.Lmain_α_520_0:         .quad            .Lmain_α_520_0_s
.Lmain_α_520_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_integer_α:     mov              r11, 166
                        mov              qword ptr [rsp + 3440], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_521_0]
                        mov              qword ptr [rsp + 3448], rax;         jmp   n360_lit_string_α
.Lmain_α_521_0:         .quad            29
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rsp + 3424], 2            # result
                        mov              dword ptr [rsp + 3428], 1
                        mov              rax, qword ptr [rip + .Lmain_α_522_0]
                        mov              qword ptr [rsp + 3432], rax;         jmp   n361_lit_integer_α
.Lmain_α_522_0:         .quad            .Lmain_α_522_0_s
.Lmain_α_522_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:     mov              r11, 168
                        mov              qword ptr [rsp + 3328], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_523_0]
                        mov              qword ptr [rsp + 3336], rax;         jmp   n362_lit_string_α
.Lmain_α_523_0:         .quad            39
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rsp + 3312], 2            # result
                        mov              dword ptr [rsp + 3316], 1
                        mov              rax, qword ptr [rip + .Lmain_α_524_0]
                        mov              qword ptr [rsp + 3320], rax;         jmp   n363_lit_integer_α
.Lmain_α_524_0:         .quad            .Lmain_α_524_0_s
.Lmain_α_524_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_integer_α:     mov              r11, 170
                        mov              qword ptr [rsp + 3216], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_525_0]
                        mov              qword ptr [rsp + 3224], rax;         jmp   n364_lit_string_α
.Lmain_α_525_0:         .quad            81
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      mov              r11, 171
                        mov              qword ptr [rsp + 3200], 2            # result
                        mov              dword ptr [rsp + 3204], 1
                        mov              rax, qword ptr [rip + .Lmain_α_526_0]
                        mov              qword ptr [rsp + 3208], rax;         jmp   n365_lit_integer_α
.Lmain_α_526_0:         .quad            .Lmain_α_526_0_s
.Lmain_α_526_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     mov              r11, 172
                        mov              qword ptr [rsp + 3104], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_527_0]
                        mov              qword ptr [rsp + 3112], rax;         jmp   n366_lit_string_α
.Lmain_α_527_0:         .quad            90
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              r11, 173
                        mov              qword ptr [rsp + 3088], 2            # result
                        mov              dword ptr [rsp + 3092], 1
                        mov              rax, qword ptr [rip + .Lmain_α_528_0]
                        mov              qword ptr [rsp + 3096], rax;         jmp   n367_lit_integer_α
.Lmain_α_528_0:         .quad            .Lmain_α_528_0_s
.Lmain_α_528_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_integer_α:     mov              r11, 174
                        mov              qword ptr [rsp + 2992], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_529_0]
                        mov              qword ptr [rsp + 3000], rax;         jmp   n368_lit_string_α
.Lmain_α_529_0:         .quad            37
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rsp + 2976], 2            # result
                        mov              dword ptr [rsp + 2980], 1
                        mov              rax, qword ptr [rip + .Lmain_α_530_0]
                        mov              qword ptr [rsp + 2984], rax;         jmp   n369_lit_integer_α
.Lmain_α_530_0:         .quad            .Lmain_α_530_0_s
.Lmain_α_530_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_integer_α:     mov              r11, 176
                        mov              qword ptr [rsp + 2880], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_531_0]
                        mov              qword ptr [rsp + 2888], rax;         jmp   n370_lit_string_α
.Lmain_α_531_0:         .quad            10
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rsp + 2864], 2            # result
                        mov              dword ptr [rsp + 2868], 1
                        mov              rax, qword ptr [rip + .Lmain_α_532_0]
                        mov              qword ptr [rsp + 2872], rax;         jmp   n371_lit_integer_α
.Lmain_α_532_0:         .quad            .Lmain_α_532_0_s
.Lmain_α_532_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_integer_α:     mov              r11, 178
                        mov              qword ptr [rsp + 2768], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_533_0]
                        mov              qword ptr [rsp + 2776], rax;         jmp   n372_lit_string_α
.Lmain_α_533_0:         .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rsp + 2752], 2            # result
                        mov              dword ptr [rsp + 2756], 1
                        mov              rax, qword ptr [rip + .Lmain_α_534_0]
                        mov              qword ptr [rsp + 2760], rax;         jmp   n373_lit_integer_α
.Lmain_α_534_0:         .quad            .Lmain_α_534_0_s
.Lmain_α_534_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_integer_α:     mov              r11, 180
                        mov              qword ptr [rsp + 2656], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_535_0]
                        mov              qword ptr [rsp + 2664], rax;         jmp   n374_lit_string_α
.Lmain_α_535_0:         .quad            66
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rsp + 2640], 2            # result
                        mov              dword ptr [rsp + 2644], 1
                        mov              rax, qword ptr [rip + .Lmain_α_536_0]
                        mov              qword ptr [rsp + 2648], rax;         jmp   n375_lit_integer_α
.Lmain_α_536_0:         .quad            .Lmain_α_536_0_s
.Lmain_α_536_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_integer_α:     mov              r11, 182
                        mov              qword ptr [rsp + 2544], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_537_0]
                        mov              qword ptr [rsp + 2552], rax;         jmp   n376_lit_string_α
.Lmain_α_537_0:         .quad            51
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rsp + 2528], 2            # result
                        mov              dword ptr [rsp + 2532], 1
                        mov              rax, qword ptr [rip + .Lmain_α_538_0]
                        mov              qword ptr [rsp + 2536], rax;         jmp   n377_lit_integer_α
.Lmain_α_538_0:         .quad            .Lmain_α_538_0_s
.Lmain_α_538_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_integer_α:     mov              r11, 184
                        mov              qword ptr [rsp + 2432], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_539_0]
                        mov              qword ptr [rsp + 2440], rax;         jmp   n378_lit_string_α
.Lmain_α_539_0:         .quad            7
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_string_α:      mov              r11, 185
                        mov              qword ptr [rsp + 2416], 2            # result
                        mov              dword ptr [rsp + 2420], 1
                        mov              rax, qword ptr [rip + .Lmain_α_540_0]
                        mov              qword ptr [rsp + 2424], rax;         jmp   n379_lit_integer_α
.Lmain_α_540_0:         .quad            .Lmain_α_540_0_s
.Lmain_α_540_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_integer_α:     mov              r11, 186
                        mov              qword ptr [rsp + 2320], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_541_0]
                        mov              qword ptr [rsp + 2328], rax;         jmp   n380_lit_string_α
.Lmain_α_541_0:         .quad            21
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              r11, 187
                        mov              qword ptr [rsp + 2304], 2            # result
                        mov              dword ptr [rsp + 2308], 1
                        mov              rax, qword ptr [rip + .Lmain_α_542_0]
                        mov              qword ptr [rsp + 2312], rax;         jmp   n381_lit_integer_α
.Lmain_α_542_0:         .quad            .Lmain_α_542_0_s
.Lmain_α_542_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_integer_α:     mov              r11, 188
                        mov              qword ptr [rsp + 2208], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_543_0]
                        mov              qword ptr [rsp + 2216], rax;         jmp   n382_lit_string_α
.Lmain_α_543_0:         .quad            85
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rsp + 2192], 2            # result
                        mov              dword ptr [rsp + 2196], 1
                        mov              rax, qword ptr [rip + .Lmain_α_544_0]
                        mov              qword ptr [rsp + 2200], rax;         jmp   n383_lit_integer_α
.Lmain_α_544_0:         .quad            .Lmain_α_544_0_s
.Lmain_α_544_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_integer_α:     mov              r11, 190
                        mov              qword ptr [rsp + 2096], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_545_0]
                        mov              qword ptr [rsp + 2104], rax;         jmp   n384_lit_string_α
.Lmain_α_545_0:         .quad            27
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rsp + 2080], 2            # result
                        mov              dword ptr [rsp + 2084], 1
                        mov              rax, qword ptr [rip + .Lmain_α_546_0]
                        mov              qword ptr [rsp + 2088], rax;         jmp   n385_lit_integer_α
.Lmain_α_546_0:         .quad            .Lmain_α_546_0_s
.Lmain_α_546_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_integer_α:     mov              r11, 192
                        mov              qword ptr [rsp + 1984], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_547_0]
                        mov              qword ptr [rsp + 1992], rax;         jmp   n386_lit_string_α
.Lmain_α_547_0:         .quad            31
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rsp + 1968], 2            # result
                        mov              dword ptr [rsp + 1972], 1
                        mov              rax, qword ptr [rip + .Lmain_α_548_0]
                        mov              qword ptr [rsp + 1976], rax;         jmp   n387_lit_integer_α
.Lmain_α_548_0:         .quad            .Lmain_α_548_0_s
.Lmain_α_548_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_integer_α:     mov              r11, 194
                        mov              qword ptr [rsp + 1872], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_549_0]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n388_lit_string_α
.Lmain_α_549_0:         .quad            63
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rsp + 1856], 2            # result
                        mov              dword ptr [rsp + 1860], 1
                        mov              rax, qword ptr [rip + .Lmain_α_550_0]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n389_lit_integer_α
.Lmain_α_550_0:         .quad            .Lmain_α_550_0_s
.Lmain_α_550_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_integer_α:     mov              r11, 196
                        mov              qword ptr [rsp + 1760], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_551_0]
                        mov              qword ptr [rsp + 1768], rax;         jmp   n390_lit_string_α
.Lmain_α_551_0:         .quad            75
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rsp + 1744], 2            # result
                        mov              dword ptr [rsp + 1748], 1
                        mov              rax, qword ptr [rip + .Lmain_α_552_0]
                        mov              qword ptr [rsp + 1752], rax;         jmp   n391_lit_integer_α
.Lmain_α_552_0:         .quad            .Lmain_α_552_0_s
.Lmain_α_552_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_integer_α:     mov              r11, 198
                        mov              qword ptr [rsp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_553_0]
                        mov              qword ptr [rsp + 1656], rax;         jmp   n392_lit_string_α
.Lmain_α_553_0:         .quad            4
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              r11, 199
                        mov              qword ptr [rsp + 1632], 2            # result
                        mov              dword ptr [rsp + 1636], 1
                        mov              rax, qword ptr [rip + .Lmain_α_554_0]
                        mov              qword ptr [rsp + 1640], rax;         jmp   n393_lit_integer_α
.Lmain_α_554_0:         .quad            .Lmain_α_554_0_s
.Lmain_α_554_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_integer_α:     mov              r11, 200
                        mov              qword ptr [rsp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_555_0]
                        mov              qword ptr [rsp + 1544], rax;         jmp   n394_lit_string_α
.Lmain_α_555_0:         .quad            95
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_string_α:      mov              r11, 201
                        mov              qword ptr [rsp + 1520], 2            # result
                        mov              dword ptr [rsp + 1524], 1
                        mov              rax, qword ptr [rip + .Lmain_α_556_0]
                        mov              qword ptr [rsp + 1528], rax;         jmp   n395_lit_integer_α
.Lmain_α_556_0:         .quad            .Lmain_α_556_0_s
.Lmain_α_556_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_integer_α:     mov              r11, 202
                        mov              qword ptr [rsp + 1424], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_557_0]
                        mov              qword ptr [rsp + 1432], rax;         jmp   n396_lit_string_α
.Lmain_α_557_0:         .quad            99
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              r11, 203
                        mov              qword ptr [rsp + 1408], 2            # result
                        mov              dword ptr [rsp + 1412], 1
                        mov              rax, qword ptr [rip + .Lmain_α_558_0]
                        mov              qword ptr [rsp + 1416], rax;         jmp   n397_lit_integer_α
.Lmain_α_558_0:         .quad            .Lmain_α_558_0_s
.Lmain_α_558_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_integer_α:     mov              r11, 204
                        mov              qword ptr [rsp + 1312], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_559_0]
                        mov              qword ptr [rsp + 1320], rax;         jmp   n398_lit_string_α
.Lmain_α_559_0:         .quad            11
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      mov              r11, 205
                        mov              qword ptr [rsp + 1296], 2            # result
                        mov              dword ptr [rsp + 1300], 1
                        mov              rax, qword ptr [rip + .Lmain_α_560_0]
                        mov              qword ptr [rsp + 1304], rax;         jmp   n399_lit_integer_α
.Lmain_α_560_0:         .quad            .Lmain_α_560_0_s
.Lmain_α_560_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_integer_α:     mov              r11, 206
                        mov              qword ptr [rsp + 1200], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_561_0]
                        mov              qword ptr [rsp + 1208], rax;         jmp   n400_lit_string_α
.Lmain_α_561_0:         .quad            28
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rsp + 1184], 2            # result
                        mov              dword ptr [rsp + 1188], 1
                        mov              rax, qword ptr [rip + .Lmain_α_562_0]
                        mov              qword ptr [rsp + 1192], rax;         jmp   n401_lit_integer_α
.Lmain_α_562_0:         .quad            .Lmain_α_562_0_s
.Lmain_α_562_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_integer_α:     mov              r11, 208
                        mov              qword ptr [rsp + 1088], 3            # result
                        mov              rax, qword ptr [rip + .Lmain_α_563_0]
                        mov              qword ptr [rsp + 1096], rax;         jmp   n402_lit_string_α
.Lmain_α_563_0:         .quad            61
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rsp + 1072], 2            # result
                        mov              dword ptr [rsp + 1076], 1
                        mov              rax, qword ptr [rip + .Lmain_α_564_0]
                        mov              qword ptr [rsp + 1080], rax;         jmp   n403_lit_integer_α
.Lmain_α_564_0:         .quad            .Lmain_α_564_0_s
.Lmain_α_564_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_integer_α:     mov              r11, 210
                        mov              qword ptr [rsp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_565_0]
                        mov              qword ptr [rsp + 984], rax;          jmp   n404_lit_string_α
.Lmain_α_565_0:         .quad            74
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rsp + 960], 2             # result
                        mov              dword ptr [rsp + 964], 1
                        mov              rax, qword ptr [rip + .Lmain_α_566_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n405_lit_integer_α
.Lmain_α_566_0:         .quad            .Lmain_α_566_0_s
.Lmain_α_566_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_integer_α:     mov              r11, 212
                        mov              qword ptr [rsp + 864], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_567_0]
                        mov              qword ptr [rsp + 872], rax;          jmp   n406_lit_string_α
.Lmain_α_567_0:         .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rsp + 848], 2             # result
                        mov              dword ptr [rsp + 852], 1
                        mov              rax, qword ptr [rip + .Lmain_α_568_0]
                        mov              qword ptr [rsp + 856], rax;          jmp   n407_lit_integer_α
.Lmain_α_568_0:         .quad            .Lmain_α_568_0_s
.Lmain_α_568_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_integer_α:     mov              r11, 214
                        mov              qword ptr [rsp + 752], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_569_0]
                        mov              qword ptr [rsp + 760], rax;          jmp   n408_lit_string_α
.Lmain_α_569_0:         .quad            92
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rsp + 736], 2             # result
                        mov              dword ptr [rsp + 740], 1
                        mov              rax, qword ptr [rip + .Lmain_α_570_0]
                        mov              qword ptr [rsp + 744], rax;          jmp   n409_lit_integer_α
.Lmain_α_570_0:         .quad            .Lmain_α_570_0_s
.Lmain_α_570_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_integer_α:     mov              r11, 216
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_571_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n410_lit_string_α
.Lmain_α_571_0:         .quad            40
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              r11, 217
                        mov              qword ptr [rsp + 624], 2             # result
                        mov              dword ptr [rsp + 628], 1
                        mov              rax, qword ptr [rip + .Lmain_α_572_0]
                        mov              qword ptr [rsp + 632], rax;          jmp   n411_lit_integer_α
.Lmain_α_572_0:         .quad            .Lmain_α_572_0_s
.Lmain_α_572_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_integer_α:     mov              r11, 218
                        mov              qword ptr [rsp + 528], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_573_0]
                        mov              qword ptr [rsp + 536], rax;          jmp   n412_lit_string_α
.Lmain_α_573_0:         .quad            53
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rsp + 512], 2             # result
                        mov              dword ptr [rsp + 516], 1
                        mov              rax, qword ptr [rip + .Lmain_α_574_0]
                        mov              qword ptr [rsp + 520], rax;          jmp   n413_lit_integer_α
.Lmain_α_574_0:         .quad            .Lmain_α_574_0_s
.Lmain_α_574_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_integer_α:     mov              r11, 220
                        mov              qword ptr [rsp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_575_0]
                        mov              qword ptr [rsp + 424], rax;          jmp   n414_lit_string_α
.Lmain_α_575_0:         .quad            59
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 221
                        mov              qword ptr [rsp + 400], 2             # result
                        mov              dword ptr [rsp + 404], 1
                        mov              rax, qword ptr [rip + .Lmain_α_576_0]
                        mov              qword ptr [rsp + 408], rax;          jmp   n415_lit_integer_α
.Lmain_α_576_0:         .quad            .Lmain_α_576_0_s
.Lmain_α_576_0_s:       .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_integer_α:     mov              r11, 222
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lmain_α_577_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n416_lit_string_α
.Lmain_α_577_0:         .quad            8
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rsp + 288], 2             # result
                        mov              dword ptr [rsp + 292], 2
                        mov              rax, qword ptr [rip + .Lmain_α_578_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n417_call_prolog_α
.Lmain_α_578_0:         .quad            .Lmain_α_578_0_s
.Lmain_α_578_0_s:       .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n417_call_prolog_α:     mov              r11, 224
                        mov              rax, qword ptr [rsp + 288]
                        mov              qword ptr [rsp + 368], rax
                        mov              rax, qword ptr [rsp + 296]
                        mov              qword ptr [rsp + 376], rax
                        mov              rax, qword ptr [rsp + 304]
                        mov              qword ptr [rsp + 352], rax
                        mov              rax, qword ptr [rsp + 312]
                        mov              qword ptr [rsp + 360], rax
                        mov              rax, qword ptr [rsp + 400]
                        mov              qword ptr [rsp + 336], rax
                        mov              rax, qword ptr [rsp + 408]
                        mov              qword ptr [rsp + 344], rax
                        lea              rdi, [rsp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n418_call_prolog_α
n417_call_prolog_β:     mov              r11, 224;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n418_call_prolog_α:     mov              r11, 225
                        mov              rax, qword ptr [rsp + 320]
                        mov              qword ptr [rsp + 480], rax
                        mov              rax, qword ptr [rsp + 328]
                        mov              qword ptr [rsp + 488], rax
                        mov              rax, qword ptr [rsp + 416]
                        mov              qword ptr [rsp + 464], rax
                        mov              rax, qword ptr [rsp + 424]
                        mov              qword ptr [rsp + 472], rax
                        mov              rax, qword ptr [rsp + 512]
                        mov              qword ptr [rsp + 448], rax
                        mov              rax, qword ptr [rsp + 520]
                        mov              qword ptr [rsp + 456], rax
                        lea              rdi, [rsp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n419_call_prolog_α
n418_call_prolog_β:     mov              r11, 225;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n419_call_prolog_α:     mov              r11, 226
                        mov              rax, qword ptr [rsp + 432]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 440]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 528]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 536]
                        mov              qword ptr [rsp + 584], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 560], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 568], rax
                        lea              rdi, [rsp + 560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n420_call_prolog_α
n419_call_prolog_β:     mov              r11, 226;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n420_call_prolog_α:     mov              r11, 227
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 704], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 712], rax
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 688], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 696], rax
                        mov              rax, qword ptr [rsp + 736]
                        mov              qword ptr [rsp + 672], rax
                        mov              rax, qword ptr [rsp + 744]
                        mov              qword ptr [rsp + 680], rax
                        lea              rdi, [rsp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n421_call_prolog_α
n420_call_prolog_β:     mov              r11, 227;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_call_prolog_α:     mov              r11, 228
                        mov              rax, qword ptr [rsp + 656]
                        mov              qword ptr [rsp + 816], rax
                        mov              rax, qword ptr [rsp + 664]
                        mov              qword ptr [rsp + 824], rax
                        mov              rax, qword ptr [rsp + 752]
                        mov              qword ptr [rsp + 800], rax
                        mov              rax, qword ptr [rsp + 760]
                        mov              qword ptr [rsp + 808], rax
                        mov              rax, qword ptr [rsp + 848]
                        mov              qword ptr [rsp + 784], rax
                        mov              rax, qword ptr [rsp + 856]
                        mov              qword ptr [rsp + 792], rax
                        lea              rdi, [rsp + 784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n422_call_prolog_α
n421_call_prolog_β:     mov              r11, 228;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n422_call_prolog_α:     mov              r11, 229
                        mov              rax, qword ptr [rsp + 768]
                        mov              qword ptr [rsp + 928], rax
                        mov              rax, qword ptr [rsp + 776]
                        mov              qword ptr [rsp + 936], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n423_call_prolog_α
n422_call_prolog_β:     mov              r11, 229;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n423_call_prolog_α:     mov              r11, 230
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 1040], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 1048], rax
                        mov              rax, qword ptr [rsp + 976]
                        mov              qword ptr [rsp + 1024], rax
                        mov              rax, qword ptr [rsp + 984]
                        mov              qword ptr [rsp + 1032], rax
                        mov              rax, qword ptr [rsp + 1072]
                        mov              qword ptr [rsp + 1008], rax
                        mov              rax, qword ptr [rsp + 1080]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 992], rax
                        mov              qword ptr [rsp + 1000], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n424_call_prolog_α
n423_call_prolog_β:     mov              r11, 230;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n424_call_prolog_α:     mov              r11, 231
                        mov              rax, qword ptr [rsp + 992]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1000]
                        mov              qword ptr [rsp + 1160], rax
                        mov              rax, qword ptr [rsp + 1088]
                        mov              qword ptr [rsp + 1136], rax
                        mov              rax, qword ptr [rsp + 1096]
                        mov              qword ptr [rsp + 1144], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1120], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1128], rax
                        lea              rdi, [rsp + 1120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n425_call_prolog_α
n424_call_prolog_β:     mov              r11, 231;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_call_prolog_α:     mov              r11, 232
                        mov              rax, qword ptr [rsp + 1104]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 1112]
                        mov              qword ptr [rsp + 1272], rax
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1248], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1256], rax
                        mov              rax, qword ptr [rsp + 1296]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1304]
                        mov              qword ptr [rsp + 1240], rax
                        lea              rdi, [rsp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1216], rax
                        mov              qword ptr [rsp + 1224], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n426_call_prolog_α
n425_call_prolog_β:     mov              r11, 232;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n426_call_prolog_α:     mov              r11, 233
                        mov              rax, qword ptr [rsp + 1216]
                        mov              qword ptr [rsp + 1376], rax
                        mov              rax, qword ptr [rsp + 1224]
                        mov              qword ptr [rsp + 1384], rax
                        mov              rax, qword ptr [rsp + 1312]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 1320]
                        mov              qword ptr [rsp + 1368], rax
                        mov              rax, qword ptr [rsp + 1408]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 1416]
                        mov              qword ptr [rsp + 1352], rax
                        lea              rdi, [rsp + 1344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1328], rax
                        mov              qword ptr [rsp + 1336], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n427_call_prolog_α
n426_call_prolog_β:     mov              r11, 233;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n427_call_prolog_α:     mov              r11, 234
                        mov              rax, qword ptr [rsp + 1328]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1336]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1480], rax
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1456], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1464], rax
                        lea              rdi, [rsp + 1456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n428_call_prolog_α
n427_call_prolog_β:     mov              r11, 234;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n428_call_prolog_α:     mov              r11, 235
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1600], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1608], rax
                        mov              rax, qword ptr [rsp + 1536]
                        mov              qword ptr [rsp + 1584], rax
                        mov              rax, qword ptr [rsp + 1544]
                        mov              qword ptr [rsp + 1592], rax
                        mov              rax, qword ptr [rsp + 1632]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1640]
                        mov              qword ptr [rsp + 1576], rax
                        lea              rdi, [rsp + 1568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1552], rax
                        mov              qword ptr [rsp + 1560], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n429_call_prolog_α
n428_call_prolog_β:     mov              r11, 235;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n429_call_prolog_α:     mov              r11, 236
                        mov              rax, qword ptr [rsp + 1552]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 1560]
                        mov              qword ptr [rsp + 1720], rax
                        mov              rax, qword ptr [rsp + 1648]
                        mov              qword ptr [rsp + 1696], rax
                        mov              rax, qword ptr [rsp + 1656]
                        mov              qword ptr [rsp + 1704], rax
                        mov              rax, qword ptr [rsp + 1744]
                        mov              qword ptr [rsp + 1680], rax
                        mov              rax, qword ptr [rsp + 1752]
                        mov              qword ptr [rsp + 1688], rax
                        lea              rdi, [rsp + 1680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n430_call_prolog_α
n429_call_prolog_β:     mov              r11, 236;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n430_call_prolog_α:     mov              r11, 237
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1832], rax
                        mov              rax, qword ptr [rsp + 1760]
                        mov              qword ptr [rsp + 1808], rax
                        mov              rax, qword ptr [rsp + 1768]
                        mov              qword ptr [rsp + 1816], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1792], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1800], rax
                        lea              rdi, [rsp + 1792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n431_call_prolog_α
n430_call_prolog_β:     mov              r11, 237;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 238
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1936], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1944], rax
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1968]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1976]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n432_call_prolog_α
n431_call_prolog_β:     mov              r11, 238;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n432_call_prolog_α:     mov              r11, 239
                        mov              rax, qword ptr [rsp + 1888]
                        mov              qword ptr [rsp + 2048], rax
                        mov              rax, qword ptr [rsp + 1896]
                        mov              qword ptr [rsp + 2056], rax
                        mov              rax, qword ptr [rsp + 1984]
                        mov              qword ptr [rsp + 2032], rax
                        mov              rax, qword ptr [rsp + 1992]
                        mov              qword ptr [rsp + 2040], rax
                        mov              rax, qword ptr [rsp + 2080]
                        mov              qword ptr [rsp + 2016], rax
                        mov              rax, qword ptr [rsp + 2088]
                        mov              qword ptr [rsp + 2024], rax
                        lea              rdi, [rsp + 2016]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2000], rax
                        mov              qword ptr [rsp + 2008], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n433_call_prolog_α
n432_call_prolog_β:     mov              r11, 239;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n433_call_prolog_α:     mov              r11, 240
                        mov              rax, qword ptr [rsp + 2000]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2008]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2152], rax
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2128], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2136], rax
                        lea              rdi, [rsp + 2128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n434_call_prolog_α
n433_call_prolog_β:     mov              r11, 240;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n434_call_prolog_α:     mov              r11, 241
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2272], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2280], rax
                        mov              rax, qword ptr [rsp + 2208]
                        mov              qword ptr [rsp + 2256], rax
                        mov              rax, qword ptr [rsp + 2216]
                        mov              qword ptr [rsp + 2264], rax
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 2240], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 2248], rax
                        lea              rdi, [rsp + 2240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2224], rax
                        mov              qword ptr [rsp + 2232], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n435_call_prolog_α
n434_call_prolog_β:     mov              r11, 241;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n435_call_prolog_α:     mov              r11, 242
                        mov              rax, qword ptr [rsp + 2224]
                        mov              qword ptr [rsp + 2384], rax
                        mov              rax, qword ptr [rsp + 2232]
                        mov              qword ptr [rsp + 2392], rax
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 2368], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 2376], rax
                        mov              rax, qword ptr [rsp + 2416]
                        mov              qword ptr [rsp + 2352], rax
                        mov              rax, qword ptr [rsp + 2424]
                        mov              qword ptr [rsp + 2360], rax
                        lea              rdi, [rsp + 2352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2336], rax
                        mov              qword ptr [rsp + 2344], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n436_call_prolog_α
n435_call_prolog_β:     mov              r11, 242;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n436_call_prolog_α:     mov              r11, 243
                        mov              rax, qword ptr [rsp + 2336]
                        mov              qword ptr [rsp + 2496], rax
                        mov              rax, qword ptr [rsp + 2344]
                        mov              qword ptr [rsp + 2504], rax
                        mov              rax, qword ptr [rsp + 2432]
                        mov              qword ptr [rsp + 2480], rax
                        mov              rax, qword ptr [rsp + 2440]
                        mov              qword ptr [rsp + 2488], rax
                        mov              rax, qword ptr [rsp + 2528]
                        mov              qword ptr [rsp + 2464], rax
                        mov              rax, qword ptr [rsp + 2536]
                        mov              qword ptr [rsp + 2472], rax
                        lea              rdi, [rsp + 2464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2448], rax
                        mov              qword ptr [rsp + 2456], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n437_call_prolog_α
n436_call_prolog_β:     mov              r11, 243;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 244
                        mov              rax, qword ptr [rsp + 2448]
                        mov              qword ptr [rsp + 2608], rax
                        mov              rax, qword ptr [rsp + 2456]
                        mov              qword ptr [rsp + 2616], rax
                        mov              rax, qword ptr [rsp + 2544]
                        mov              qword ptr [rsp + 2592], rax
                        mov              rax, qword ptr [rsp + 2552]
                        mov              qword ptr [rsp + 2600], rax
                        mov              rax, qword ptr [rsp + 2640]
                        mov              qword ptr [rsp + 2576], rax
                        mov              rax, qword ptr [rsp + 2648]
                        mov              qword ptr [rsp + 2584], rax
                        lea              rdi, [rsp + 2576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2560], rax
                        mov              qword ptr [rsp + 2568], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n438_call_prolog_α
n437_call_prolog_β:     mov              r11, 244;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n438_call_prolog_α:     mov              r11, 245
                        mov              rax, qword ptr [rsp + 2560]
                        mov              qword ptr [rsp + 2720], rax
                        mov              rax, qword ptr [rsp + 2568]
                        mov              qword ptr [rsp + 2728], rax
                        mov              rax, qword ptr [rsp + 2656]
                        mov              qword ptr [rsp + 2704], rax
                        mov              rax, qword ptr [rsp + 2664]
                        mov              qword ptr [rsp + 2712], rax
                        mov              rax, qword ptr [rsp + 2752]
                        mov              qword ptr [rsp + 2688], rax
                        mov              rax, qword ptr [rsp + 2760]
                        mov              qword ptr [rsp + 2696], rax
                        lea              rdi, [rsp + 2688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2672], rax
                        mov              qword ptr [rsp + 2680], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n439_call_prolog_α
n438_call_prolog_β:     mov              r11, 245;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n439_call_prolog_α:     mov              r11, 246
                        mov              rax, qword ptr [rsp + 2672]
                        mov              qword ptr [rsp + 2832], rax
                        mov              rax, qword ptr [rsp + 2680]
                        mov              qword ptr [rsp + 2840], rax
                        mov              rax, qword ptr [rsp + 2768]
                        mov              qword ptr [rsp + 2816], rax
                        mov              rax, qword ptr [rsp + 2776]
                        mov              qword ptr [rsp + 2824], rax
                        mov              rax, qword ptr [rsp + 2864]
                        mov              qword ptr [rsp + 2800], rax
                        mov              rax, qword ptr [rsp + 2872]
                        mov              qword ptr [rsp + 2808], rax
                        lea              rdi, [rsp + 2800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2784], rax
                        mov              qword ptr [rsp + 2792], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n440_call_prolog_α
n439_call_prolog_β:     mov              r11, 246;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n440_call_prolog_α:     mov              r11, 247
                        mov              rax, qword ptr [rsp + 2784]
                        mov              qword ptr [rsp + 2944], rax
                        mov              rax, qword ptr [rsp + 2792]
                        mov              qword ptr [rsp + 2952], rax
                        mov              rax, qword ptr [rsp + 2880]
                        mov              qword ptr [rsp + 2928], rax
                        mov              rax, qword ptr [rsp + 2888]
                        mov              qword ptr [rsp + 2936], rax
                        mov              rax, qword ptr [rsp + 2976]
                        mov              qword ptr [rsp + 2912], rax
                        mov              rax, qword ptr [rsp + 2984]
                        mov              qword ptr [rsp + 2920], rax
                        lea              rdi, [rsp + 2912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 2896], rax
                        mov              qword ptr [rsp + 2904], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n441_call_prolog_α
n440_call_prolog_β:     mov              r11, 247;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n441_call_prolog_α:     mov              r11, 248
                        mov              rax, qword ptr [rsp + 2896]
                        mov              qword ptr [rsp + 3056], rax
                        mov              rax, qword ptr [rsp + 2904]
                        mov              qword ptr [rsp + 3064], rax
                        mov              rax, qword ptr [rsp + 2992]
                        mov              qword ptr [rsp + 3040], rax
                        mov              rax, qword ptr [rsp + 3000]
                        mov              qword ptr [rsp + 3048], rax
                        mov              rax, qword ptr [rsp + 3088]
                        mov              qword ptr [rsp + 3024], rax
                        mov              rax, qword ptr [rsp + 3096]
                        mov              qword ptr [rsp + 3032], rax
                        lea              rdi, [rsp + 3024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3008], rax
                        mov              qword ptr [rsp + 3016], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n442_call_prolog_α
n441_call_prolog_β:     mov              r11, 248;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n442_call_prolog_α:     mov              r11, 249
                        mov              rax, qword ptr [rsp + 3008]
                        mov              qword ptr [rsp + 3168], rax
                        mov              rax, qword ptr [rsp + 3016]
                        mov              qword ptr [rsp + 3176], rax
                        mov              rax, qword ptr [rsp + 3104]
                        mov              qword ptr [rsp + 3152], rax
                        mov              rax, qword ptr [rsp + 3112]
                        mov              qword ptr [rsp + 3160], rax
                        mov              rax, qword ptr [rsp + 3200]
                        mov              qword ptr [rsp + 3136], rax
                        mov              rax, qword ptr [rsp + 3208]
                        mov              qword ptr [rsp + 3144], rax
                        lea              rdi, [rsp + 3136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3128], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n443_call_prolog_α
n442_call_prolog_β:     mov              r11, 249;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n443_call_prolog_α:     mov              r11, 250
                        mov              rax, qword ptr [rsp + 3120]
                        mov              qword ptr [rsp + 3280], rax
                        mov              rax, qword ptr [rsp + 3128]
                        mov              qword ptr [rsp + 3288], rax
                        mov              rax, qword ptr [rsp + 3216]
                        mov              qword ptr [rsp + 3264], rax
                        mov              rax, qword ptr [rsp + 3224]
                        mov              qword ptr [rsp + 3272], rax
                        mov              rax, qword ptr [rsp + 3312]
                        mov              qword ptr [rsp + 3248], rax
                        mov              rax, qword ptr [rsp + 3320]
                        mov              qword ptr [rsp + 3256], rax
                        lea              rdi, [rsp + 3248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3232], rax
                        mov              qword ptr [rsp + 3240], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n444_call_prolog_α
n443_call_prolog_β:     mov              r11, 250;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n444_call_prolog_α:     mov              r11, 251
                        mov              rax, qword ptr [rsp + 3232]
                        mov              qword ptr [rsp + 3392], rax
                        mov              rax, qword ptr [rsp + 3240]
                        mov              qword ptr [rsp + 3400], rax
                        mov              rax, qword ptr [rsp + 3328]
                        mov              qword ptr [rsp + 3376], rax
                        mov              rax, qword ptr [rsp + 3336]
                        mov              qword ptr [rsp + 3384], rax
                        mov              rax, qword ptr [rsp + 3424]
                        mov              qword ptr [rsp + 3360], rax
                        mov              rax, qword ptr [rsp + 3432]
                        mov              qword ptr [rsp + 3368], rax
                        lea              rdi, [rsp + 3360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3344], rax
                        mov              qword ptr [rsp + 3352], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n445_call_prolog_α
n444_call_prolog_β:     mov              r11, 251;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n445_call_prolog_α:     mov              r11, 252
                        mov              rax, qword ptr [rsp + 3344]
                        mov              qword ptr [rsp + 3504], rax
                        mov              rax, qword ptr [rsp + 3352]
                        mov              qword ptr [rsp + 3512], rax
                        mov              rax, qword ptr [rsp + 3440]
                        mov              qword ptr [rsp + 3488], rax
                        mov              rax, qword ptr [rsp + 3448]
                        mov              qword ptr [rsp + 3496], rax
                        mov              rax, qword ptr [rsp + 3536]
                        mov              qword ptr [rsp + 3472], rax
                        mov              rax, qword ptr [rsp + 3544]
                        mov              qword ptr [rsp + 3480], rax
                        lea              rdi, [rsp + 3472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3456], rax
                        mov              qword ptr [rsp + 3464], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n446_call_prolog_α
n445_call_prolog_β:     mov              r11, 252;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n446_call_prolog_α:     mov              r11, 253
                        mov              rax, qword ptr [rsp + 3456]
                        mov              qword ptr [rsp + 3616], rax
                        mov              rax, qword ptr [rsp + 3464]
                        mov              qword ptr [rsp + 3624], rax
                        mov              rax, qword ptr [rsp + 3552]
                        mov              qword ptr [rsp + 3600], rax
                        mov              rax, qword ptr [rsp + 3560]
                        mov              qword ptr [rsp + 3608], rax
                        mov              rax, qword ptr [rsp + 3648]
                        mov              qword ptr [rsp + 3584], rax
                        mov              rax, qword ptr [rsp + 3656]
                        mov              qword ptr [rsp + 3592], rax
                        lea              rdi, [rsp + 3584]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3568], rax
                        mov              qword ptr [rsp + 3576], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n447_call_prolog_α
n446_call_prolog_β:     mov              r11, 253;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n447_call_prolog_α:     mov              r11, 254
                        mov              rax, qword ptr [rsp + 3568]
                        mov              qword ptr [rsp + 3728], rax
                        mov              rax, qword ptr [rsp + 3576]
                        mov              qword ptr [rsp + 3736], rax
                        mov              rax, qword ptr [rsp + 3664]
                        mov              qword ptr [rsp + 3712], rax
                        mov              rax, qword ptr [rsp + 3672]
                        mov              qword ptr [rsp + 3720], rax
                        mov              rax, qword ptr [rsp + 3760]
                        mov              qword ptr [rsp + 3696], rax
                        mov              rax, qword ptr [rsp + 3768]
                        mov              qword ptr [rsp + 3704], rax
                        lea              rdi, [rsp + 3696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3680], rax
                        mov              qword ptr [rsp + 3688], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n448_call_prolog_α
n447_call_prolog_β:     mov              r11, 254;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n448_call_prolog_α:     mov              r11, 255
                        mov              rax, qword ptr [rsp + 3680]
                        mov              qword ptr [rsp + 3840], rax
                        mov              rax, qword ptr [rsp + 3688]
                        mov              qword ptr [rsp + 3848], rax
                        mov              rax, qword ptr [rsp + 3776]
                        mov              qword ptr [rsp + 3824], rax
                        mov              rax, qword ptr [rsp + 3784]
                        mov              qword ptr [rsp + 3832], rax
                        mov              rax, qword ptr [rsp + 3872]
                        mov              qword ptr [rsp + 3808], rax
                        mov              rax, qword ptr [rsp + 3880]
                        mov              qword ptr [rsp + 3816], rax
                        lea              rdi, [rsp + 3808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3792], rax
                        mov              qword ptr [rsp + 3800], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n449_call_prolog_α
n448_call_prolog_β:     mov              r11, 255;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n449_call_prolog_α:     mov              r11, 256
                        mov              rax, qword ptr [rsp + 3792]
                        mov              qword ptr [rsp + 3952], rax
                        mov              rax, qword ptr [rsp + 3800]
                        mov              qword ptr [rsp + 3960], rax
                        mov              rax, qword ptr [rsp + 3888]
                        mov              qword ptr [rsp + 3936], rax
                        mov              rax, qword ptr [rsp + 3896]
                        mov              qword ptr [rsp + 3944], rax
                        mov              rax, qword ptr [rsp + 3984]
                        mov              qword ptr [rsp + 3920], rax
                        mov              rax, qword ptr [rsp + 3992]
                        mov              qword ptr [rsp + 3928], rax
                        lea              rdi, [rsp + 3920]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 3904], rax
                        mov              qword ptr [rsp + 3912], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n450_call_prolog_α
n449_call_prolog_β:     mov              r11, 256;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n450_call_prolog_α:     mov              r11, 257
                        mov              rax, qword ptr [rsp + 3904]
                        mov              qword ptr [rsp + 4064], rax
                        mov              rax, qword ptr [rsp + 3912]
                        mov              qword ptr [rsp + 4072], rax
                        mov              rax, qword ptr [rsp + 4000]
                        mov              qword ptr [rsp + 4048], rax
                        mov              rax, qword ptr [rsp + 4008]
                        mov              qword ptr [rsp + 4056], rax
                        mov              rax, qword ptr [rsp + 4096]
                        mov              qword ptr [rsp + 4032], rax
                        mov              rax, qword ptr [rsp + 4104]
                        mov              qword ptr [rsp + 4040], rax
                        lea              rdi, [rsp + 4032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4016], rax
                        mov              qword ptr [rsp + 4024], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n451_call_prolog_α
n450_call_prolog_β:     mov              r11, 257;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n451_call_prolog_α:     mov              r11, 258
                        mov              rax, qword ptr [rsp + 4016]
                        mov              qword ptr [rsp + 4176], rax
                        mov              rax, qword ptr [rsp + 4024]
                        mov              qword ptr [rsp + 4184], rax
                        mov              rax, qword ptr [rsp + 4112]
                        mov              qword ptr [rsp + 4160], rax
                        mov              rax, qword ptr [rsp + 4120]
                        mov              qword ptr [rsp + 4168], rax
                        mov              rax, qword ptr [rsp + 4208]
                        mov              qword ptr [rsp + 4144], rax
                        mov              rax, qword ptr [rsp + 4216]
                        mov              qword ptr [rsp + 4152], rax
                        lea              rdi, [rsp + 4144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4128], rax
                        mov              qword ptr [rsp + 4136], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n452_call_prolog_α
n451_call_prolog_β:     mov              r11, 258;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n452_call_prolog_α:     mov              r11, 259
                        mov              rax, qword ptr [rsp + 4128]
                        mov              qword ptr [rsp + 4288], rax
                        mov              rax, qword ptr [rsp + 4136]
                        mov              qword ptr [rsp + 4296], rax
                        mov              rax, qword ptr [rsp + 4224]
                        mov              qword ptr [rsp + 4272], rax
                        mov              rax, qword ptr [rsp + 4232]
                        mov              qword ptr [rsp + 4280], rax
                        mov              rax, qword ptr [rsp + 4320]
                        mov              qword ptr [rsp + 4256], rax
                        mov              rax, qword ptr [rsp + 4328]
                        mov              qword ptr [rsp + 4264], rax
                        lea              rdi, [rsp + 4256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4240], rax
                        mov              qword ptr [rsp + 4248], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n453_call_prolog_α
n452_call_prolog_β:     mov              r11, 259;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n453_call_prolog_α:     mov              r11, 260
                        mov              rax, qword ptr [rsp + 4240]
                        mov              qword ptr [rsp + 4400], rax
                        mov              rax, qword ptr [rsp + 4248]
                        mov              qword ptr [rsp + 4408], rax
                        mov              rax, qword ptr [rsp + 4336]
                        mov              qword ptr [rsp + 4384], rax
                        mov              rax, qword ptr [rsp + 4344]
                        mov              qword ptr [rsp + 4392], rax
                        mov              rax, qword ptr [rsp + 4432]
                        mov              qword ptr [rsp + 4368], rax
                        mov              rax, qword ptr [rsp + 4440]
                        mov              qword ptr [rsp + 4376], rax
                        lea              rdi, [rsp + 4368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4352], rax
                        mov              qword ptr [rsp + 4360], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n454_call_prolog_α
n453_call_prolog_β:     mov              r11, 260;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n454_call_prolog_α:     mov              r11, 261
                        mov              rax, qword ptr [rsp + 4352]
                        mov              qword ptr [rsp + 4512], rax
                        mov              rax, qword ptr [rsp + 4360]
                        mov              qword ptr [rsp + 4520], rax
                        mov              rax, qword ptr [rsp + 4448]
                        mov              qword ptr [rsp + 4496], rax
                        mov              rax, qword ptr [rsp + 4456]
                        mov              qword ptr [rsp + 4504], rax
                        mov              rax, qword ptr [rsp + 4544]
                        mov              qword ptr [rsp + 4480], rax
                        mov              rax, qword ptr [rsp + 4552]
                        mov              qword ptr [rsp + 4488], rax
                        lea              rdi, [rsp + 4480]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4464], rax
                        mov              qword ptr [rsp + 4472], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n455_call_prolog_α
n454_call_prolog_β:     mov              r11, 261;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n455_call_prolog_α:     mov              r11, 262
                        mov              rax, qword ptr [rsp + 4464]
                        mov              qword ptr [rsp + 4624], rax
                        mov              rax, qword ptr [rsp + 4472]
                        mov              qword ptr [rsp + 4632], rax
                        mov              rax, qword ptr [rsp + 4560]
                        mov              qword ptr [rsp + 4608], rax
                        mov              rax, qword ptr [rsp + 4568]
                        mov              qword ptr [rsp + 4616], rax
                        mov              rax, qword ptr [rsp + 4656]
                        mov              qword ptr [rsp + 4592], rax
                        mov              rax, qword ptr [rsp + 4664]
                        mov              qword ptr [rsp + 4600], rax
                        lea              rdi, [rsp + 4592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4576], rax
                        mov              qword ptr [rsp + 4584], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n456_call_prolog_α
n455_call_prolog_β:     mov              r11, 262;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n456_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rsp + 4576]
                        mov              qword ptr [rsp + 4736], rax
                        mov              rax, qword ptr [rsp + 4584]
                        mov              qword ptr [rsp + 4744], rax
                        mov              rax, qword ptr [rsp + 4672]
                        mov              qword ptr [rsp + 4720], rax
                        mov              rax, qword ptr [rsp + 4680]
                        mov              qword ptr [rsp + 4728], rax
                        mov              rax, qword ptr [rsp + 4768]
                        mov              qword ptr [rsp + 4704], rax
                        mov              rax, qword ptr [rsp + 4776]
                        mov              qword ptr [rsp + 4712], rax
                        lea              rdi, [rsp + 4704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4688], rax
                        mov              qword ptr [rsp + 4696], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n457_call_prolog_α
n456_call_prolog_β:     mov              r11, 263;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n457_call_prolog_α:     mov              r11, 264
                        mov              rax, qword ptr [rsp + 4688]
                        mov              qword ptr [rsp + 4848], rax
                        mov              rax, qword ptr [rsp + 4696]
                        mov              qword ptr [rsp + 4856], rax
                        mov              rax, qword ptr [rsp + 4784]
                        mov              qword ptr [rsp + 4832], rax
                        mov              rax, qword ptr [rsp + 4792]
                        mov              qword ptr [rsp + 4840], rax
                        mov              rax, qword ptr [rsp + 4880]
                        mov              qword ptr [rsp + 4816], rax
                        mov              rax, qword ptr [rsp + 4888]
                        mov              qword ptr [rsp + 4824], rax
                        lea              rdi, [rsp + 4816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4800], rax
                        mov              qword ptr [rsp + 4808], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n458_call_prolog_α
n457_call_prolog_β:     mov              r11, 264;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n458_call_prolog_α:     mov              r11, 265
                        mov              rax, qword ptr [rsp + 4800]
                        mov              qword ptr [rsp + 4960], rax
                        mov              rax, qword ptr [rsp + 4808]
                        mov              qword ptr [rsp + 4968], rax
                        mov              rax, qword ptr [rsp + 4896]
                        mov              qword ptr [rsp + 4944], rax
                        mov              rax, qword ptr [rsp + 4904]
                        mov              qword ptr [rsp + 4952], rax
                        mov              rax, qword ptr [rsp + 4992]
                        mov              qword ptr [rsp + 4928], rax
                        mov              rax, qword ptr [rsp + 5000]
                        mov              qword ptr [rsp + 4936], rax
                        lea              rdi, [rsp + 4928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 4912], rax
                        mov              qword ptr [rsp + 4920], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n459_call_prolog_α
n458_call_prolog_β:     mov              r11, 265;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n459_call_prolog_α:     mov              r11, 266
                        mov              rax, qword ptr [rsp + 4912]
                        mov              qword ptr [rsp + 5072], rax
                        mov              rax, qword ptr [rsp + 4920]
                        mov              qword ptr [rsp + 5080], rax
                        mov              rax, qword ptr [rsp + 5008]
                        mov              qword ptr [rsp + 5056], rax
                        mov              rax, qword ptr [rsp + 5016]
                        mov              qword ptr [rsp + 5064], rax
                        mov              rax, qword ptr [rsp + 5104]
                        mov              qword ptr [rsp + 5040], rax
                        mov              rax, qword ptr [rsp + 5112]
                        mov              qword ptr [rsp + 5048], rax
                        lea              rdi, [rsp + 5040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5032], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n460_call_prolog_α
n459_call_prolog_β:     mov              r11, 266;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n460_call_prolog_α:     mov              r11, 267
                        mov              rax, qword ptr [rsp + 5024]
                        mov              qword ptr [rsp + 5184], rax
                        mov              rax, qword ptr [rsp + 5032]
                        mov              qword ptr [rsp + 5192], rax
                        mov              rax, qword ptr [rsp + 5120]
                        mov              qword ptr [rsp + 5168], rax
                        mov              rax, qword ptr [rsp + 5128]
                        mov              qword ptr [rsp + 5176], rax
                        mov              rax, qword ptr [rsp + 5216]
                        mov              qword ptr [rsp + 5152], rax
                        mov              rax, qword ptr [rsp + 5224]
                        mov              qword ptr [rsp + 5160], rax
                        lea              rdi, [rsp + 5152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5136], rax
                        mov              qword ptr [rsp + 5144], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n461_call_prolog_α
n460_call_prolog_β:     mov              r11, 267;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n461_call_prolog_α:     mov              r11, 268
                        mov              rax, qword ptr [rsp + 5136]
                        mov              qword ptr [rsp + 5296], rax
                        mov              rax, qword ptr [rsp + 5144]
                        mov              qword ptr [rsp + 5304], rax
                        mov              rax, qword ptr [rsp + 5232]
                        mov              qword ptr [rsp + 5280], rax
                        mov              rax, qword ptr [rsp + 5240]
                        mov              qword ptr [rsp + 5288], rax
                        mov              rax, qword ptr [rsp + 5328]
                        mov              qword ptr [rsp + 5264], rax
                        mov              rax, qword ptr [rsp + 5336]
                        mov              qword ptr [rsp + 5272], rax
                        lea              rdi, [rsp + 5264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5248], rax
                        mov              qword ptr [rsp + 5256], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n462_call_prolog_α
n461_call_prolog_β:     mov              r11, 268;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n462_call_prolog_α:     mov              r11, 269
                        mov              rax, qword ptr [rsp + 5248]
                        mov              qword ptr [rsp + 5408], rax
                        mov              rax, qword ptr [rsp + 5256]
                        mov              qword ptr [rsp + 5416], rax
                        mov              rax, qword ptr [rsp + 5344]
                        mov              qword ptr [rsp + 5392], rax
                        mov              rax, qword ptr [rsp + 5352]
                        mov              qword ptr [rsp + 5400], rax
                        mov              rax, qword ptr [rsp + 5440]
                        mov              qword ptr [rsp + 5376], rax
                        mov              rax, qword ptr [rsp + 5448]
                        mov              qword ptr [rsp + 5384], rax
                        lea              rdi, [rsp + 5376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5360], rax
                        mov              qword ptr [rsp + 5368], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n463_call_prolog_α
n462_call_prolog_β:     mov              r11, 269;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n463_call_prolog_α:     mov              r11, 270
                        mov              rax, qword ptr [rsp + 5360]
                        mov              qword ptr [rsp + 5520], rax
                        mov              rax, qword ptr [rsp + 5368]
                        mov              qword ptr [rsp + 5528], rax
                        mov              rax, qword ptr [rsp + 5456]
                        mov              qword ptr [rsp + 5504], rax
                        mov              rax, qword ptr [rsp + 5464]
                        mov              qword ptr [rsp + 5512], rax
                        mov              rax, qword ptr [rsp + 5552]
                        mov              qword ptr [rsp + 5488], rax
                        mov              rax, qword ptr [rsp + 5560]
                        mov              qword ptr [rsp + 5496], rax
                        lea              rdi, [rsp + 5488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5472], rax
                        mov              qword ptr [rsp + 5480], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n464_call_prolog_α
n463_call_prolog_β:     mov              r11, 270;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_call_prolog_α:     mov              r11, 271
                        mov              rax, qword ptr [rsp + 5472]
                        mov              qword ptr [rsp + 5632], rax
                        mov              rax, qword ptr [rsp + 5480]
                        mov              qword ptr [rsp + 5640], rax
                        mov              rax, qword ptr [rsp + 5568]
                        mov              qword ptr [rsp + 5616], rax
                        mov              rax, qword ptr [rsp + 5576]
                        mov              qword ptr [rsp + 5624], rax
                        mov              rax, qword ptr [rsp + 5664]
                        mov              qword ptr [rsp + 5600], rax
                        mov              rax, qword ptr [rsp + 5672]
                        mov              qword ptr [rsp + 5608], rax
                        lea              rdi, [rsp + 5600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5584], rax
                        mov              qword ptr [rsp + 5592], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n465_call_prolog_α
n464_call_prolog_β:     mov              r11, 271;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n465_call_prolog_α:     mov              r11, 272
                        mov              rax, qword ptr [rsp + 5584]
                        mov              qword ptr [rsp + 5744], rax
                        mov              rax, qword ptr [rsp + 5592]
                        mov              qword ptr [rsp + 5752], rax
                        mov              rax, qword ptr [rsp + 5680]
                        mov              qword ptr [rsp + 5728], rax
                        mov              rax, qword ptr [rsp + 5688]
                        mov              qword ptr [rsp + 5736], rax
                        mov              rax, qword ptr [rsp + 5776]
                        mov              qword ptr [rsp + 5712], rax
                        mov              rax, qword ptr [rsp + 5784]
                        mov              qword ptr [rsp + 5720], rax
                        lea              rdi, [rsp + 5712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5696], rax
                        mov              qword ptr [rsp + 5704], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n466_call_prolog_α
n465_call_prolog_β:     mov              r11, 272;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n466_call_prolog_α:     mov              r11, 273
                        mov              rax, qword ptr [rsp + 5696]
                        mov              qword ptr [rsp + 5856], rax
                        mov              rax, qword ptr [rsp + 5704]
                        mov              qword ptr [rsp + 5864], rax
                        mov              rax, qword ptr [rsp + 5792]
                        mov              qword ptr [rsp + 5840], rax
                        mov              rax, qword ptr [rsp + 5800]
                        mov              qword ptr [rsp + 5848], rax
                        mov              rax, qword ptr [rsp + 5888]
                        mov              qword ptr [rsp + 5824], rax
                        mov              rax, qword ptr [rsp + 5896]
                        mov              qword ptr [rsp + 5832], rax
                        lea              rdi, [rsp + 5824]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 5808], rax
                        mov              qword ptr [rsp + 5816], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n467_var_ref_α
n466_call_prolog_β:     mov              r11, 273;                            jmp   n476_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n467_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 5936]
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5912], rdx;         jmp   n468_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n468_lit_string_α:      mov              r11, 275
                        mov              qword ptr [rsp + 5920], 2            # result
                        mov              dword ptr [rsp + 5924], 2
                        mov              rax, qword ptr [rip + .Lmain_α_631_0]
                        mov              qword ptr [rsp + 5928], rax;         jmp   n469_call_proc_staged_α
.Lmain_α_631_0:         .quad            .Lmain_α_631_0_s
.Lmain_α_631_0_s:       .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n469_call_proc_staged_α:
                        mov              r11, 276
                        mov              qword ptr [rsp + 256], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_633_200
                        mov              rax, qword ptr [rsp + 5808]
                        mov              rdx, qword ptr [rsp + 5816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lmain_α_633_201
.Lmain_α_633_200:       mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5808]
                        mov              rdx, qword ptr [rsp + 5816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_633_201:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_633_202
                        mov              rax, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lmain_α_633_203
.Lmain_α_633_202:       mov              edi, 1
                        mov              rsi, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_633_203:       lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lmain_α_633_204
                        mov              rax, qword ptr [rsp + 5920]
                        mov              rdx, qword ptr [rsp + 5928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lmain_α_633_205
.Lmain_α_633_204:       mov              edi, 2
                        mov              rsi, qword ptr [rsp + 5920]
                        mov              rdx, qword ptr [rsp + 5928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_633_205:       lea              rax, [rip + .Lmain_α_633_7]
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
                        test             rax, rax;                            je    .Lmain_α_633_1
                        lea              rcx, [rip + .Lmain_α_633_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_633_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_633_4];         jmp   rax
.Lmain_α_633_3:         add              rsp, 16
                        mov              qword ptr [rsp + 264], rsp
                        add              rsp, 8
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lmain_α_633_5
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_633_2
.Lmain_α_633_5:         call             rt_gen_spine_pass_γ@PLT;             jmp   .Lmain_α_633_2
.Lmain_α_633_4:         add              rsp, 16
                        mov              rax, qword ptr [rsp + 256]
                        test             rax, rax;                            jne   .Lmain_α_633_6
                        mov              qword ptr [rsp + 256], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lmain_α_633_2
.Lmain_α_633_6:         call             rt_gen_spine_pass_ω@PLT;             jmp   .Lmain_α_633_2
.Lmain_α_633_1:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_ab_undef_fn_stub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lmain_α_633_2:         mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lmain_α_633_29
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
.Lmain_α_633_29:        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n470_var_α
n469_call_proc_staged_β:
                        mov              r11, 276
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rsp + 256], 0
                        lea              rdi, [rsp + 272]
                        lea              rsi, [rsp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n476_call_prolog_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rsp + 272]
                        mov              rdx, qword ptr [rsp + 280]
                        mov              ecx, 64
                        mov              r8d, 1488
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_set@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 5808]
                        mov              rdx, qword ptr [rsp + 5816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rsp + 5904]
                        mov              rdx, qword ptr [rsp + 5912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rsp + 5920]
                        mov              rdx, qword ptr [rsp + 5928]
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
                        test             rax, rax;                            je    n476_call_prolog_α
                        lea              r8, [rip + .Lmain_α_633_7]
                        push             r8
                        lea              rcx, [rip + .Lmain_α_633_4]
                        push             rcx
                        lea              rcx, [rip + .Lmain_α_633_3]
                        push             rcx
                        lea              rdx, [rip + .Lmain_α_633_4];         jmp   rax
.Lmain_α_633_7:         add              rsp, 8
                        mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n476_call_prolog_α
                                                                              jmp   n470_var_α
.Lmain_β_633_0:         .quad            .Lmain_β_633_0_s
.Lmain_β_633_0_s:       .string          "qsort/3"
#-----------------------------------------------------------------------------------------------------------------------
n470_var_α:             mov              r11, 277
                        mov              rax, qword ptr [rsp + 5936]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 5944]
                        mov              qword ptr [rsp + 184], rax;          jmp   n471_call_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n471_call_prolog_α:     mov              r11, 278
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn637:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn637]
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
                        cmp              al, 104;                             je    n469_call_proc_staged_β
                                                                              jmp   n472_lit_string_α
n471_call_prolog_β:     mov              r11, 278;                            jmp   n469_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n472_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lmain_α_638_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n473_call_prolog_α
.Lmain_α_638_0:         .quad            .Lmain_α_638_0_s
.Lmain_α_638_0_s:       .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n473_call_prolog_α:     mov              r11, 280
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn640:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn640]
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
                        cmp              al, 104;                             je    n469_call_proc_staged_β
                                                                              jmp   n474_move_label_α
n473_call_prolog_β:     mov              r11, 280;                            jmp   n469_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n474_move_label_α:      mov              r11, 281
                        lea              rax, [rip + n469_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n475_disjunction_α:     mov              r11, 282
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
n475_disjunction_β:     mov              r11, 282;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n476_call_prolog_α:     mov              r11, 283
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
n476_call_prolog_β:     mov              r11, 283;                            jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n475_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5976]
                        add              rsp, 6000;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 5984]
                        add              rsp, 6000;                           jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "partition/4"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__partition$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "qsort/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__qsort$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1616
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
