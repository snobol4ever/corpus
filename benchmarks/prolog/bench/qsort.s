                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__partition$2F4:
                        sub              rsp, 2240
                        mov              qword ptr [rsp + 2216], rcx
                        mov              qword ptr [rsp + 2224], rdx
                        mov              qword ptr [rsp + 2232], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 2080], rax
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_73_102
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88];           jmp   .Lcall_prolog_α_73_101
.Lcall_prolog_α_73_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_73_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_73_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_73_101
.Lcall_prolog_α_73_100: lea              rdi, [rbp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_73_101: mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   partition$2F4_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx;         jmp   n2_lit_integer_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 2048], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_76_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n3_lit_integer_α
.Llit_integer_α_76_0:   .quad            3
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 2064], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_77_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n4_call_prolog_α
.Llit_integer_α_77_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_call_prolog_bx, @function
n4_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        lea              r8, [rbp + 1984]
.Lcall_prolog_α_78_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_78_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_78_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_78_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_78_110
.Lcall_prolog_α_78_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_78_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_78_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_78_110
.Lcall_prolog_α_78_113: cmp              al, 72;                              jne   .Lcall_prolog_α_78_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_78_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_78_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_78_110
.Lcall_prolog_α_78_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_78_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_78_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_78_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_78_114
                                                                              jmp   .Lcall_prolog_α_78_118
.Lcall_prolog_α_78_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_78_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_78_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_78_115
                                                                              jmp   .Lcall_prolog_α_78_114
.Lcall_prolog_α_78_119: cmp              al, 3;                               jne   .Lcall_prolog_α_78_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_78_114
                                                                              jmp   .Lcall_prolog_α_78_115
.Lcall_prolog_α_78_120: cmp              al, 2;                               jne   .Lcall_prolog_α_78_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_78_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_78_114
                                                                              jmp   .Lcall_prolog_α_78_115
.Lcall_prolog_α_78_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_78_117
.Lcall_prolog_α_78_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_78_117
.Lcall_prolog_α_78_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_78_117: mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n30_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n30_var_ref_α
                        .size            n4_call_prolog_bx, .-n4_call_prolog_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n6_var_ref_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n8_call_prolog_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_prolog_bx, @function
n8_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_prolog_α:       mov              r11, 9
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        lea              r8, [rbp + 1888]
.Lcall_prolog_α_85_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_85_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_85_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_85_60
.Lcall_prolog_α_85_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_85_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_85_60
.Lcall_prolog_α_85_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_85_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_85_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_85_60
.Lcall_prolog_α_85_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_85_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_85_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_85_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_85_80
                                                                              jmp   .Lcall_prolog_α_85_74
.Lcall_prolog_α_85_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_85_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_85_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_85_73
                        lea              r9, [rbp + 1904]
.Lcall_prolog_α_85_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_85_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_85_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_85_64
.Lcall_prolog_α_85_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_85_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_85_64
.Lcall_prolog_α_85_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_85_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_85_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_85_64
.Lcall_prolog_α_85_65:  lea              rcx, [rbp + 1920]
.Lcall_prolog_α_85_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_85_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_85_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_85_68
.Lcall_prolog_α_85_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_85_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_85_68
.Lcall_prolog_α_85_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_85_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_85_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_85_68
.Lcall_prolog_α_85_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_85_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_85_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_85_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_85_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_85_75
                                                                              jmp   .Lcall_prolog_α_85_72
.Lcall_prolog_α_85_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_85_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_85_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_85_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_85_76
                                                                              jmp   .Lcall_prolog_α_85_72
.Lcall_prolog_α_85_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_85_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_85_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_85_77
.Lcall_prolog_α_85_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_85_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_85_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_85_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_85_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_85_72
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
                        lea              r9, [rbp + 1904]
.Lcall_prolog_α_85_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_85_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_85_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_85_81
.Lcall_prolog_α_85_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_85_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_85_81
.Lcall_prolog_α_85_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_85_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_85_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_85_81
.Lcall_prolog_α_85_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_85_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_85_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_85_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_85_85
                                                                              jmp   .Lcall_prolog_α_85_86
.Lcall_prolog_α_85_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_85_87
.Lcall_prolog_α_85_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_85_87:  lea              rcx, [rbp + 1920]
.Lcall_prolog_α_85_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_85_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_85_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_85_88
.Lcall_prolog_α_85_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_85_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_85_88
.Lcall_prolog_α_85_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_85_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_85_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_85_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_85_88
.Lcall_prolog_α_85_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_85_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_85_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_85_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_85_92
                                                                              jmp   .Lcall_prolog_α_85_93
.Lcall_prolog_α_85_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_85_94
.Lcall_prolog_α_85_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_85_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_85_77
.Lcall_prolog_α_85_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_85_77
.Lcall_prolog_α_85_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_85_77:  mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n9_var_ref_α
n8_call_prolog_β:       mov              r11, 9;                              jmp   n29_call_prolog_α
                        .size            n8_call_prolog_bx, .-n8_call_prolog_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx;         jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n11_call_prolog_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_prolog_bx, @function
n11_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_prolog_α:      mov              r11, 12
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        lea              r8, [rbp + 1792]
.Lcall_prolog_α_90_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_90_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_90_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_90_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_90_40
.Lcall_prolog_α_90_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_90_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_90_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_90_40
.Lcall_prolog_α_90_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_90_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_90_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_90_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_90_40
.Lcall_prolog_α_90_41:  lea              r9, [rbp + 1808]
.Lcall_prolog_α_90_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_90_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_90_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_90_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_90_42
.Lcall_prolog_α_90_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_90_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_90_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_90_42
.Lcall_prolog_α_90_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_90_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_90_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_90_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_90_42
.Lcall_prolog_α_90_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_90_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_90_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_90_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_90_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_90_44
                                                                              jmp   .Lcall_prolog_α_90_45
.Lcall_prolog_α_90_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_90_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_90_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_90_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_90_53
                                                                              jmp   .Lcall_prolog_α_90_46
.Lcall_prolog_α_90_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_90_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_90_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_90_51
.Lcall_prolog_α_90_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_90_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_90_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_90_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_90_47
                                                                              jmp   .Lcall_prolog_α_90_48
.Lcall_prolog_α_90_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_90_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_90_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_90_51
.Lcall_prolog_α_90_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_90_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_90_53
                                                                              jmp   .Lcall_prolog_α_90_52
.Lcall_prolog_α_90_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_90_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_90_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_90_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_90_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_90_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_90_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_90_51
                                                                              jmp   .Lcall_prolog_α_90_52
.Lcall_prolog_α_90_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_90_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_90_53
.Lcall_prolog_α_90_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_90_54
.Lcall_prolog_α_90_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_90_54
.Lcall_prolog_α_90_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_90_54:  mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n12_var_ref_α
n11_call_prolog_β:      mov              r11, 12;                             jmp   n29_call_prolog_α
                        .size            n11_call_prolog_bx, .-n11_call_prolog_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n14_var_ref_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n15_call_prolog_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_call_prolog_bx, @function
n15_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_call_prolog_α:      mov              r11, 16
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        lea              r8, [rbp + 1696]
.Lcall_prolog_α_97_60:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_97_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_97_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_97_60
.Lcall_prolog_α_97_62:  cmp              esi, 2;                              jne   .Lcall_prolog_α_97_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_97_60
.Lcall_prolog_α_97_63:  cmp              al, 72;                              jne   .Lcall_prolog_α_97_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_97_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_97_60
.Lcall_prolog_α_97_61:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_97_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_97_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_97_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_97_80
                                                                              jmp   .Lcall_prolog_α_97_74
.Lcall_prolog_α_97_74:  mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_97_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_97_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_97_73
                        lea              r9, [rbp + 1712]
.Lcall_prolog_α_97_64:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_97_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_97_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_97_64
.Lcall_prolog_α_97_66:  cmp              esi, 2;                              jne   .Lcall_prolog_α_97_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_97_64
.Lcall_prolog_α_97_67:  cmp              al, 72;                              jne   .Lcall_prolog_α_97_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_97_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_97_64
.Lcall_prolog_α_97_65:  lea              rcx, [rbp + 1728]
.Lcall_prolog_α_97_68:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_97_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_97_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_97_68
.Lcall_prolog_α_97_70:  cmp              esi, 2;                              jne   .Lcall_prolog_α_97_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_97_68
.Lcall_prolog_α_97_71:  cmp              al, 72;                              jne   .Lcall_prolog_α_97_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_97_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_97_68
.Lcall_prolog_α_97_69:  cmp              r9, rcx;                             je    .Lcall_prolog_α_97_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_97_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_97_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_97_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_97_75
                                                                              jmp   .Lcall_prolog_α_97_72
.Lcall_prolog_α_97_75:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_97_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_97_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_97_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_97_76
                                                                              jmp   .Lcall_prolog_α_97_72
.Lcall_prolog_α_97_76:  lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_97_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_97_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_97_77
.Lcall_prolog_α_97_80:  lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_97_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_97_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_97_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_97_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_97_72
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
                        lea              r9, [rbp + 1712]
.Lcall_prolog_α_97_81:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_97_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_97_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_97_81
.Lcall_prolog_α_97_83:  cmp              esi, 2;                              jne   .Lcall_prolog_α_97_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_97_81
.Lcall_prolog_α_97_84:  cmp              al, 72;                              jne   .Lcall_prolog_α_97_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_97_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_97_81
.Lcall_prolog_α_97_82:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_97_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_97_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_97_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_97_85
                                                                              jmp   .Lcall_prolog_α_97_86
.Lcall_prolog_α_97_85:  mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_97_87
.Lcall_prolog_α_97_86:  mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_97_87:  lea              rcx, [rbp + 1728]
.Lcall_prolog_α_97_88:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_97_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_97_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_97_88
.Lcall_prolog_α_97_90:  cmp              esi, 2;                              jne   .Lcall_prolog_α_97_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_97_88
.Lcall_prolog_α_97_91:  cmp              al, 72;                              jne   .Lcall_prolog_α_97_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_97_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_97_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_97_88
.Lcall_prolog_α_97_89:  mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_97_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_97_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_97_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_97_92
                                                                              jmp   .Lcall_prolog_α_97_93
.Lcall_prolog_α_97_92:  mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_97_94
.Lcall_prolog_α_97_93:  mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_97_94:  lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_97_77
.Lcall_prolog_α_97_73:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_97_77
.Lcall_prolog_α_97_72:  mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_97_77:  mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_prolog_β:      mov              r11, 16;                             jmp   n29_call_prolog_α
                        .size            n15_call_prolog_bx, .-n15_call_prolog_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n17_var_ref_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n18_call_prolog_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_call_prolog_bx, @function
n18_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_prolog_α:      mov              r11, 19
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        lea              r8, [rbp + 1600]
.Lcall_prolog_α_102_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_102_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_102_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_102_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_102_40
.Lcall_prolog_α_102_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_102_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_102_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_102_40
.Lcall_prolog_α_102_56: cmp              al, 72;                              jne   .Lcall_prolog_α_102_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_102_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_102_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_102_40
.Lcall_prolog_α_102_41: lea              r9, [rbp + 1616]
.Lcall_prolog_α_102_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_102_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_102_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_102_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_102_42
.Lcall_prolog_α_102_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_102_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_102_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_102_42
.Lcall_prolog_α_102_58: cmp              al, 72;                              jne   .Lcall_prolog_α_102_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_102_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_102_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_102_42
.Lcall_prolog_α_102_43: cmp              r8, r9;                              je    .Lcall_prolog_α_102_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_102_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_102_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_102_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_102_44
                                                                              jmp   .Lcall_prolog_α_102_45
.Lcall_prolog_α_102_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_102_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_102_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_102_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_102_53
                                                                              jmp   .Lcall_prolog_α_102_46
.Lcall_prolog_α_102_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_102_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_102_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_102_51
.Lcall_prolog_α_102_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_102_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_102_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_102_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_102_47
                                                                              jmp   .Lcall_prolog_α_102_48
.Lcall_prolog_α_102_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_102_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_102_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_102_51
.Lcall_prolog_α_102_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_102_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_102_53
                                                                              jmp   .Lcall_prolog_α_102_52
.Lcall_prolog_α_102_49: cmp              dl, 80;                              je    .Lcall_prolog_α_102_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_102_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_102_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_102_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_102_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_102_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_102_51
                                                                              jmp   .Lcall_prolog_α_102_52
.Lcall_prolog_α_102_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_102_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_102_53
.Lcall_prolog_α_102_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_102_54
.Lcall_prolog_α_102_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_102_54
.Lcall_prolog_α_102_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_102_54: mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n19_var_α
n18_call_prolog_β:      mov              r11, 19;                             jmp   n29_call_prolog_α
                        .size            n18_call_prolog_bx, .-n18_call_prolog_bx
                        .type            n19_var_bx, @function
n19_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n20_var_α
                        .size            n19_var_bx, .-n19_var_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n21_call_prolog_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_call_prolog_bx, @function
n21_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_prolog_α:      mov              r11, 22
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    n29_call_prolog_α
                                                                              jmp   n22_cut_α
n21_call_prolog_β:      mov              r11, 22;                             jmp   n29_call_prolog_α
                        .size            n21_call_prolog_bx, .-n21_call_prolog_bx
                        .type            n22_cut_bx, @function
n22_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_cut_α:              mov              r11, 23;                             jmp   n23_var_ref_α
                        .size            n22_cut_bx, .-n22_cut_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n24_var_ref_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n26_var_ref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2176]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n27_call_proc_staged_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_call_proc_staged_bx, @function
n27_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_proc_staged_α: mov              r11, 28
                        mov              qword ptr [rbp + 1408], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_118_200
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_118_201
.Lcall_proc_staged_α_118_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_118_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_118_202
                        mov              rax, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_118_203
.Lcall_proc_staged_α_118_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_118_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_118_204
                        mov              rax, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_118_205
.Lcall_proc_staged_α_118_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_118_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_118_206
                        mov              rax, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_118_207
.Lcall_proc_staged_α_118_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_118_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_118_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_118_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_118_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_118_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_118_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_118_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1416], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1408]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_118_5
                        mov              qword ptr [rbp + 1408], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_118_2
.Lcall_proc_staged_α_118_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_118_2
.Lcall_proc_staged_α_118_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1408]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_118_6
                        mov              qword ptr [rbp + 1408], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_118_2
.Lcall_proc_staged_α_118_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_118_2
.Lcall_proc_staged_α_118_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_118_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n72_call_prolog_α
.Lcall_proc_staged_α_118_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_118_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1328]
                        mov              rdx, qword ptr [rbp + 1336]
.Lcall_proc_staged_α_118_29:
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n28_suspend_α
n27_call_proc_staged_β: mov              r11, 28
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 1408], 0
                        lea              rdi, [rbp + 1424]
                        lea              rsi, [rbp + 1432]
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
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
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
                        mov              rsi, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1456]
                        mov              rdx, qword ptr [rbp + 1464]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1472]
                        mov              rdx, qword ptr [rbp + 1480]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1488]
                        mov              rdx, qword ptr [rbp + 1496]
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_118_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_118_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_118_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_118_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_118_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n28_suspend_α
.Lcall_proc_staged_α_118_0:
                        .quad            .Lcall_proc_staged_α_118_0_s
.Lcall_proc_staged_α_118_0_s:
                        .string          "partition/4"
                        .size            n27_call_proc_staged_bx, .-n27_call_proc_staged_bx
                        .type            n28_suspend_bx, @function
n28_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_suspend_α:          mov              r11, 29
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_120_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2080];         jmp   rax
.Lsuspend_α_120_61:     mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
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
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax;            jmp   partition$2F4_γ
n28_suspend_β:          mov              r11, 29;                             jmp   n27_call_proc_staged_β
                        .size            n28_suspend_bx, .-n28_suspend_bx
                        .type            n29_call_prolog_bx, @function
n29_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_prolog_α:      mov              r11, 30
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   n30_var_ref_α
n29_call_prolog_β:      mov              r11, 30;                             jmp   partition$2F4_ω
                        .size            n29_call_prolog_bx, .-n29_call_prolog_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n31_lit_integer_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_lit_integer_bx, @function
n31_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_lit_integer_α:      mov              r11, 32
                        mov              qword ptr [rbp + 1264], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_124_0]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n32_lit_integer_α
.Llit_integer_α_124_0:  .quad            3
                        .size            n31_lit_integer_bx, .-n31_lit_integer_bx
                        .type            n32_lit_integer_bx, @function
n32_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_integer_α:      mov              r11, 33
                        mov              qword ptr [rbp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_125_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n33_call_prolog_α
.Llit_integer_α_125_0:  .quad            0
                        .size            n32_lit_integer_bx, .-n32_lit_integer_bx
                        .type            n33_call_prolog_bx, @function
n33_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_prolog_α:      mov              r11, 34
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        lea              r8, [rbp + 1200]
.Lcall_prolog_α_126_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_126_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_126_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_126_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_126_110
.Lcall_prolog_α_126_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_126_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_126_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_126_110
.Lcall_prolog_α_126_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_126_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_126_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_126_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_126_110
.Lcall_prolog_α_126_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_126_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_126_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_126_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_126_114
                                                                              jmp   .Lcall_prolog_α_126_118
.Lcall_prolog_α_126_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_126_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_126_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_126_115
                                                                              jmp   .Lcall_prolog_α_126_114
.Lcall_prolog_α_126_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_126_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_126_114
                                                                              jmp   .Lcall_prolog_α_126_115
.Lcall_prolog_α_126_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_126_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_126_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_126_114
                                                                              jmp   .Lcall_prolog_α_126_115
.Lcall_prolog_α_126_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_126_117
.Lcall_prolog_α_126_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_126_117
.Lcall_prolog_α_126_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_126_117:
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              al, 104;                             je    n55_var_ref_α
                                                                              jmp   n34_var_ref_α
n33_call_prolog_β:      mov              r11, 34;                             jmp   n55_var_ref_α
                        .size            n33_call_prolog_bx, .-n33_call_prolog_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n35_var_ref_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n36_var_ref_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n37_call_prolog_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_call_prolog_bx, @function
n37_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_prolog_α:      mov              r11, 38
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        lea              r8, [rbp + 1104]
.Lcall_prolog_α_133_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_133_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_133_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_133_60
.Lcall_prolog_α_133_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_133_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_133_60
.Lcall_prolog_α_133_63: cmp              al, 72;                              jne   .Lcall_prolog_α_133_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_133_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_133_60
.Lcall_prolog_α_133_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_133_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_133_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_133_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_133_80
                                                                              jmp   .Lcall_prolog_α_133_74
.Lcall_prolog_α_133_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_133_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_133_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_133_73
                        lea              r9, [rbp + 1120]
.Lcall_prolog_α_133_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_133_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_133_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_133_64
.Lcall_prolog_α_133_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_133_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_133_64
.Lcall_prolog_α_133_67: cmp              al, 72;                              jne   .Lcall_prolog_α_133_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_133_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_133_64
.Lcall_prolog_α_133_65: lea              rcx, [rbp + 1136]
.Lcall_prolog_α_133_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_133_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_133_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_133_68
.Lcall_prolog_α_133_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_133_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_133_68
.Lcall_prolog_α_133_71: cmp              al, 72;                              jne   .Lcall_prolog_α_133_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_133_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_133_68
.Lcall_prolog_α_133_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_133_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_133_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_133_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_133_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_133_75
                                                                              jmp   .Lcall_prolog_α_133_72
.Lcall_prolog_α_133_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_133_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_133_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_133_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_133_76
                                                                              jmp   .Lcall_prolog_α_133_72
.Lcall_prolog_α_133_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_133_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_133_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_133_77
.Lcall_prolog_α_133_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_133_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_133_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_133_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_133_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_133_72
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
                        lea              r9, [rbp + 1120]
.Lcall_prolog_α_133_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_133_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_133_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_133_81
.Lcall_prolog_α_133_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_133_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_133_81
.Lcall_prolog_α_133_84: cmp              al, 72;                              jne   .Lcall_prolog_α_133_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_133_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_133_81
.Lcall_prolog_α_133_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_133_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_133_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_133_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_133_85
                                                                              jmp   .Lcall_prolog_α_133_86
.Lcall_prolog_α_133_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_133_87
.Lcall_prolog_α_133_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_133_87: lea              rcx, [rbp + 1136]
.Lcall_prolog_α_133_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_133_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_133_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_133_88
.Lcall_prolog_α_133_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_133_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_133_88
.Lcall_prolog_α_133_91: cmp              al, 72;                              jne   .Lcall_prolog_α_133_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_133_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_133_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_133_88
.Lcall_prolog_α_133_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_133_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_133_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_133_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_133_92
                                                                              jmp   .Lcall_prolog_α_133_93
.Lcall_prolog_α_133_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_133_94
.Lcall_prolog_α_133_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_133_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_133_77
.Lcall_prolog_α_133_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_133_77
.Lcall_prolog_α_133_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_133_77: mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n38_var_ref_α
n37_call_prolog_β:      mov              r11, 38;                             jmp   n54_call_prolog_α
                        .size            n37_call_prolog_bx, .-n37_call_prolog_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n39_var_ref_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n40_call_prolog_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_call_prolog_bx, @function
n40_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lcall_prolog_α_138_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_138_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_138_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_138_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_138_40
.Lcall_prolog_α_138_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_138_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_138_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_138_40
.Lcall_prolog_α_138_56: cmp              al, 72;                              jne   .Lcall_prolog_α_138_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_138_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_138_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_138_40
.Lcall_prolog_α_138_41: lea              r9, [rbp + 1024]
.Lcall_prolog_α_138_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_138_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_138_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_138_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_138_42
.Lcall_prolog_α_138_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_138_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_138_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_138_42
.Lcall_prolog_α_138_58: cmp              al, 72;                              jne   .Lcall_prolog_α_138_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_138_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_138_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_138_42
.Lcall_prolog_α_138_43: cmp              r8, r9;                              je    .Lcall_prolog_α_138_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_138_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_138_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_138_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_138_44
                                                                              jmp   .Lcall_prolog_α_138_45
.Lcall_prolog_α_138_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_138_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_138_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_138_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_138_53
                                                                              jmp   .Lcall_prolog_α_138_46
.Lcall_prolog_α_138_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_138_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_138_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_138_51
.Lcall_prolog_α_138_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_138_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_138_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_138_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_138_47
                                                                              jmp   .Lcall_prolog_α_138_48
.Lcall_prolog_α_138_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_138_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_138_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_138_51
.Lcall_prolog_α_138_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_138_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_138_53
                                                                              jmp   .Lcall_prolog_α_138_52
.Lcall_prolog_α_138_49: cmp              dl, 80;                              je    .Lcall_prolog_α_138_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_138_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_138_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_138_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_138_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_138_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_138_51
                                                                              jmp   .Lcall_prolog_α_138_52
.Lcall_prolog_α_138_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_138_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_138_53
.Lcall_prolog_α_138_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_138_54
.Lcall_prolog_α_138_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_138_54
.Lcall_prolog_α_138_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_138_54: mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   n54_call_prolog_α
                        .size            n40_call_prolog_bx, .-n40_call_prolog_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n42_var_ref_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n43_call_prolog_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_call_prolog_bx, @function
n43_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_prolog_α:      mov              r11, 44
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        lea              r8, [rbp + 928]
.Lcall_prolog_α_143_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_143_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_143_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_143_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_143_40
.Lcall_prolog_α_143_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_143_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_143_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_143_40
.Lcall_prolog_α_143_56: cmp              al, 72;                              jne   .Lcall_prolog_α_143_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_143_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_143_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_143_40
.Lcall_prolog_α_143_41: lea              r9, [rbp + 944]
.Lcall_prolog_α_143_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_143_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_143_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_143_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_143_42
.Lcall_prolog_α_143_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_143_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_143_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_143_42
.Lcall_prolog_α_143_58: cmp              al, 72;                              jne   .Lcall_prolog_α_143_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_143_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_143_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_143_42
.Lcall_prolog_α_143_43: cmp              r8, r9;                              je    .Lcall_prolog_α_143_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_143_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_143_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_143_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_143_44
                                                                              jmp   .Lcall_prolog_α_143_45
.Lcall_prolog_α_143_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_143_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_143_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_143_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_143_53
                                                                              jmp   .Lcall_prolog_α_143_46
.Lcall_prolog_α_143_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_143_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_143_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_143_51
.Lcall_prolog_α_143_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_143_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_143_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_143_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_143_47
                                                                              jmp   .Lcall_prolog_α_143_48
.Lcall_prolog_α_143_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_143_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_143_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_143_51
.Lcall_prolog_α_143_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_143_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_143_53
                                                                              jmp   .Lcall_prolog_α_143_52
.Lcall_prolog_α_143_49: cmp              dl, 80;                              je    .Lcall_prolog_α_143_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_143_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_143_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_143_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_143_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_143_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_143_51
                                                                              jmp   .Lcall_prolog_α_143_52
.Lcall_prolog_α_143_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_143_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_143_53
.Lcall_prolog_α_143_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_143_54
.Lcall_prolog_α_143_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_143_54
.Lcall_prolog_α_143_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_143_54: mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n44_var_ref_α
n43_call_prolog_β:      mov              r11, 44;                             jmp   n54_call_prolog_α
                        .size            n43_call_prolog_bx, .-n43_call_prolog_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n45_var_ref_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n46_var_ref_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n47_call_prolog_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_call_prolog_bx, @function
n47_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_prolog_α:      mov              r11, 48
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        lea              r8, [rbp + 832]
.Lcall_prolog_α_150_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_150_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_150_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_150_60
.Lcall_prolog_α_150_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_150_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_150_60
.Lcall_prolog_α_150_63: cmp              al, 72;                              jne   .Lcall_prolog_α_150_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_150_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_150_60
.Lcall_prolog_α_150_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_150_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_150_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_150_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_150_80
                                                                              jmp   .Lcall_prolog_α_150_74
.Lcall_prolog_α_150_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_150_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_150_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_150_73
                        lea              r9, [rbp + 848]
.Lcall_prolog_α_150_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_150_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_150_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_150_64
.Lcall_prolog_α_150_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_150_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_150_64
.Lcall_prolog_α_150_67: cmp              al, 72;                              jne   .Lcall_prolog_α_150_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_150_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_150_64
.Lcall_prolog_α_150_65: lea              rcx, [rbp + 864]
.Lcall_prolog_α_150_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_150_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_150_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_150_68
.Lcall_prolog_α_150_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_150_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_150_68
.Lcall_prolog_α_150_71: cmp              al, 72;                              jne   .Lcall_prolog_α_150_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_150_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_150_68
.Lcall_prolog_α_150_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_150_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_150_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_150_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_150_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_150_75
                                                                              jmp   .Lcall_prolog_α_150_72
.Lcall_prolog_α_150_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_150_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_150_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_150_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_150_76
                                                                              jmp   .Lcall_prolog_α_150_72
.Lcall_prolog_α_150_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_150_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_150_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_150_77
.Lcall_prolog_α_150_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_150_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_150_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_150_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_150_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_150_72
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
                        lea              r9, [rbp + 848]
.Lcall_prolog_α_150_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_150_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_150_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_150_81
.Lcall_prolog_α_150_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_150_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_150_81
.Lcall_prolog_α_150_84: cmp              al, 72;                              jne   .Lcall_prolog_α_150_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_150_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_150_81
.Lcall_prolog_α_150_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_150_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_150_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_150_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_150_85
                                                                              jmp   .Lcall_prolog_α_150_86
.Lcall_prolog_α_150_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_150_87
.Lcall_prolog_α_150_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_150_87: lea              rcx, [rbp + 864]
.Lcall_prolog_α_150_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_150_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_150_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_150_88
.Lcall_prolog_α_150_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_150_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_150_88
.Lcall_prolog_α_150_91: cmp              al, 72;                              jne   .Lcall_prolog_α_150_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_150_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_150_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_150_88
.Lcall_prolog_α_150_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_150_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_150_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_150_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_150_92
                                                                              jmp   .Lcall_prolog_α_150_93
.Lcall_prolog_α_150_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_150_94
.Lcall_prolog_α_150_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_150_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_150_77
.Lcall_prolog_α_150_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_150_77
.Lcall_prolog_α_150_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_150_77: mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n48_var_ref_α
n47_call_prolog_β:      mov              r11, 48;                             jmp   n54_call_prolog_α
                        .size            n47_call_prolog_bx, .-n47_call_prolog_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2112]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n49_var_ref_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2128]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n50_var_ref_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2144]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n51_var_ref_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_var_ref_bx, @function
n51_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2160]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n52_call_proc_staged_α
                        .size            n51_var_ref_bx, .-n51_var_ref_bx
                        .type            n52_call_proc_staged_bx, @function
n52_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_call_proc_staged_α: mov              r11, 53
                        mov              qword ptr [rbp + 704], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_160_200
                        mov              rax, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_160_201
.Lcall_proc_staged_α_160_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_160_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_160_202
                        mov              rax, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_160_203
.Lcall_proc_staged_α_160_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_160_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_160_204
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_160_205
.Lcall_proc_staged_α_160_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_160_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_160_206
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_160_207
.Lcall_proc_staged_α_160_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_160_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_160_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_160_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_160_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_160_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 712], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_160_5
                        mov              qword ptr [rbp + 704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 704]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_160_6
                        mov              qword ptr [rbp + 704], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_160_2
.Lcall_proc_staged_α_160_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_160_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n54_call_prolog_α
.Lcall_proc_staged_α_160_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_160_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
.Lcall_proc_staged_α_160_29:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n53_suspend_α
n52_call_proc_staged_β: mov              r11, 53
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 704], 0
                        lea              rdi, [rbp + 720]
                        lea              rsi, [rbp + 728]
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
                        mov              rsi, qword ptr [rbp + 720]
                        mov              rdx, qword ptr [rbp + 728]
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
                        mov              rsi, qword ptr [rbp + 736]
                        mov              rdx, qword ptr [rbp + 744]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 752]
                        mov              rdx, qword ptr [rbp + 760]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_160_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_160_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_160_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_160_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    n54_call_prolog_α
                                                                              jmp   n53_suspend_α
.Lcall_proc_staged_α_160_0:
                        .quad            .Lcall_proc_staged_α_160_0_s
.Lcall_proc_staged_α_160_0_s:
                        .string          "partition/4"
                        .size            n52_call_proc_staged_bx, .-n52_call_proc_staged_bx
                        .type            n53_suspend_bx, @function
n53_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_suspend_α:          mov              r11, 54
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_162_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2080];         jmp   rax
.Lsuspend_α_162_61:     mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
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
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax;            jmp   partition$2F4_γ
n53_suspend_β:          mov              r11, 54;                             jmp   n52_call_proc_staged_β
                        .size            n53_suspend_bx, .-n53_suspend_bx
                        .type            n54_call_prolog_bx, @function
n54_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_prolog_α:      mov              r11, 55
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   n55_var_ref_α
n54_call_prolog_β:      mov              r11, 55;                             jmp   partition$2F4_ω
                        .size            n54_call_prolog_bx, .-n54_call_prolog_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n56_lit_integer_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_lit_integer_bx, @function
n56_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_lit_integer_α:      mov              r11, 57
                        mov              qword ptr [rbp + 560], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_166_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n57_lit_string_α
.Llit_integer_α_166_0:  .quad            2
                        .size            n56_lit_integer_bx, .-n56_lit_integer_bx
                        .type            n57_lit_string_bx, @function
n57_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_lit_string_α:       mov              r11, 58
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_167_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n58_call_prolog_α
.Llit_string_α_167_0:   .quad            .Llit_string_α_167_0_s
.Llit_string_α_167_0_s: .string          "[]"
                        .size            n57_lit_string_bx, .-n57_lit_string_bx
                        .type            n58_call_prolog_bx, @function
n58_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_call_prolog_α:      mov              r11, 59
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lcall_prolog_α_168_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_168_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_168_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_168_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_168_110
.Lcall_prolog_α_168_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_168_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_168_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_168_110
.Lcall_prolog_α_168_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_168_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_168_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_168_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_168_110
.Lcall_prolog_α_168_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_168_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_168_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_168_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_168_114
                                                                              jmp   .Lcall_prolog_α_168_118
.Lcall_prolog_α_168_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_168_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_168_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_168_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_168_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_168_114
                                                                              jmp   .Lcall_prolog_α_168_116
.Lcall_prolog_α_168_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_168_117
.Lcall_prolog_α_168_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_168_117
.Lcall_prolog_α_168_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_168_117:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n59_var_ref_α
n58_call_prolog_β:      mov              r11, 59;                             jmp   n72_call_prolog_α
                        .size            n58_call_prolog_bx, .-n58_call_prolog_bx
                        .type            n59_var_ref_bx, @function
n59_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_var_ref_α:          mov              r11, 60
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n60_lit_string_α
                        .size            n59_var_ref_bx, .-n59_var_ref_bx
                        .type            n60_lit_string_bx, @function
n60_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_string_α:       mov              r11, 61
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_171_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n61_call_prolog_α
.Llit_string_α_171_0:   .quad            .Llit_string_α_171_0_s
.Llit_string_α_171_0_s: .string          "[]"
                        .size            n60_lit_string_bx, .-n60_lit_string_bx
                        .type            n61_call_prolog_bx, @function
n61_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_prolog_α:      mov              r11, 62
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_172_2]
                                                                              jmp   .Lcall_prolog_α_172_3
.Lcall_prolog_α_172_2:  .quad            .Lcall_prolog_α_172_2_s
.Lcall_prolog_α_172_2_s:
                        .string          "[]"
.Lcall_prolog_α_172_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n62_var_ref_α
n61_call_prolog_β:      mov              r11, 62;                             jmp   n72_call_prolog_α
                        .size            n61_call_prolog_bx, .-n61_call_prolog_bx
                        .type            n62_var_ref_bx, @function
n62_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n63_var_ref_α
                        .size            n62_var_ref_bx, .-n62_var_ref_bx
                        .type            n63_var_ref_bx, @function
n63_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2096]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n64_call_prolog_α
                        .size            n63_var_ref_bx, .-n63_var_ref_bx
                        .type            n64_call_prolog_bx, @function
n64_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_call_prolog_α:      mov              r11, 65
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
.Lcall_prolog_α_177_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_177_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_177_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_177_40
.Lcall_prolog_α_177_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_177_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_177_40
.Lcall_prolog_α_177_56: cmp              al, 72;                              jne   .Lcall_prolog_α_177_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_177_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_177_40
.Lcall_prolog_α_177_41: lea              r9, [rbp + 352]
.Lcall_prolog_α_177_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_177_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_177_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_177_42
.Lcall_prolog_α_177_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_177_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_177_42
.Lcall_prolog_α_177_58: cmp              al, 72;                              jne   .Lcall_prolog_α_177_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_177_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_177_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_177_42
.Lcall_prolog_α_177_43: cmp              r8, r9;                              je    .Lcall_prolog_α_177_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_177_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_177_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_177_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_177_44
                                                                              jmp   .Lcall_prolog_α_177_45
.Lcall_prolog_α_177_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_177_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_177_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_177_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_177_53
                                                                              jmp   .Lcall_prolog_α_177_46
.Lcall_prolog_α_177_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_177_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_177_51
.Lcall_prolog_α_177_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_177_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_177_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_177_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_177_47
                                                                              jmp   .Lcall_prolog_α_177_48
.Lcall_prolog_α_177_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_177_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_177_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_177_51
.Lcall_prolog_α_177_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_177_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_177_53
                                                                              jmp   .Lcall_prolog_α_177_52
.Lcall_prolog_α_177_49: cmp              dl, 80;                              je    .Lcall_prolog_α_177_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_177_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_177_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_177_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_177_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_177_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_177_51
                                                                              jmp   .Lcall_prolog_α_177_52
.Lcall_prolog_α_177_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_177_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_177_53
.Lcall_prolog_α_177_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_177_54
.Lcall_prolog_α_177_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_177_54
.Lcall_prolog_α_177_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_177_54: mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n65_var_ref_α
n64_call_prolog_β:      mov              r11, 65;                             jmp   n72_call_prolog_α
                        .size            n64_call_prolog_bx, .-n64_call_prolog_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n66_lit_string_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_lit_string_bx, @function
n66_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_lit_string_α:       mov              r11, 67
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_180_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n67_call_prolog_α
.Llit_string_α_180_0:   .quad            .Llit_string_α_180_0_s
.Llit_string_α_180_0_s: .string          "[]"
                        .size            n66_lit_string_bx, .-n66_lit_string_bx
                        .type            n67_call_prolog_bx, @function
n67_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_call_prolog_α:      mov              r11, 68
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_181_2]
                                                                              jmp   .Lcall_prolog_α_181_3
.Lcall_prolog_α_181_2:  .quad            .Lcall_prolog_α_181_2_s
.Lcall_prolog_α_181_2_s:
                        .string          "[]"
.Lcall_prolog_α_181_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n68_var_ref_α
n67_call_prolog_β:      mov              r11, 68;                             jmp   n72_call_prolog_α
                        .size            n67_call_prolog_bx, .-n67_call_prolog_bx
                        .type            n68_var_ref_bx, @function
n68_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n69_lit_string_α
                        .size            n68_var_ref_bx, .-n68_var_ref_bx
                        .type            n69_lit_string_bx, @function
n69_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_lit_string_α:       mov              r11, 70
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_184_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n70_call_prolog_α
.Llit_string_α_184_0:   .quad            .Llit_string_α_184_0_s
.Llit_string_α_184_0_s: .string          "[]"
                        .size            n69_lit_string_bx, .-n69_lit_string_bx
                        .type            n70_call_prolog_bx, @function
n70_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_call_prolog_α:      mov              r11, 71
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_185_2]
                                                                              jmp   .Lcall_prolog_α_185_3
.Lcall_prolog_α_185_2:  .quad            .Lcall_prolog_α_185_2_s
.Lcall_prolog_α_185_2_s:
                        .string          "[]"
.Lcall_prolog_α_185_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n72_call_prolog_α
                                                                              jmp   n71_suspend_α
n70_call_prolog_β:      mov              r11, 71;                             jmp   n72_call_prolog_α
                        .size            n70_call_prolog_bx, .-n70_call_prolog_bx
                        .type            n71_suspend_bx, @function
n71_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_suspend_α:          mov              r11, 72
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_187_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2080];         jmp   rax
.Lsuspend_α_187_61:     mov              rdi, qword ptr [rbp + 80]
                        mov              rsi, qword ptr [rbp + 88]
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
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 8], rax;            jmp   partition$2F4_γ
n71_suspend_β:          mov              r11, 72;                             jmp   n72_call_prolog_α
                        .size            n71_suspend_bx, .-n71_suspend_bx
                        .type            n72_call_prolog_bx, @function
n72_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_call_prolog_α:      mov              r11, 73
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   partition$2F4_ω
n72_call_prolog_β:      mov              r11, 73;                             jmp   partition$2F4_ω
                        .size            n72_call_prolog_bx, .-n72_call_prolog_bx
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
                        mov              rbp, qword ptr [rbp + 2232]
                        add              rsp, 2240;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_ω:
                        mov              rcx, qword ptr [rsp + 2224]
                        mov              rbp, qword ptr [rbp + 2232]
                        add              rsp, 2240;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__qsort$2F3:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rbp
                        mov              rbp, rsp
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
                        mov              qword ptr [rbp + 1488], rax
                        .type            n189_call_prolog_bx, @function
n189_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_prolog_α:     mov              r11, 74
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_237_102
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72];           jmp   .Lcall_prolog_α_237_101
.Lcall_prolog_α_237_102:
                        lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_237_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lcall_prolog_α_237_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_237_101
.Lcall_prolog_α_237_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_237_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    qsort$2F3_ω
                                                                              jmp   n190_var_ref_α
n189_call_prolog_β:     mov              r11, 74;                             jmp   qsort$2F3_ω
                        .size            n189_call_prolog_bx, .-n189_call_prolog_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n191_lit_integer_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_lit_integer_bx, @function
n191_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rbp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_240_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n192_lit_integer_α
.Llit_integer_α_240_0:  .quad            3
                        .size            n191_lit_integer_bx, .-n191_lit_integer_bx
                        .type            n192_lit_integer_bx, @function
n192_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rbp + 1472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_241_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n193_call_prolog_α
.Llit_integer_α_241_0:  .quad            0
                        .size            n192_lit_integer_bx, .-n192_lit_integer_bx
                        .type            n193_call_prolog_bx, @function
n193_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_prolog_α:     mov              r11, 78
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        lea              r8, [rbp + 1392]
.Lcall_prolog_α_242_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_242_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_242_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_242_110
.Lcall_prolog_α_242_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_242_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_242_110
.Lcall_prolog_α_242_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_242_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_242_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_242_110
.Lcall_prolog_α_242_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_242_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_242_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_242_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_242_114
                                                                              jmp   .Lcall_prolog_α_242_118
.Lcall_prolog_α_242_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              jne   .Lcall_prolog_α_242_119
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r12 + 0]
                        cmp              dl, 0;                               je    .Lcall_prolog_α_242_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx;                            jne   .Lcall_prolog_α_242_115
                                                                              jmp   .Lcall_prolog_α_242_114
.Lcall_prolog_α_242_119:
                        cmp              al, 3;                               jne   .Lcall_prolog_α_242_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_242_114
                                                                              jmp   .Lcall_prolog_α_242_115
.Lcall_prolog_α_242_120:
                        cmp              al, 2;                               jne   .Lcall_prolog_α_242_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_242_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_242_114
                                                                              jmp   .Lcall_prolog_α_242_115
.Lcall_prolog_α_242_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_242_117
.Lcall_prolog_α_242_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_242_117
.Lcall_prolog_α_242_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_242_117:
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    n222_var_ref_α
                                                                              jmp   n194_var_ref_α
n193_call_prolog_β:     mov              r11, 78;                             jmp   n222_var_ref_α
                        .size            n193_call_prolog_bx, .-n193_call_prolog_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n195_var_ref_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n196_var_ref_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n197_call_prolog_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_call_prolog_bx, @function
n197_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_prolog_α:     mov              r11, 82
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        lea              r8, [rbp + 1296]
.Lcall_prolog_α_249_60: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_249_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_61
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_249_62
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_249_60
.Lcall_prolog_α_249_62: cmp              esi, 2;                              jne   .Lcall_prolog_α_249_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_249_60
.Lcall_prolog_α_249_63: cmp              al, 72;                              jne   .Lcall_prolog_α_249_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_61
                        cmp              rax, r8;                             je    .Lcall_prolog_α_249_61
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_249_60
.Lcall_prolog_α_249_61: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_249_80
                        cmp              al, 104;                             je    .Lcall_prolog_α_249_80
                        cmp              al, 72;                              jne   .Lcall_prolog_α_249_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_249_80
                                                                              jmp   .Lcall_prolog_α_249_74
.Lcall_prolog_α_249_74: mov              ecx, dword ptr [r8 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_249_73
                        lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_249_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx;                            jne   .Lcall_prolog_α_249_73
                        lea              r9, [rbp + 1312]
.Lcall_prolog_α_249_64: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_249_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_65
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_249_66
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_249_64
.Lcall_prolog_α_249_66: cmp              esi, 2;                              jne   .Lcall_prolog_α_249_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_249_64
.Lcall_prolog_α_249_67: cmp              al, 72;                              jne   .Lcall_prolog_α_249_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_65
                        cmp              rax, r9;                             je    .Lcall_prolog_α_249_65
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_249_64
.Lcall_prolog_α_249_65: lea              rcx, [rbp + 1328]
.Lcall_prolog_α_249_68: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_249_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_69
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_249_70
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_249_68
.Lcall_prolog_α_249_70: cmp              esi, 2;                              jne   .Lcall_prolog_α_249_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_249_68
.Lcall_prolog_α_249_71: cmp              al, 72;                              jne   .Lcall_prolog_α_249_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_69
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_249_69
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_249_68
.Lcall_prolog_α_249_69: cmp              r9, rcx;                             je    .Lcall_prolog_α_249_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_249_75
                        cmp              al, 104;                             je    .Lcall_prolog_α_249_75
                        cmp              al, 72;                              jne   .Lcall_prolog_α_249_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_249_75
                                                                              jmp   .Lcall_prolog_α_249_72
.Lcall_prolog_α_249_75: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_249_76
                        cmp              al, 104;                             je    .Lcall_prolog_α_249_76
                        cmp              al, 72;                              jne   .Lcall_prolog_α_249_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_249_76
                                                                              jmp   .Lcall_prolog_α_249_72
.Lcall_prolog_α_249_76: lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_249_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 48
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_249_72
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
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_249_77
.Lcall_prolog_α_249_80: lea              r12, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            je    .Lcall_prolog_α_249_72
                        lea              r12, [rip + g_hp_fr]
                        mov              eax, dword ptr [r12 + 24]
                        test             eax, eax;                            je    .Lcall_prolog_α_249_72
                        mov              rdi, qword ptr [r12 + 0]
                        mov              rax, qword ptr [r12 + 8]
                        sub              rax, 48
                        cmp              rdi, rax;                            ja    .Lcall_prolog_α_249_72
                        lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lcall_prolog_α_249_72
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 72
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_249_72
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
                        lea              r9, [rbp + 1312]
.Lcall_prolog_α_249_81: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_249_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_82
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_249_83
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_249_81
.Lcall_prolog_α_249_83: cmp              esi, 2;                              jne   .Lcall_prolog_α_249_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_249_81
.Lcall_prolog_α_249_84: cmp              al, 72;                              jne   .Lcall_prolog_α_249_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_82
                        cmp              rax, r9;                             je    .Lcall_prolog_α_249_82
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_249_81
.Lcall_prolog_α_249_82: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_249_85
                        cmp              al, 104;                             je    .Lcall_prolog_α_249_85
                        cmp              al, 72;                              jne   .Lcall_prolog_α_249_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_249_85
                                                                              jmp   .Lcall_prolog_α_249_86
.Lcall_prolog_α_249_85: mov              qword ptr [rdx + 0], 72
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_249_87
.Lcall_prolog_α_249_86: mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lcall_prolog_α_249_87: lea              rcx, [rbp + 1328]
.Lcall_prolog_α_249_88: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_249_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_89
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_249_90
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_249_88
.Lcall_prolog_α_249_90: cmp              esi, 2;                              jne   .Lcall_prolog_α_249_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_249_88
.Lcall_prolog_α_249_91: cmp              al, 72;                              jne   .Lcall_prolog_α_249_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_249_89
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_249_89
                        mov              rcx, rax;                            jmp   .Lcall_prolog_α_249_88
.Lcall_prolog_α_249_89: mov              eax, dword ptr [rcx + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_249_92
                        cmp              al, 104;                             je    .Lcall_prolog_α_249_92
                        cmp              al, 72;                              jne   .Lcall_prolog_α_249_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx;                            je    .Lcall_prolog_α_249_92
                                                                              jmp   .Lcall_prolog_α_249_93
.Lcall_prolog_α_249_92: mov              qword ptr [rdx + 16], 72
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
                        mov              qword ptr [rcx + 8], rax;            jmp   .Lcall_prolog_α_249_94
.Lcall_prolog_α_249_93: mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lcall_prolog_α_249_94: lea              r12, [rip + g_pl_trail]
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
                        mov              rax, qword ptr [r8 + 0];             jmp   .Lcall_prolog_α_249_77
.Lcall_prolog_α_249_73: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_249_77
.Lcall_prolog_α_249_72: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_lst@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_249_77: mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n198_var_ref_α
n197_call_prolog_β:     mov              r11, 82;                             jmp   n221_call_prolog_α
                        .size            n197_call_prolog_bx, .-n197_call_prolog_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx;         jmp   n199_var_ref_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n200_call_prolog_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_call_prolog_bx, @function
n200_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_prolog_α:     mov              r11, 85
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
.Lcall_prolog_α_254_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_254_40
.Lcall_prolog_α_254_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_254_40
.Lcall_prolog_α_254_56: cmp              al, 72;                              jne   .Lcall_prolog_α_254_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_254_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_254_40
.Lcall_prolog_α_254_41: lea              r9, [rbp + 1216]
.Lcall_prolog_α_254_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_254_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_254_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_42
.Lcall_prolog_α_254_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_254_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_42
.Lcall_prolog_α_254_58: cmp              al, 72;                              jne   .Lcall_prolog_α_254_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_254_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_254_42
.Lcall_prolog_α_254_43: cmp              r8, r9;                              je    .Lcall_prolog_α_254_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_254_44
                                                                              jmp   .Lcall_prolog_α_254_45
.Lcall_prolog_α_254_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_53
                                                                              jmp   .Lcall_prolog_α_254_46
.Lcall_prolog_α_254_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_254_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_254_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_254_51
.Lcall_prolog_α_254_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_254_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_254_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_254_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_254_47
                                                                              jmp   .Lcall_prolog_α_254_48
.Lcall_prolog_α_254_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_254_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_254_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_254_51
.Lcall_prolog_α_254_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_254_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_254_53
                                                                              jmp   .Lcall_prolog_α_254_52
.Lcall_prolog_α_254_49: cmp              dl, 80;                              je    .Lcall_prolog_α_254_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_254_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_254_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_254_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_254_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_254_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_254_51
                                                                              jmp   .Lcall_prolog_α_254_52
.Lcall_prolog_α_254_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_254_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_254_53
.Lcall_prolog_α_254_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_254_54
.Lcall_prolog_α_254_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_254_54
.Lcall_prolog_α_254_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_254_54: mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n201_var_ref_α
n200_call_prolog_β:     mov              r11, 85;                             jmp   n221_call_prolog_α
                        .size            n200_call_prolog_bx, .-n200_call_prolog_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n202_var_ref_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n203_call_prolog_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_call_prolog_bx, @function
n203_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_prolog_α:     mov              r11, 88
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        lea              r8, [rbp + 1120]
.Lcall_prolog_α_259_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_259_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_259_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_259_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_259_40
.Lcall_prolog_α_259_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_259_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_259_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_259_40
.Lcall_prolog_α_259_56: cmp              al, 72;                              jne   .Lcall_prolog_α_259_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_259_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_259_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_259_40
.Lcall_prolog_α_259_41: lea              r9, [rbp + 1136]
.Lcall_prolog_α_259_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_259_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_259_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_259_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_259_42
.Lcall_prolog_α_259_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_259_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_259_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_259_42
.Lcall_prolog_α_259_58: cmp              al, 72;                              jne   .Lcall_prolog_α_259_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_259_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_259_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_259_42
.Lcall_prolog_α_259_43: cmp              r8, r9;                              je    .Lcall_prolog_α_259_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_259_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_259_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_259_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_259_44
                                                                              jmp   .Lcall_prolog_α_259_45
.Lcall_prolog_α_259_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_259_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_259_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_259_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_259_53
                                                                              jmp   .Lcall_prolog_α_259_46
.Lcall_prolog_α_259_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_259_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_259_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_259_51
.Lcall_prolog_α_259_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_259_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_259_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_259_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_259_47
                                                                              jmp   .Lcall_prolog_α_259_48
.Lcall_prolog_α_259_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_259_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_259_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_259_51
.Lcall_prolog_α_259_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_259_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_259_53
                                                                              jmp   .Lcall_prolog_α_259_52
.Lcall_prolog_α_259_49: cmp              dl, 80;                              je    .Lcall_prolog_α_259_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_259_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_259_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_259_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_259_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_259_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_259_51
                                                                              jmp   .Lcall_prolog_α_259_52
.Lcall_prolog_α_259_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_259_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_259_53
.Lcall_prolog_α_259_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_259_54
.Lcall_prolog_α_259_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_259_54
.Lcall_prolog_α_259_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_259_54: mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n204_var_ref_α
n203_call_prolog_β:     mov              r11, 88;                             jmp   n221_call_prolog_α
                        .size            n203_call_prolog_bx, .-n203_call_prolog_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n205_var_ref_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n206_var_ref_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n207_var_ref_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n208_call_proc_staged_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_call_proc_staged_bx, @function
n208_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_proc_staged_α:
                        mov              r11, 93
                        mov              qword ptr [rbp + 1008], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_269_200
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_269_201
.Lcall_proc_staged_α_269_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_269_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_269_202
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_269_203
.Lcall_proc_staged_α_269_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_269_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_269_204
                        mov              rax, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_269_205
.Lcall_proc_staged_α_269_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_269_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_269_206
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_269_207
.Lcall_proc_staged_α_269_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_269_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_269_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_269_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_269_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_269_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_269_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_269_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 1016], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_269_5
                        mov              qword ptr [rbp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_269_2
.Lcall_proc_staged_α_269_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_269_2
.Lcall_proc_staged_α_269_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 1008]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_269_6
                        mov              qword ptr [rbp + 1008], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_269_2
.Lcall_proc_staged_α_269_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_269_2
.Lcall_proc_staged_α_269_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_269_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n221_call_prolog_α
.Lcall_proc_staged_α_269_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_269_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
.Lcall_proc_staged_α_269_29:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n209_var_ref_α
n208_call_proc_staged_β:
                        mov              r11, 93
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 1008], 0
                        lea              rdi, [rbp + 1024]
                        lea              rsi, [rbp + 1032]
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
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
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
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1072]
                        mov              rdx, qword ptr [rbp + 1080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_269_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_269_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_269_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_269_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_269_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n209_var_ref_α
.Lcall_proc_staged_α_269_0:
                        .quad            .Lcall_proc_staged_α_269_0_s
.Lcall_proc_staged_α_269_0_s:
                        .string          "partition/4"
                        .size            n208_call_proc_staged_bx, .-n208_call_proc_staged_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n210_var_ref_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1584]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n212_call_proc_staged_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_proc_staged_bx, @function
n212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              r11, 97
                        mov              qword ptr [rbp + 848], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_277_200
                        mov              rax, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_277_201
.Lcall_proc_staged_α_277_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_277_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_277_202
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_277_203
.Lcall_proc_staged_α_277_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_277_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_277_204
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_277_205
.Lcall_proc_staged_α_277_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_277_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_277_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_277_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_277_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_277_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_277_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_277_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 856], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_277_5
                        mov              qword ptr [rbp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_277_2
.Lcall_proc_staged_α_277_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_277_2
.Lcall_proc_staged_α_277_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 848]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_277_6
                        mov              qword ptr [rbp + 848], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_277_2
.Lcall_proc_staged_α_277_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_277_2
.Lcall_proc_staged_α_277_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_277_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n208_call_proc_staged_β
.Lcall_proc_staged_α_277_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_277_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
.Lcall_proc_staged_α_277_29:
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n213_var_ref_α
n212_call_proc_staged_β:
                        mov              r11, 97
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 848], 0
                        lea              rdi, [rbp + 864]
                        lea              rsi, [rbp + 872]
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
                        mov              rsi, qword ptr [rbp + 864]
                        mov              rdx, qword ptr [rbp + 872]
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
                        mov              rsi, qword ptr [rbp + 880]
                        mov              rdx, qword ptr [rbp + 888]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_277_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_277_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_277_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_277_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_277_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n208_call_proc_staged_β
                                                                              jmp   n213_var_ref_α
.Lcall_proc_staged_α_277_0:
                        .quad            .Lcall_proc_staged_α_277_0_s
.Lcall_proc_staged_α_277_0_s:
                        .string          "qsort/3"
                        .size            n212_call_proc_staged_bx, .-n212_call_proc_staged_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n214_var_ref_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n215_lit_string_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 100
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_282_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n216_var_ref_α
.Llit_string_α_282_0:   .quad            .Llit_string_α_282_0_s
.Llit_string_α_282_0_s: .string          "."
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n217_var_ref_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n218_call_prolog_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_prolog_bx, @function
n218_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_prolog_α:     mov              r11, 103
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    n221_call_prolog_α
                                                                              jmp   n219_call_proc_staged_α
n218_call_prolog_β:     mov              r11, 103;                            jmp   n221_call_prolog_α
                        .size            n218_call_prolog_bx, .-n218_call_prolog_bx
                        .type            n219_call_proc_staged_bx, @function
n219_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_call_proc_staged_α:
                        mov              r11, 104
                        mov              qword ptr [rbp + 592], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_289_200
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_289_201
.Lcall_proc_staged_α_289_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_289_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_289_202
                        mov              rax, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_289_203
.Lcall_proc_staged_α_289_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_289_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_289_204
                        mov              rax, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_289_205
.Lcall_proc_staged_α_289_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_289_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_289_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_289_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_289_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_289_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 600], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_289_5
                        mov              qword ptr [rbp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 592]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_289_6
                        mov              qword ptr [rbp + 592], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_289_2
.Lcall_proc_staged_α_289_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_289_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_call_proc_staged_β
.Lcall_proc_staged_α_289_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_289_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 528]
                        mov              rdx, qword ptr [rbp + 536]
.Lcall_proc_staged_α_289_29:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    n212_call_proc_staged_β
                                                                              jmp   n220_suspend_α
n219_call_proc_staged_β:
                        mov              r11, 104
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 592], 0
                        lea              rdi, [rbp + 608]
                        lea              rsi, [rbp + 616]
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
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
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
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 640]
                        mov              rdx, qword ptr [rbp + 648]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 688]
                        mov              rdx, qword ptr [rbp + 696]
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
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_289_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_289_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_289_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_289_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    n212_call_proc_staged_β
                                                                              jmp   n220_suspend_α
.Lcall_proc_staged_α_289_0:
                        .quad            .Lcall_proc_staged_α_289_0_s
.Lcall_proc_staged_α_289_0_s:
                        .string          "qsort/3"
                        .size            n219_call_proc_staged_bx, .-n219_call_proc_staged_bx
                        .type            n220_suspend_bx, @function
n220_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_suspend_α:         mov              r11, 105
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_291_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1488];         jmp   rax
.Lsuspend_α_291_61:     mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
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
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   qsort$2F3_γ
n220_suspend_β:         mov              r11, 105;                            jmp   n219_call_proc_staged_β
                        .size            n220_suspend_bx, .-n220_suspend_bx
                        .type            n221_call_prolog_bx, @function
n221_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_prolog_α:     mov              r11, 106
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    qsort$2F3_ω
                                                                              jmp   n222_var_ref_α
n221_call_prolog_β:     mov              r11, 106;                            jmp   qsort$2F3_ω
                        .size            n221_call_prolog_bx, .-n221_call_prolog_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n223_lit_integer_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_lit_integer_bx, @function
n223_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_lit_integer_α:     mov              r11, 108
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_295_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n224_lit_string_α
.Llit_integer_α_295_0:  .quad            2
                        .size            n223_lit_integer_bx, .-n223_lit_integer_bx
                        .type            n224_lit_string_bx, @function
n224_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_lit_string_α:      mov              r11, 109
                        mov              qword ptr [rbp + 480], 2             # result
                        mov              dword ptr [rbp + 484], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_296_0]
                        mov              qword ptr [rbp + 488], rax;          jmp   n225_call_prolog_α
.Llit_string_α_296_0:   .quad            .Llit_string_α_296_0_s
.Llit_string_α_296_0_s: .string          "[]"
                        .size            n224_lit_string_bx, .-n224_lit_string_bx
                        .type            n225_call_prolog_bx, @function
n225_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_prolog_α:     mov              r11, 110
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        lea              r8, [rbp + 400]
.Lcall_prolog_α_297_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_297_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_297_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_297_110
.Lcall_prolog_α_297_112:
                        cmp              esi, 2;                              jne   .Lcall_prolog_α_297_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_297_110
.Lcall_prolog_α_297_113:
                        cmp              al, 72;                              jne   .Lcall_prolog_α_297_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_297_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_297_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_297_110
.Lcall_prolog_α_297_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_297_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_297_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_297_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_297_114
                                                                              jmp   .Lcall_prolog_α_297_118
.Lcall_prolog_α_297_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_297_115
                        cmp              al, 3;                               je    .Lcall_prolog_α_297_114
                        cmp              al, 2;                               jne   .Lcall_prolog_α_297_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_297_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx;                            je    .Lcall_prolog_α_297_114
                                                                              jmp   .Lcall_prolog_α_297_116
.Lcall_prolog_α_297_114:
                        mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_297_117
.Lcall_prolog_α_297_115:
                        mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_297_117
.Lcall_prolog_α_297_116:
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_297_117:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n226_var_ref_α
n225_call_prolog_β:     mov              r11, 110;                            jmp   n236_call_prolog_α
                        .size            n225_call_prolog_bx, .-n225_call_prolog_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n227_lit_string_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_lit_string_bx, @function
n227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_300_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n228_call_prolog_α
.Llit_string_α_300_0:   .quad            .Llit_string_α_300_0_s
.Llit_string_α_300_0_s: .string          "[]"
                        .size            n227_lit_string_bx, .-n227_lit_string_bx
                        .type            n228_call_prolog_bx, @function
n228_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_prolog_α:     mov              r11, 113
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 320]
                        mov              rsi, qword ptr [rip + .Lcall_prolog_α_301_2]
                                                                              jmp   .Lcall_prolog_α_301_3
.Lcall_prolog_α_301_2:  .quad            .Lcall_prolog_α_301_2_s
.Lcall_prolog_α_301_2_s:
                        .string          "[]"
.Lcall_prolog_α_301_3:  mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n229_var_ref_α
n228_call_prolog_β:     mov              r11, 113;                            jmp   n236_call_prolog_α
                        .size            n228_call_prolog_bx, .-n228_call_prolog_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n230_var_ref_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n231_call_prolog_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_call_prolog_bx, @function
n231_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_prolog_α:     mov              r11, 116
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lcall_prolog_α_306_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_306_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_306_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_306_40
.Lcall_prolog_α_306_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_306_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_306_40
.Lcall_prolog_α_306_56: cmp              al, 72;                              jne   .Lcall_prolog_α_306_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_306_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_306_40
.Lcall_prolog_α_306_41: lea              r9, [rbp + 256]
.Lcall_prolog_α_306_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_306_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_306_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_306_42
.Lcall_prolog_α_306_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_306_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_306_42
.Lcall_prolog_α_306_58: cmp              al, 72;                              jne   .Lcall_prolog_α_306_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_306_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_306_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_306_42
.Lcall_prolog_α_306_43: cmp              r8, r9;                              je    .Lcall_prolog_α_306_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_306_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_306_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_306_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_306_44
                                                                              jmp   .Lcall_prolog_α_306_45
.Lcall_prolog_α_306_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_306_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_306_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_306_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_306_53
                                                                              jmp   .Lcall_prolog_α_306_46
.Lcall_prolog_α_306_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_306_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_306_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_306_51
.Lcall_prolog_α_306_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_306_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_306_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_306_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_306_47
                                                                              jmp   .Lcall_prolog_α_306_48
.Lcall_prolog_α_306_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_306_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_306_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_306_51
.Lcall_prolog_α_306_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_306_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_306_53
                                                                              jmp   .Lcall_prolog_α_306_52
.Lcall_prolog_α_306_49: cmp              dl, 80;                              je    .Lcall_prolog_α_306_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_306_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_306_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_306_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_306_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_306_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_306_51
                                                                              jmp   .Lcall_prolog_α_306_52
.Lcall_prolog_α_306_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_306_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_306_53
.Lcall_prolog_α_306_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_306_54
.Lcall_prolog_α_306_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_306_54
.Lcall_prolog_α_306_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_306_54: mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n232_var_ref_α
n231_call_prolog_β:     mov              r11, 116;                            jmp   n236_call_prolog_α
                        .size            n231_call_prolog_bx, .-n231_call_prolog_bx
                        .type            n232_var_ref_bx, @function
n232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n233_var_ref_α
                        .size            n232_var_ref_bx, .-n232_var_ref_bx
                        .type            n233_var_ref_bx, @function
n233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 118
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n234_call_prolog_α
                        .size            n233_var_ref_bx, .-n233_var_ref_bx
                        .type            n234_call_prolog_bx, @function
n234_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_prolog_α:     mov              r11, 119
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        lea              r8, [rbp + 160]
.Lcall_prolog_α_311_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_311_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_311_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_311_40
.Lcall_prolog_α_311_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_311_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_311_40
.Lcall_prolog_α_311_56: cmp              al, 72;                              jne   .Lcall_prolog_α_311_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_311_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_311_40
.Lcall_prolog_α_311_41: lea              r9, [rbp + 176]
.Lcall_prolog_α_311_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_311_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_311_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_311_42
.Lcall_prolog_α_311_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_311_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_311_42
.Lcall_prolog_α_311_58: cmp              al, 72;                              jne   .Lcall_prolog_α_311_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_311_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_311_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_311_42
.Lcall_prolog_α_311_43: cmp              r8, r9;                              je    .Lcall_prolog_α_311_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_311_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_311_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_311_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_311_44
                                                                              jmp   .Lcall_prolog_α_311_45
.Lcall_prolog_α_311_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_311_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_311_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_311_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_311_53
                                                                              jmp   .Lcall_prolog_α_311_46
.Lcall_prolog_α_311_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_311_53
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
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_311_51
.Lcall_prolog_α_311_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_311_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_311_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_311_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_311_47
                                                                              jmp   .Lcall_prolog_α_311_48
.Lcall_prolog_α_311_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_311_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_311_53
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
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_311_51
.Lcall_prolog_α_311_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_311_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_311_53
                                                                              jmp   .Lcall_prolog_α_311_52
.Lcall_prolog_α_311_49: cmp              dl, 80;                              je    .Lcall_prolog_α_311_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_311_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_311_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_311_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_311_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_311_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_311_51
                                                                              jmp   .Lcall_prolog_α_311_52
.Lcall_prolog_α_311_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_311_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_311_53
.Lcall_prolog_α_311_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_311_54
.Lcall_prolog_α_311_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_311_54
.Lcall_prolog_α_311_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_311_54: mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n236_call_prolog_α
                                                                              jmp   n235_suspend_α
n234_call_prolog_β:     mov              r11, 119;                            jmp   n236_call_prolog_α
                        .size            n234_call_prolog_bx, .-n234_call_prolog_bx
                        .type            n235_suspend_bx, @function
n235_suspend_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_suspend_α:         mov              r11, 120
                        mov              rax, qword ptr [rbp + 0]
                        test             rax, rax;                            je    .Lsuspend_α_313_61
                        mov              qword ptr [rbp + 0], 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_zf_resume_clear@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1488];         jmp   rax
.Lsuspend_α_313_61:     mov              rdi, qword ptr [rbp + 64]
                        mov              rsi, qword ptr [rbp + 72]
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
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 8], rax;            jmp   qsort$2F3_γ
n235_suspend_β:         mov              r11, 120;                            jmp   n236_call_prolog_α
                        .size            n235_suspend_bx, .-n235_suspend_bx
                        .type            n236_call_prolog_bx, @function
n236_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_prolog_α:     mov              r11, 121
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    qsort$2F3_ω
                                                                              jmp   qsort$2F3_ω
n236_call_prolog_β:     mov              r11, 121;                            jmp   qsort$2F3_ω
                        .size            n236_call_prolog_bx, .-n236_call_prolog_bx
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
                        mov              rbp, qword ptr [rbp + 1656]
                        add              rsp, 1664;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_ω:
                        mov              rcx, qword ptr [rsp + 1648]
                        mov              rbp, qword ptr [rbp + 1656]
                        add              rsp, 1664;                           jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
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
                        sub              rsp, 5984
                        mov              qword ptr [rsp + 5960], rcx
                        mov              qword ptr [rsp + 5968], rdx
                        mov              qword ptr [rsp + 5976], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 5952
                        rep              stosb
main_α_body:
                        .type            n315_lit_string_bx, @function
n315_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 5872], 2            # result
                        mov              dword ptr [rbp + 5876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rbp + 5880], rax;         jmp   n316_lit_integer_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "."
                        .size            n315_lit_string_bx, .-n315_lit_string_bx
                        .type            n316_lit_integer_bx, @function
n316_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + 5776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_477_0]
                        mov              qword ptr [rbp + 5784], rax;         jmp   n317_lit_string_α
.Llit_integer_α_477_0:  .quad            27
                        .size            n316_lit_integer_bx, .-n316_lit_integer_bx
                        .type            n317_lit_string_bx, @function
n317_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rbp + 5760], 2            # result
                        mov              dword ptr [rbp + 5764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_478_0]
                        mov              qword ptr [rbp + 5768], rax;         jmp   n318_lit_integer_α
.Llit_string_α_478_0:   .quad            .Llit_string_α_478_0_s
.Llit_string_α_478_0_s: .string          "."
                        .size            n317_lit_string_bx, .-n317_lit_string_bx
                        .type            n318_lit_integer_bx, @function
n318_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rbp + 5664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_479_0]
                        mov              qword ptr [rbp + 5672], rax;         jmp   n319_lit_string_α
.Llit_integer_α_479_0:  .quad            74
                        .size            n318_lit_integer_bx, .-n318_lit_integer_bx
                        .type            n319_lit_string_bx, @function
n319_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 5648], 2            # result
                        mov              dword ptr [rbp + 5652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_480_0]
                        mov              qword ptr [rbp + 5656], rax;         jmp   n320_lit_integer_α
.Llit_string_α_480_0:   .quad            .Llit_string_α_480_0_s
.Llit_string_α_480_0_s: .string          "."
                        .size            n319_lit_string_bx, .-n319_lit_string_bx
                        .type            n320_lit_integer_bx, @function
n320_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 5552], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_481_0]
                        mov              qword ptr [rbp + 5560], rax;         jmp   n321_lit_string_α
.Llit_integer_α_481_0:  .quad            17
                        .size            n320_lit_integer_bx, .-n320_lit_integer_bx
                        .type            n321_lit_string_bx, @function
n321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 5536], 2            # result
                        mov              dword ptr [rbp + 5540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_482_0]
                        mov              qword ptr [rbp + 5544], rax;         jmp   n322_lit_integer_α
.Llit_string_α_482_0:   .quad            .Llit_string_α_482_0_s
.Llit_string_α_482_0_s: .string          "."
                        .size            n321_lit_string_bx, .-n321_lit_string_bx
                        .type            n322_lit_integer_bx, @function
n322_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 5440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_483_0]
                        mov              qword ptr [rbp + 5448], rax;         jmp   n323_lit_string_α
.Llit_integer_α_483_0:  .quad            33
                        .size            n322_lit_integer_bx, .-n322_lit_integer_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rbp + 5424], 2            # result
                        mov              dword ptr [rbp + 5428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_484_0]
                        mov              qword ptr [rbp + 5432], rax;         jmp   n324_lit_integer_α
.Llit_string_α_484_0:   .quad            .Llit_string_α_484_0_s
.Llit_string_α_484_0_s: .string          "."
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_lit_integer_bx, @function
n324_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + 5328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_485_0]
                        mov              qword ptr [rbp + 5336], rax;         jmp   n325_lit_string_α
.Llit_integer_α_485_0:  .quad            94
                        .size            n324_lit_integer_bx, .-n324_lit_integer_bx
                        .type            n325_lit_string_bx, @function
n325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 5312], 2            # result
                        mov              dword ptr [rbp + 5316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_486_0]
                        mov              qword ptr [rbp + 5320], rax;         jmp   n326_lit_integer_α
.Llit_string_α_486_0:   .quad            .Llit_string_α_486_0_s
.Llit_string_α_486_0_s: .string          "."
                        .size            n325_lit_string_bx, .-n325_lit_string_bx
                        .type            n326_lit_integer_bx, @function
n326_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 5216], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_487_0]
                        mov              qword ptr [rbp + 5224], rax;         jmp   n327_lit_string_α
.Llit_integer_α_487_0:  .quad            18
                        .size            n326_lit_integer_bx, .-n326_lit_integer_bx
                        .type            n327_lit_string_bx, @function
n327_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rbp + 5200], 2            # result
                        mov              dword ptr [rbp + 5204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_488_0]
                        mov              qword ptr [rbp + 5208], rax;         jmp   n328_lit_integer_α
.Llit_string_α_488_0:   .quad            .Llit_string_α_488_0_s
.Llit_string_α_488_0_s: .string          "."
                        .size            n327_lit_string_bx, .-n327_lit_string_bx
                        .type            n328_lit_integer_bx, @function
n328_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rbp + 5104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_489_0]
                        mov              qword ptr [rbp + 5112], rax;         jmp   n329_lit_string_α
.Llit_integer_α_489_0:  .quad            46
                        .size            n328_lit_integer_bx, .-n328_lit_integer_bx
                        .type            n329_lit_string_bx, @function
n329_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rbp + 5088], 2            # result
                        mov              dword ptr [rbp + 5092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_490_0]
                        mov              qword ptr [rbp + 5096], rax;         jmp   n330_lit_integer_α
.Llit_string_α_490_0:   .quad            .Llit_string_α_490_0_s
.Llit_string_α_490_0_s: .string          "."
                        .size            n329_lit_string_bx, .-n329_lit_string_bx
                        .type            n330_lit_integer_bx, @function
n330_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rbp + 4992], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_491_0]
                        mov              qword ptr [rbp + 5000], rax;         jmp   n331_lit_string_α
.Llit_integer_α_491_0:  .quad            83
                        .size            n330_lit_integer_bx, .-n330_lit_integer_bx
                        .type            n331_lit_string_bx, @function
n331_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 4976], 2            # result
                        mov              dword ptr [rbp + 4980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_492_0]
                        mov              qword ptr [rbp + 4984], rax;         jmp   n332_lit_integer_α
.Llit_string_α_492_0:   .quad            .Llit_string_α_492_0_s
.Llit_string_α_492_0_s: .string          "."
                        .size            n331_lit_string_bx, .-n331_lit_string_bx
                        .type            n332_lit_integer_bx, @function
n332_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rbp + 4880], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_493_0]
                        mov              qword ptr [rbp + 4888], rax;         jmp   n333_lit_string_α
.Llit_integer_α_493_0:  .quad            65
                        .size            n332_lit_integer_bx, .-n332_lit_integer_bx
                        .type            n333_lit_string_bx, @function
n333_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 4864], 2            # result
                        mov              dword ptr [rbp + 4868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_494_0]
                        mov              qword ptr [rbp + 4872], rax;         jmp   n334_lit_integer_α
.Llit_string_α_494_0:   .quad            .Llit_string_α_494_0_s
.Llit_string_α_494_0_s: .string          "."
                        .size            n333_lit_string_bx, .-n333_lit_string_bx
                        .type            n334_lit_integer_bx, @function
n334_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 4768], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_495_0]
                        mov              qword ptr [rbp + 4776], rax;         jmp   n335_lit_string_α
.Llit_integer_α_495_0:  .quad            2
                        .size            n334_lit_integer_bx, .-n334_lit_integer_bx
                        .type            n335_lit_string_bx, @function
n335_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 4752], 2            # result
                        mov              dword ptr [rbp + 4756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_496_0]
                        mov              qword ptr [rbp + 4760], rax;         jmp   n336_lit_integer_α
.Llit_string_α_496_0:   .quad            .Llit_string_α_496_0_s
.Llit_string_α_496_0_s: .string          "."
                        .size            n335_lit_string_bx, .-n335_lit_string_bx
                        .type            n336_lit_integer_bx, @function
n336_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rbp + 4656], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_497_0]
                        mov              qword ptr [rbp + 4664], rax;         jmp   n337_lit_string_α
.Llit_integer_α_497_0:  .quad            32
                        .size            n336_lit_integer_bx, .-n336_lit_integer_bx
                        .type            n337_lit_string_bx, @function
n337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 4640], 2            # result
                        mov              dword ptr [rbp + 4644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_498_0]
                        mov              qword ptr [rbp + 4648], rax;         jmp   n338_lit_integer_α
.Llit_string_α_498_0:   .quad            .Llit_string_α_498_0_s
.Llit_string_α_498_0_s: .string          "."
                        .size            n337_lit_string_bx, .-n337_lit_string_bx
                        .type            n338_lit_integer_bx, @function
n338_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_integer_α:     mov              r11, 145
                        mov              qword ptr [rbp + 4544], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_499_0]
                        mov              qword ptr [rbp + 4552], rax;         jmp   n339_lit_string_α
.Llit_integer_α_499_0:  .quad            53
                        .size            n338_lit_integer_bx, .-n338_lit_integer_bx
                        .type            n339_lit_string_bx, @function
n339_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rbp + 4528], 2            # result
                        mov              dword ptr [rbp + 4532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_500_0]
                        mov              qword ptr [rbp + 4536], rax;         jmp   n340_lit_integer_α
.Llit_string_α_500_0:   .quad            .Llit_string_α_500_0_s
.Llit_string_α_500_0_s: .string          "."
                        .size            n339_lit_string_bx, .-n339_lit_string_bx
                        .type            n340_lit_integer_bx, @function
n340_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rbp + 4432], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_501_0]
                        mov              qword ptr [rbp + 4440], rax;         jmp   n341_lit_string_α
.Llit_integer_α_501_0:  .quad            28
                        .size            n340_lit_integer_bx, .-n340_lit_integer_bx
                        .type            n341_lit_string_bx, @function
n341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 4416], 2            # result
                        mov              dword ptr [rbp + 4420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_502_0]
                        mov              qword ptr [rbp + 4424], rax;         jmp   n342_lit_integer_α
.Llit_string_α_502_0:   .quad            .Llit_string_α_502_0_s
.Llit_string_α_502_0_s: .string          "."
                        .size            n341_lit_string_bx, .-n341_lit_string_bx
                        .type            n342_lit_integer_bx, @function
n342_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_integer_α:     mov              r11, 149
                        mov              qword ptr [rbp + 4320], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_503_0]
                        mov              qword ptr [rbp + 4328], rax;         jmp   n343_lit_string_α
.Llit_integer_α_503_0:  .quad            85
                        .size            n342_lit_integer_bx, .-n342_lit_integer_bx
                        .type            n343_lit_string_bx, @function
n343_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 4304], 2            # result
                        mov              dword ptr [rbp + 4308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_504_0]
                        mov              qword ptr [rbp + 4312], rax;         jmp   n344_lit_integer_α
.Llit_string_α_504_0:   .quad            .Llit_string_α_504_0_s
.Llit_string_α_504_0_s: .string          "."
                        .size            n343_lit_string_bx, .-n343_lit_string_bx
                        .type            n344_lit_integer_bx, @function
n344_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + 4208], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_505_0]
                        mov              qword ptr [rbp + 4216], rax;         jmp   n345_lit_string_α
.Llit_integer_α_505_0:  .quad            99
                        .size            n344_lit_integer_bx, .-n344_lit_integer_bx
                        .type            n345_lit_string_bx, @function
n345_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 4192], 2            # result
                        mov              dword ptr [rbp + 4196], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_506_0]
                        mov              qword ptr [rbp + 4200], rax;         jmp   n346_lit_integer_α
.Llit_string_α_506_0:   .quad            .Llit_string_α_506_0_s
.Llit_string_α_506_0_s: .string          "."
                        .size            n345_lit_string_bx, .-n345_lit_string_bx
                        .type            n346_lit_integer_bx, @function
n346_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rbp + 4096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_507_0]
                        mov              qword ptr [rbp + 4104], rax;         jmp   n347_lit_string_α
.Llit_integer_α_507_0:  .quad            47
                        .size            n346_lit_integer_bx, .-n346_lit_integer_bx
                        .type            n347_lit_string_bx, @function
n347_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 4080], 2            # result
                        mov              dword ptr [rbp + 4084], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_508_0]
                        mov              qword ptr [rbp + 4088], rax;         jmp   n348_lit_integer_α
.Llit_string_α_508_0:   .quad            .Llit_string_α_508_0_s
.Llit_string_α_508_0_s: .string          "."
                        .size            n347_lit_string_bx, .-n347_lit_string_bx
                        .type            n348_lit_integer_bx, @function
n348_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rbp + 3984], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_509_0]
                        mov              qword ptr [rbp + 3992], rax;         jmp   n349_lit_string_α
.Llit_integer_α_509_0:  .quad            28
                        .size            n348_lit_integer_bx, .-n348_lit_integer_bx
                        .type            n349_lit_string_bx, @function
n349_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 3968], 2            # result
                        mov              dword ptr [rbp + 3972], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_510_0]
                        mov              qword ptr [rbp + 3976], rax;         jmp   n350_lit_integer_α
.Llit_string_α_510_0:   .quad            .Llit_string_α_510_0_s
.Llit_string_α_510_0_s: .string          "."
                        .size            n349_lit_string_bx, .-n349_lit_string_bx
                        .type            n350_lit_integer_bx, @function
n350_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rbp + 3872], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_511_0]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n351_lit_string_α
.Llit_integer_α_511_0:  .quad            82
                        .size            n350_lit_integer_bx, .-n350_lit_integer_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 3856], 2            # result
                        mov              dword ptr [rbp + 3860], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_512_0]
                        mov              qword ptr [rbp + 3864], rax;         jmp   n352_lit_integer_α
.Llit_string_α_512_0:   .quad            .Llit_string_α_512_0_s
.Llit_string_α_512_0_s: .string          "."
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_lit_integer_bx, @function
n352_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rbp + 3760], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_513_0]
                        mov              qword ptr [rbp + 3768], rax;         jmp   n353_lit_string_α
.Llit_integer_α_513_0:  .quad            6
                        .size            n352_lit_integer_bx, .-n352_lit_integer_bx
                        .type            n353_lit_string_bx, @function
n353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 3744], 2            # result
                        mov              dword ptr [rbp + 3748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_514_0]
                        mov              qword ptr [rbp + 3752], rax;         jmp   n354_lit_integer_α
.Llit_string_α_514_0:   .quad            .Llit_string_α_514_0_s
.Llit_string_α_514_0_s: .string          "."
                        .size            n353_lit_string_bx, .-n353_lit_string_bx
                        .type            n354_lit_integer_bx, @function
n354_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rbp + 3648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_515_0]
                        mov              qword ptr [rbp + 3656], rax;         jmp   n355_lit_string_α
.Llit_integer_α_515_0:  .quad            11
                        .size            n354_lit_integer_bx, .-n354_lit_integer_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 3632], 2            # result
                        mov              dword ptr [rbp + 3636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_516_0]
                        mov              qword ptr [rbp + 3640], rax;         jmp   n356_lit_integer_α
.Llit_string_α_516_0:   .quad            .Llit_string_α_516_0_s
.Llit_string_α_516_0_s: .string          "."
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_lit_integer_bx, @function
n356_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rbp + 3536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_517_0]
                        mov              qword ptr [rbp + 3544], rax;         jmp   n357_lit_string_α
.Llit_integer_α_517_0:  .quad            55
                        .size            n356_lit_integer_bx, .-n356_lit_integer_bx
                        .type            n357_lit_string_bx, @function
n357_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_518_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n358_lit_integer_α
.Llit_string_α_518_0:   .quad            .Llit_string_α_518_0_s
.Llit_string_α_518_0_s: .string          "."
                        .size            n357_lit_string_bx, .-n357_lit_string_bx
                        .type            n358_lit_integer_bx, @function
n358_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 3424], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_519_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n359_lit_string_α
.Llit_integer_α_519_0:  .quad            29
                        .size            n358_lit_integer_bx, .-n358_lit_integer_bx
                        .type            n359_lit_string_bx, @function
n359_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rbp + 3408], 2            # result
                        mov              dword ptr [rbp + 3412], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_520_0]
                        mov              qword ptr [rbp + 3416], rax;         jmp   n360_lit_integer_α
.Llit_string_α_520_0:   .quad            .Llit_string_α_520_0_s
.Llit_string_α_520_0_s: .string          "."
                        .size            n359_lit_string_bx, .-n359_lit_string_bx
                        .type            n360_lit_integer_bx, @function
n360_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rbp + 3312], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_521_0]
                        mov              qword ptr [rbp + 3320], rax;         jmp   n361_lit_string_α
.Llit_integer_α_521_0:  .quad            39
                        .size            n360_lit_integer_bx, .-n360_lit_integer_bx
                        .type            n361_lit_string_bx, @function
n361_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_522_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n362_lit_integer_α
.Llit_string_α_522_0:   .quad            .Llit_string_α_522_0_s
.Llit_string_α_522_0_s: .string          "."
                        .size            n361_lit_string_bx, .-n361_lit_string_bx
                        .type            n362_lit_integer_bx, @function
n362_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rbp + 3200], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_523_0]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n363_lit_string_α
.Llit_integer_α_523_0:  .quad            81
                        .size            n362_lit_integer_bx, .-n362_lit_integer_bx
                        .type            n363_lit_string_bx, @function
n363_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 3184], 2            # result
                        mov              dword ptr [rbp + 3188], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_524_0]
                        mov              qword ptr [rbp + 3192], rax;         jmp   n364_lit_integer_α
.Llit_string_α_524_0:   .quad            .Llit_string_α_524_0_s
.Llit_string_α_524_0_s: .string          "."
                        .size            n363_lit_string_bx, .-n363_lit_string_bx
                        .type            n364_lit_integer_bx, @function
n364_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rbp + 3088], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_525_0]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n365_lit_string_α
.Llit_integer_α_525_0:  .quad            90
                        .size            n364_lit_integer_bx, .-n364_lit_integer_bx
                        .type            n365_lit_string_bx, @function
n365_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 3072], 2            # result
                        mov              dword ptr [rbp + 3076], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_526_0]
                        mov              qword ptr [rbp + 3080], rax;         jmp   n366_lit_integer_α
.Llit_string_α_526_0:   .quad            .Llit_string_α_526_0_s
.Llit_string_α_526_0_s: .string          "."
                        .size            n365_lit_string_bx, .-n365_lit_string_bx
                        .type            n366_lit_integer_bx, @function
n366_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 2976], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_527_0]
                        mov              qword ptr [rbp + 2984], rax;         jmp   n367_lit_string_α
.Llit_integer_α_527_0:  .quad            37
                        .size            n366_lit_integer_bx, .-n366_lit_integer_bx
                        .type            n367_lit_string_bx, @function
n367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 2960], 2            # result
                        mov              dword ptr [rbp + 2964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_528_0]
                        mov              qword ptr [rbp + 2968], rax;         jmp   n368_lit_integer_α
.Llit_string_α_528_0:   .quad            .Llit_string_α_528_0_s
.Llit_string_α_528_0_s: .string          "."
                        .size            n367_lit_string_bx, .-n367_lit_string_bx
                        .type            n368_lit_integer_bx, @function
n368_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rbp + 2864], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_529_0]
                        mov              qword ptr [rbp + 2872], rax;         jmp   n369_lit_string_α
.Llit_integer_α_529_0:  .quad            10
                        .size            n368_lit_integer_bx, .-n368_lit_integer_bx
                        .type            n369_lit_string_bx, @function
n369_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 2848], 2            # result
                        mov              dword ptr [rbp + 2852], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_530_0]
                        mov              qword ptr [rbp + 2856], rax;         jmp   n370_lit_integer_α
.Llit_string_α_530_0:   .quad            .Llit_string_α_530_0_s
.Llit_string_α_530_0_s: .string          "."
                        .size            n369_lit_string_bx, .-n369_lit_string_bx
                        .type            n370_lit_integer_bx, @function
n370_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rbp + 2752], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_531_0]
                        mov              qword ptr [rbp + 2760], rax;         jmp   n371_lit_string_α
.Llit_integer_α_531_0:  .quad            0
                        .size            n370_lit_integer_bx, .-n370_lit_integer_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 2736], 2            # result
                        mov              dword ptr [rbp + 2740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_532_0]
                        mov              qword ptr [rbp + 2744], rax;         jmp   n372_lit_integer_α
.Llit_string_α_532_0:   .quad            .Llit_string_α_532_0_s
.Llit_string_α_532_0_s: .string          "."
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_lit_integer_bx, @function
n372_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_lit_integer_α:     mov              r11, 179
                        mov              qword ptr [rbp + 2640], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_533_0]
                        mov              qword ptr [rbp + 2648], rax;         jmp   n373_lit_string_α
.Llit_integer_α_533_0:  .quad            66
                        .size            n372_lit_integer_bx, .-n372_lit_integer_bx
                        .type            n373_lit_string_bx, @function
n373_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 2624], 2            # result
                        mov              dword ptr [rbp + 2628], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_534_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n374_lit_integer_α
.Llit_string_α_534_0:   .quad            .Llit_string_α_534_0_s
.Llit_string_α_534_0_s: .string          "."
                        .size            n373_lit_string_bx, .-n373_lit_string_bx
                        .type            n374_lit_integer_bx, @function
n374_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rbp + 2528], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_535_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n375_lit_string_α
.Llit_integer_α_535_0:  .quad            51
                        .size            n374_lit_integer_bx, .-n374_lit_integer_bx
                        .type            n375_lit_string_bx, @function
n375_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 2512], 2            # result
                        mov              dword ptr [rbp + 2516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_536_0]
                        mov              qword ptr [rbp + 2520], rax;         jmp   n376_lit_integer_α
.Llit_string_α_536_0:   .quad            .Llit_string_α_536_0_s
.Llit_string_α_536_0_s: .string          "."
                        .size            n375_lit_string_bx, .-n375_lit_string_bx
                        .type            n376_lit_integer_bx, @function
n376_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rbp + 2416], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_537_0]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n377_lit_string_α
.Llit_integer_α_537_0:  .quad            7
                        .size            n376_lit_integer_bx, .-n376_lit_integer_bx
                        .type            n377_lit_string_bx, @function
n377_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rbp + 2400], 2            # result
                        mov              dword ptr [rbp + 2404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_538_0]
                        mov              qword ptr [rbp + 2408], rax;         jmp   n378_lit_integer_α
.Llit_string_α_538_0:   .quad            .Llit_string_α_538_0_s
.Llit_string_α_538_0_s: .string          "."
                        .size            n377_lit_string_bx, .-n377_lit_string_bx
                        .type            n378_lit_integer_bx, @function
n378_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_lit_integer_α:     mov              r11, 185
                        mov              qword ptr [rbp + 2304], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_539_0]
                        mov              qword ptr [rbp + 2312], rax;         jmp   n379_lit_string_α
.Llit_integer_α_539_0:  .quad            21
                        .size            n378_lit_integer_bx, .-n378_lit_integer_bx
                        .type            n379_lit_string_bx, @function
n379_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rbp + 2288], 2            # result
                        mov              dword ptr [rbp + 2292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_540_0]
                        mov              qword ptr [rbp + 2296], rax;         jmp   n380_lit_integer_α
.Llit_string_α_540_0:   .quad            .Llit_string_α_540_0_s
.Llit_string_α_540_0_s: .string          "."
                        .size            n379_lit_string_bx, .-n379_lit_string_bx
                        .type            n380_lit_integer_bx, @function
n380_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rbp + 2192], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_541_0]
                        mov              qword ptr [rbp + 2200], rax;         jmp   n381_lit_string_α
.Llit_integer_α_541_0:  .quad            85
                        .size            n380_lit_integer_bx, .-n380_lit_integer_bx
                        .type            n381_lit_string_bx, @function
n381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rbp + 2176], 2            # result
                        mov              dword ptr [rbp + 2180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_542_0]
                        mov              qword ptr [rbp + 2184], rax;         jmp   n382_lit_integer_α
.Llit_string_α_542_0:   .quad            .Llit_string_α_542_0_s
.Llit_string_α_542_0_s: .string          "."
                        .size            n381_lit_string_bx, .-n381_lit_string_bx
                        .type            n382_lit_integer_bx, @function
n382_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rbp + 2080], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_543_0]
                        mov              qword ptr [rbp + 2088], rax;         jmp   n383_lit_string_α
.Llit_integer_α_543_0:  .quad            27
                        .size            n382_lit_integer_bx, .-n382_lit_integer_bx
                        .type            n383_lit_string_bx, @function
n383_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 2064], 2            # result
                        mov              dword ptr [rbp + 2068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rbp + 2072], rax;         jmp   n384_lit_integer_α
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "."
                        .size            n383_lit_string_bx, .-n383_lit_string_bx
                        .type            n384_lit_integer_bx, @function
n384_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rbp + 1968], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_545_0]
                        mov              qword ptr [rbp + 1976], rax;         jmp   n385_lit_string_α
.Llit_integer_α_545_0:  .quad            31
                        .size            n384_lit_integer_bx, .-n384_lit_integer_bx
                        .type            n385_lit_string_bx, @function
n385_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 1952], 2            # result
                        mov              dword ptr [rbp + 1956], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_546_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n386_lit_integer_α
.Llit_string_α_546_0:   .quad            .Llit_string_α_546_0_s
.Llit_string_α_546_0_s: .string          "."
                        .size            n385_lit_string_bx, .-n385_lit_string_bx
                        .type            n386_lit_integer_bx, @function
n386_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rbp + 1856], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_547_0]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n387_lit_string_α
.Llit_integer_α_547_0:  .quad            63
                        .size            n386_lit_integer_bx, .-n386_lit_integer_bx
                        .type            n387_lit_string_bx, @function
n387_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 1840], 2            # result
                        mov              dword ptr [rbp + 1844], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_548_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n388_lit_integer_α
.Llit_string_α_548_0:   .quad            .Llit_string_α_548_0_s
.Llit_string_α_548_0_s: .string          "."
                        .size            n387_lit_string_bx, .-n387_lit_string_bx
                        .type            n388_lit_integer_bx, @function
n388_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + 1744], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_549_0]
                        mov              qword ptr [rbp + 1752], rax;         jmp   n389_lit_string_α
.Llit_integer_α_549_0:  .quad            75
                        .size            n388_lit_integer_bx, .-n388_lit_integer_bx
                        .type            n389_lit_string_bx, @function
n389_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_550_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n390_lit_integer_α
.Llit_string_α_550_0:   .quad            .Llit_string_α_550_0_s
.Llit_string_α_550_0_s: .string          "."
                        .size            n389_lit_string_bx, .-n389_lit_string_bx
                        .type            n390_lit_integer_bx, @function
n390_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_551_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n391_lit_string_α
.Llit_integer_α_551_0:  .quad            4
                        .size            n390_lit_integer_bx, .-n390_lit_integer_bx
                        .type            n391_lit_string_bx, @function
n391_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rbp + 1616], 2            # result
                        mov              dword ptr [rbp + 1620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_552_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n392_lit_integer_α
.Llit_string_α_552_0:   .quad            .Llit_string_α_552_0_s
.Llit_string_α_552_0_s: .string          "."
                        .size            n391_lit_string_bx, .-n391_lit_string_bx
                        .type            n392_lit_integer_bx, @function
n392_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_integer_α:     mov              r11, 199
                        mov              qword ptr [rbp + 1520], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_553_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n393_lit_string_α
.Llit_integer_α_553_0:  .quad            95
                        .size            n392_lit_integer_bx, .-n392_lit_integer_bx
                        .type            n393_lit_string_bx, @function
n393_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rbp + 1504], 2            # result
                        mov              dword ptr [rbp + 1508], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_554_0]
                        mov              qword ptr [rbp + 1512], rax;         jmp   n394_lit_integer_α
.Llit_string_α_554_0:   .quad            .Llit_string_α_554_0_s
.Llit_string_α_554_0_s: .string          "."
                        .size            n393_lit_string_bx, .-n393_lit_string_bx
                        .type            n394_lit_integer_bx, @function
n394_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rbp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_555_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n395_lit_string_α
.Llit_integer_α_555_0:  .quad            99
                        .size            n394_lit_integer_bx, .-n394_lit_integer_bx
                        .type            n395_lit_string_bx, @function
n395_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 1392], 2            # result
                        mov              dword ptr [rbp + 1396], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_556_0]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n396_lit_integer_α
.Llit_string_α_556_0:   .quad            .Llit_string_α_556_0_s
.Llit_string_α_556_0_s: .string          "."
                        .size            n395_lit_string_bx, .-n395_lit_string_bx
                        .type            n396_lit_integer_bx, @function
n396_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_integer_α:     mov              r11, 203
                        mov              qword ptr [rbp + 1296], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_557_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n397_lit_string_α
.Llit_integer_α_557_0:  .quad            11
                        .size            n396_lit_integer_bx, .-n396_lit_integer_bx
                        .type            n397_lit_string_bx, @function
n397_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rbp + 1280], 2            # result
                        mov              dword ptr [rbp + 1284], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_558_0]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n398_lit_integer_α
.Llit_string_α_558_0:   .quad            .Llit_string_α_558_0_s
.Llit_string_α_558_0_s: .string          "."
                        .size            n397_lit_string_bx, .-n397_lit_string_bx
                        .type            n398_lit_integer_bx, @function
n398_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_integer_α:     mov              r11, 205
                        mov              qword ptr [rbp + 1184], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_559_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n399_lit_string_α
.Llit_integer_α_559_0:  .quad            28
                        .size            n398_lit_integer_bx, .-n398_lit_integer_bx
                        .type            n399_lit_string_bx, @function
n399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 206
                        mov              qword ptr [rbp + 1168], 2            # result
                        mov              dword ptr [rbp + 1172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_560_0]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n400_lit_integer_α
.Llit_string_α_560_0:   .quad            .Llit_string_α_560_0_s
.Llit_string_α_560_0_s: .string          "."
                        .size            n399_lit_string_bx, .-n399_lit_string_bx
                        .type            n400_lit_integer_bx, @function
n400_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_integer_α:     mov              r11, 207
                        mov              qword ptr [rbp + 1072], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_561_0]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n401_lit_string_α
.Llit_integer_α_561_0:  .quad            61
                        .size            n400_lit_integer_bx, .-n400_lit_integer_bx
                        .type            n401_lit_string_bx, @function
n401_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rbp + 1056], 2            # result
                        mov              dword ptr [rbp + 1060], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_562_0]
                        mov              qword ptr [rbp + 1064], rax;         jmp   n402_lit_integer_α
.Llit_string_α_562_0:   .quad            .Llit_string_α_562_0_s
.Llit_string_α_562_0_s: .string          "."
                        .size            n401_lit_string_bx, .-n401_lit_string_bx
                        .type            n402_lit_integer_bx, @function
n402_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_lit_integer_α:     mov              r11, 209
                        mov              qword ptr [rbp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_563_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n403_lit_string_α
.Llit_integer_α_563_0:  .quad            74
                        .size            n402_lit_integer_bx, .-n402_lit_integer_bx
                        .type            n403_lit_string_bx, @function
n403_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 944], 2             # result
                        mov              dword ptr [rbp + 948], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_564_0]
                        mov              qword ptr [rbp + 952], rax;          jmp   n404_lit_integer_α
.Llit_string_α_564_0:   .quad            .Llit_string_α_564_0_s
.Llit_string_α_564_0_s: .string          "."
                        .size            n403_lit_string_bx, .-n403_lit_string_bx
                        .type            n404_lit_integer_bx, @function
n404_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_lit_integer_α:     mov              r11, 211
                        mov              qword ptr [rbp + 848], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_565_0]
                        mov              qword ptr [rbp + 856], rax;          jmp   n405_lit_string_α
.Llit_integer_α_565_0:  .quad            18
                        .size            n404_lit_integer_bx, .-n404_lit_integer_bx
                        .type            n405_lit_string_bx, @function
n405_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_566_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n406_lit_integer_α
.Llit_string_α_566_0:   .quad            .Llit_string_α_566_0_s
.Llit_string_α_566_0_s: .string          "."
                        .size            n405_lit_string_bx, .-n405_lit_string_bx
                        .type            n406_lit_integer_bx, @function
n406_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_lit_integer_α:     mov              r11, 213
                        mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_567_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n407_lit_string_α
.Llit_integer_α_567_0:  .quad            92
                        .size            n406_lit_integer_bx, .-n406_lit_integer_bx
                        .type            n407_lit_string_bx, @function
n407_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              r11, 214
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_568_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n408_lit_integer_α
.Llit_string_α_568_0:   .quad            .Llit_string_α_568_0_s
.Llit_string_α_568_0_s: .string          "."
                        .size            n407_lit_string_bx, .-n407_lit_string_bx
                        .type            n408_lit_integer_bx, @function
n408_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_lit_integer_α:     mov              r11, 215
                        mov              qword ptr [rbp + 624], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_569_0]
                        mov              qword ptr [rbp + 632], rax;          jmp   n409_lit_string_α
.Llit_integer_α_569_0:  .quad            40
                        .size            n408_lit_integer_bx, .-n408_lit_integer_bx
                        .type            n409_lit_string_bx, @function
n409_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_lit_string_α:      mov              r11, 216
                        mov              qword ptr [rbp + 608], 2             # result
                        mov              dword ptr [rbp + 612], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_570_0]
                        mov              qword ptr [rbp + 616], rax;          jmp   n410_lit_integer_α
.Llit_string_α_570_0:   .quad            .Llit_string_α_570_0_s
.Llit_string_α_570_0_s: .string          "."
                        .size            n409_lit_string_bx, .-n409_lit_string_bx
                        .type            n410_lit_integer_bx, @function
n410_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rbp + 512], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_571_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n411_lit_string_α
.Llit_integer_α_571_0:  .quad            53
                        .size            n410_lit_integer_bx, .-n410_lit_integer_bx
                        .type            n411_lit_string_bx, @function
n411_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      mov              r11, 218
                        mov              qword ptr [rbp + 496], 2             # result
                        mov              dword ptr [rbp + 500], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_572_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n412_lit_integer_α
.Llit_string_α_572_0:   .quad            .Llit_string_α_572_0_s
.Llit_string_α_572_0_s: .string          "."
                        .size            n411_lit_string_bx, .-n411_lit_string_bx
                        .type            n412_lit_integer_bx, @function
n412_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_integer_α:     mov              r11, 219
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_573_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n413_lit_string_α
.Llit_integer_α_573_0:  .quad            59
                        .size            n412_lit_integer_bx, .-n412_lit_integer_bx
                        .type            n413_lit_string_bx, @function
n413_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              r11, 220
                        mov              qword ptr [rbp + 384], 2             # result
                        mov              dword ptr [rbp + 388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_574_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n414_lit_integer_α
.Llit_string_α_574_0:   .quad            .Llit_string_α_574_0_s
.Llit_string_α_574_0_s: .string          "."
                        .size            n413_lit_string_bx, .-n413_lit_string_bx
                        .type            n414_lit_integer_bx, @function
n414_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_integer_α:     mov              r11, 221
                        mov              qword ptr [rbp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_575_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n415_lit_string_α
.Llit_integer_α_575_0:  .quad            8
                        .size            n414_lit_integer_bx, .-n414_lit_integer_bx
                        .type            n415_lit_string_bx, @function
n415_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rbp + 272], 2             # result
                        mov              dword ptr [rbp + 276], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_576_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n416_call_prolog_α
.Llit_string_α_576_0:   .quad            .Llit_string_α_576_0_s
.Llit_string_α_576_0_s: .string          "[]"
                        .size            n415_lit_string_bx, .-n415_lit_string_bx
                        .type            n416_call_prolog_bx, @function
n416_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_prolog_α:     mov              r11, 223
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n417_call_prolog_α
n416_call_prolog_β:     mov              r11, 223;                            jmp   main_ω
                        .size            n416_call_prolog_bx, .-n416_call_prolog_bx
                        .type            n417_call_prolog_bx, @function
n417_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_prolog_α:     mov              r11, 224
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n418_call_prolog_α
n417_call_prolog_β:     mov              r11, 224;                            jmp   main_ω
                        .size            n417_call_prolog_bx, .-n417_call_prolog_bx
                        .type            n418_call_prolog_bx, @function
n418_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_call_prolog_α:     mov              r11, 225
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n419_call_prolog_α
n418_call_prolog_β:     mov              r11, 225;                            jmp   main_ω
                        .size            n418_call_prolog_bx, .-n418_call_prolog_bx
                        .type            n419_call_prolog_bx, @function
n419_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_call_prolog_α:     mov              r11, 226
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n420_call_prolog_α
n419_call_prolog_β:     mov              r11, 226;                            jmp   main_ω
                        .size            n419_call_prolog_bx, .-n419_call_prolog_bx
                        .type            n420_call_prolog_bx, @function
n420_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_prolog_α:     mov              r11, 227
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n421_call_prolog_α
n420_call_prolog_β:     mov              r11, 227;                            jmp   main_ω
                        .size            n420_call_prolog_bx, .-n420_call_prolog_bx
                        .type            n421_call_prolog_bx, @function
n421_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_call_prolog_α:     mov              r11, 228
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n422_call_prolog_α
n421_call_prolog_β:     mov              r11, 228;                            jmp   main_ω
                        .size            n421_call_prolog_bx, .-n421_call_prolog_bx
                        .type            n422_call_prolog_bx, @function
n422_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_call_prolog_α:     mov              r11, 229
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n423_call_prolog_α
n422_call_prolog_β:     mov              r11, 229;                            jmp   main_ω
                        .size            n422_call_prolog_bx, .-n422_call_prolog_bx
                        .type            n423_call_prolog_bx, @function
n423_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_prolog_α:     mov              r11, 230
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n424_call_prolog_α
n423_call_prolog_β:     mov              r11, 230;                            jmp   main_ω
                        .size            n423_call_prolog_bx, .-n423_call_prolog_bx
                        .type            n424_call_prolog_bx, @function
n424_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_call_prolog_α:     mov              r11, 231
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n425_call_prolog_α
n424_call_prolog_β:     mov              r11, 231;                            jmp   main_ω
                        .size            n424_call_prolog_bx, .-n424_call_prolog_bx
                        .type            n425_call_prolog_bx, @function
n425_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_call_prolog_α:     mov              r11, 232
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n426_call_prolog_α
n425_call_prolog_β:     mov              r11, 232;                            jmp   main_ω
                        .size            n425_call_prolog_bx, .-n425_call_prolog_bx
                        .type            n426_call_prolog_bx, @function
n426_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_call_prolog_α:     mov              r11, 233
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1464], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n427_call_prolog_α
n426_call_prolog_β:     mov              r11, 233;                            jmp   main_ω
                        .size            n426_call_prolog_bx, .-n426_call_prolog_bx
                        .type            n427_call_prolog_bx, @function
n427_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_call_prolog_α:     mov              r11, 234
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n428_call_prolog_α
n427_call_prolog_β:     mov              r11, 234;                            jmp   main_ω
                        .size            n427_call_prolog_bx, .-n427_call_prolog_bx
                        .type            n428_call_prolog_bx, @function
n428_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_call_prolog_α:     mov              r11, 235
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1688], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n429_call_prolog_α
n428_call_prolog_β:     mov              r11, 235;                            jmp   main_ω
                        .size            n428_call_prolog_bx, .-n428_call_prolog_bx
                        .type            n429_call_prolog_bx, @function
n429_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_call_prolog_α:     mov              r11, 236
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1784], rax
                        lea              rdi, [rbp + 1776]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n430_call_prolog_α
n429_call_prolog_β:     mov              r11, 236;                            jmp   main_ω
                        .size            n429_call_prolog_bx, .-n429_call_prolog_bx
                        .type            n430_call_prolog_bx, @function
n430_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_call_prolog_α:     mov              r11, 237
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1928], rax
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n431_call_prolog_α
n430_call_prolog_β:     mov              r11, 237;                            jmp   main_ω
                        .size            n430_call_prolog_bx, .-n430_call_prolog_bx
                        .type            n431_call_prolog_bx, @function
n431_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_call_prolog_α:     mov              r11, 238
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 2040], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2064]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2072]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n432_call_prolog_α
n431_call_prolog_β:     mov              r11, 238;                            jmp   main_ω
                        .size            n431_call_prolog_bx, .-n431_call_prolog_bx
                        .type            n432_call_prolog_bx, @function
n432_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_prolog_α:     mov              r11, 239
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 2152], rax
                        mov              rax, qword ptr [rbp + 2080]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2088]
                        mov              qword ptr [rbp + 2136], rax
                        mov              rax, qword ptr [rbp + 2176]
                        mov              qword ptr [rbp + 2112], rax
                        mov              rax, qword ptr [rbp + 2184]
                        mov              qword ptr [rbp + 2120], rax
                        lea              rdi, [rbp + 2112]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n433_call_prolog_α
n432_call_prolog_β:     mov              r11, 239;                            jmp   main_ω
                        .size            n432_call_prolog_bx, .-n432_call_prolog_bx
                        .type            n433_call_prolog_bx, @function
n433_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_prolog_α:     mov              r11, 240
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2248], rax
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 2232], rax
                        lea              rdi, [rbp + 2224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2208], rax
                        mov              qword ptr [rbp + 2216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n434_call_prolog_α
n433_call_prolog_β:     mov              r11, 240;                            jmp   main_ω
                        .size            n433_call_prolog_bx, .-n433_call_prolog_bx
                        .type            n434_call_prolog_bx, @function
n434_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_call_prolog_α:     mov              r11, 241
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2376], rax
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2352], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2360], rax
                        mov              rax, qword ptr [rbp + 2400]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 2408]
                        mov              qword ptr [rbp + 2344], rax
                        lea              rdi, [rbp + 2336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2320], rax
                        mov              qword ptr [rbp + 2328], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n435_call_prolog_α
n434_call_prolog_β:     mov              r11, 241;                            jmp   main_ω
                        .size            n434_call_prolog_bx, .-n434_call_prolog_bx
                        .type            n435_call_prolog_bx, @function
n435_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_prolog_α:     mov              r11, 242
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2488], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2472], rax
                        mov              rax, qword ptr [rbp + 2512]
                        mov              qword ptr [rbp + 2448], rax
                        mov              rax, qword ptr [rbp + 2520]
                        mov              qword ptr [rbp + 2456], rax
                        lea              rdi, [rbp + 2448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n436_call_prolog_α
n435_call_prolog_β:     mov              r11, 242;                            jmp   main_ω
                        .size            n435_call_prolog_bx, .-n435_call_prolog_bx
                        .type            n436_call_prolog_bx, @function
n436_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_call_prolog_α:     mov              r11, 243
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2560]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n437_call_prolog_α
n436_call_prolog_β:     mov              r11, 243;                            jmp   main_ω
                        .size            n436_call_prolog_bx, .-n436_call_prolog_bx
                        .type            n437_call_prolog_bx, @function
n437_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_call_prolog_α:     mov              r11, 244
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2712], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2688], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2696], rax
                        mov              rax, qword ptr [rbp + 2736]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 2744]
                        mov              qword ptr [rbp + 2680], rax
                        lea              rdi, [rbp + 2672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n438_call_prolog_α
n437_call_prolog_β:     mov              r11, 244;                            jmp   main_ω
                        .size            n437_call_prolog_bx, .-n437_call_prolog_bx
                        .type            n438_call_prolog_bx, @function
n438_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_prolog_α:     mov              r11, 245
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2824], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2808], rax
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2856]
                        mov              qword ptr [rbp + 2792], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n439_call_prolog_α
n438_call_prolog_β:     mov              r11, 245;                            jmp   main_ω
                        .size            n438_call_prolog_bx, .-n438_call_prolog_bx
                        .type            n439_call_prolog_bx, @function
n439_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_call_prolog_α:     mov              r11, 246
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2936], rax
                        mov              rax, qword ptr [rbp + 2864]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 2872]
                        mov              qword ptr [rbp + 2920], rax
                        mov              rax, qword ptr [rbp + 2960]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2968]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n440_call_prolog_α
n439_call_prolog_β:     mov              r11, 246;                            jmp   main_ω
                        .size            n439_call_prolog_bx, .-n439_call_prolog_bx
                        .type            n440_call_prolog_bx, @function
n440_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_call_prolog_α:     mov              r11, 247
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 3048], rax
                        mov              rax, qword ptr [rbp + 2976]
                        mov              qword ptr [rbp + 3024], rax
                        mov              rax, qword ptr [rbp + 2984]
                        mov              qword ptr [rbp + 3032], rax
                        mov              rax, qword ptr [rbp + 3072]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 3080]
                        mov              qword ptr [rbp + 3016], rax
                        lea              rdi, [rbp + 3008]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n441_call_prolog_α
n440_call_prolog_β:     mov              r11, 247;                            jmp   main_ω
                        .size            n440_call_prolog_bx, .-n440_call_prolog_bx
                        .type            n441_call_prolog_bx, @function
n441_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_call_prolog_α:     mov              r11, 248
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 3160], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3144], rax
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3120], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3128], rax
                        lea              rdi, [rbp + 3120]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n442_call_prolog_α
n441_call_prolog_β:     mov              r11, 248;                            jmp   main_ω
                        .size            n441_call_prolog_bx, .-n441_call_prolog_bx
                        .type            n442_call_prolog_bx, @function
n442_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_call_prolog_α:     mov              r11, 249
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3272], rax
                        mov              rax, qword ptr [rbp + 3200]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3208]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n443_call_prolog_α
n442_call_prolog_β:     mov              r11, 249;                            jmp   main_ω
                        .size            n442_call_prolog_bx, .-n442_call_prolog_bx
                        .type            n443_call_prolog_bx, @function
n443_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_call_prolog_α:     mov              r11, 250
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n444_call_prolog_α
n443_call_prolog_β:     mov              r11, 250;                            jmp   main_ω
                        .size            n443_call_prolog_bx, .-n443_call_prolog_bx
                        .type            n444_call_prolog_bx, @function
n444_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_call_prolog_α:     mov              r11, 251
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n445_call_prolog_α
n444_call_prolog_β:     mov              r11, 251;                            jmp   main_ω
                        .size            n444_call_prolog_bx, .-n444_call_prolog_bx
                        .type            n445_call_prolog_bx, @function
n445_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_call_prolog_α:     mov              r11, 252
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n446_call_prolog_α
n445_call_prolog_β:     mov              r11, 252;                            jmp   main_ω
                        .size            n445_call_prolog_bx, .-n445_call_prolog_bx
                        .type            n446_call_prolog_bx, @function
n446_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_call_prolog_α:     mov              r11, 253
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3720], rax
                        mov              rax, qword ptr [rbp + 3648]
                        mov              qword ptr [rbp + 3696], rax
                        mov              rax, qword ptr [rbp + 3656]
                        mov              qword ptr [rbp + 3704], rax
                        mov              rax, qword ptr [rbp + 3744]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 3752]
                        mov              qword ptr [rbp + 3688], rax
                        lea              rdi, [rbp + 3680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n447_call_prolog_α
n446_call_prolog_β:     mov              r11, 253;                            jmp   main_ω
                        .size            n446_call_prolog_bx, .-n446_call_prolog_bx
                        .type            n447_call_prolog_bx, @function
n447_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_call_prolog_α:     mov              r11, 254
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3760]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3768]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3800], rax
                        lea              rdi, [rbp + 3792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n448_call_prolog_α
n447_call_prolog_β:     mov              r11, 254;                            jmp   main_ω
                        .size            n447_call_prolog_bx, .-n447_call_prolog_bx
                        .type            n448_call_prolog_bx, @function
n448_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_call_prolog_α:     mov              r11, 255
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3944], rax
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3920], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3928], rax
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n449_call_prolog_α
n448_call_prolog_β:     mov              r11, 255;                            jmp   main_ω
                        .size            n448_call_prolog_bx, .-n448_call_prolog_bx
                        .type            n449_call_prolog_bx, @function
n449_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_call_prolog_α:     mov              r11, 256
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 4056], rax
                        mov              rax, qword ptr [rbp + 3984]
                        mov              qword ptr [rbp + 4032], rax
                        mov              rax, qword ptr [rbp + 3992]
                        mov              qword ptr [rbp + 4040], rax
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 4024], rax
                        lea              rdi, [rbp + 4016]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4000], rax
                        mov              qword ptr [rbp + 4008], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n450_call_prolog_α
n449_call_prolog_β:     mov              r11, 256;                            jmp   main_ω
                        .size            n449_call_prolog_bx, .-n449_call_prolog_bx
                        .type            n450_call_prolog_bx, @function
n450_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_call_prolog_α:     mov              r11, 257
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4152], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4136], rax
                        lea              rdi, [rbp + 4128]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n451_call_prolog_α
n450_call_prolog_β:     mov              r11, 257;                            jmp   main_ω
                        .size            n450_call_prolog_bx, .-n450_call_prolog_bx
                        .type            n451_call_prolog_bx, @function
n451_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_call_prolog_α:     mov              r11, 258
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4280], rax
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4264], rax
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4248], rax
                        lea              rdi, [rbp + 4240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n452_call_prolog_α
n451_call_prolog_β:     mov              r11, 258;                            jmp   main_ω
                        .size            n451_call_prolog_bx, .-n451_call_prolog_bx
                        .type            n452_call_prolog_bx, @function
n452_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_call_prolog_α:     mov              r11, 259
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4392], rax
                        mov              rax, qword ptr [rbp + 4320]
                        mov              qword ptr [rbp + 4368], rax
                        mov              rax, qword ptr [rbp + 4328]
                        mov              qword ptr [rbp + 4376], rax
                        mov              rax, qword ptr [rbp + 4416]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4424]
                        mov              qword ptr [rbp + 4360], rax
                        lea              rdi, [rbp + 4352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n453_call_prolog_α
n452_call_prolog_β:     mov              r11, 259;                            jmp   main_ω
                        .size            n452_call_prolog_bx, .-n452_call_prolog_bx
                        .type            n453_call_prolog_bx, @function
n453_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n453_call_prolog_α:     mov              r11, 260
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4432]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4440]
                        mov              qword ptr [rbp + 4488], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4464], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4472], rax
                        lea              rdi, [rbp + 4464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n454_call_prolog_α
n453_call_prolog_β:     mov              r11, 260;                            jmp   main_ω
                        .size            n453_call_prolog_bx, .-n453_call_prolog_bx
                        .type            n454_call_prolog_bx, @function
n454_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n454_call_prolog_α:     mov              r11, 261
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4616], rax
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4592], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4600], rax
                        mov              rax, qword ptr [rbp + 4640]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4648]
                        mov              qword ptr [rbp + 4584], rax
                        lea              rdi, [rbp + 4576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n455_call_prolog_α
n454_call_prolog_β:     mov              r11, 261;                            jmp   main_ω
                        .size            n454_call_prolog_bx, .-n454_call_prolog_bx
                        .type            n455_call_prolog_bx, @function
n455_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n455_call_prolog_α:     mov              r11, 262
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4728], rax
                        mov              rax, qword ptr [rbp + 4656]
                        mov              qword ptr [rbp + 4704], rax
                        mov              rax, qword ptr [rbp + 4664]
                        mov              qword ptr [rbp + 4712], rax
                        mov              rax, qword ptr [rbp + 4752]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4760]
                        mov              qword ptr [rbp + 4696], rax
                        lea              rdi, [rbp + 4688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n456_call_prolog_α
n455_call_prolog_β:     mov              r11, 262;                            jmp   main_ω
                        .size            n455_call_prolog_bx, .-n455_call_prolog_bx
                        .type            n456_call_prolog_bx, @function
n456_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n456_call_prolog_α:     mov              r11, 263
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4840], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4824], rax
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4800], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4808], rax
                        lea              rdi, [rbp + 4800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n457_call_prolog_α
n456_call_prolog_β:     mov              r11, 263;                            jmp   main_ω
                        .size            n456_call_prolog_bx, .-n456_call_prolog_bx
                        .type            n457_call_prolog_bx, @function
n457_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n457_call_prolog_α:     mov              r11, 264
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4936], rax
                        mov              rax, qword ptr [rbp + 4976]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 4984]
                        mov              qword ptr [rbp + 4920], rax
                        lea              rdi, [rbp + 4912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4896], rax
                        mov              qword ptr [rbp + 4904], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n458_call_prolog_α
n457_call_prolog_β:     mov              r11, 264;                            jmp   main_ω
                        .size            n457_call_prolog_bx, .-n457_call_prolog_bx
                        .type            n458_call_prolog_bx, @function
n458_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n458_call_prolog_α:     mov              r11, 265
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 5048], rax
                        mov              rax, qword ptr [rbp + 5088]
                        mov              qword ptr [rbp + 5024], rax
                        mov              rax, qword ptr [rbp + 5096]
                        mov              qword ptr [rbp + 5032], rax
                        lea              rdi, [rbp + 5024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5008], rax
                        mov              qword ptr [rbp + 5016], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n459_call_prolog_α
n458_call_prolog_β:     mov              r11, 265;                            jmp   main_ω
                        .size            n458_call_prolog_bx, .-n458_call_prolog_bx
                        .type            n459_call_prolog_bx, @function
n459_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n459_call_prolog_α:     mov              r11, 266
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 5176], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5160], rax
                        mov              rax, qword ptr [rbp + 5200]
                        mov              qword ptr [rbp + 5136], rax
                        mov              rax, qword ptr [rbp + 5208]
                        mov              qword ptr [rbp + 5144], rax
                        lea              rdi, [rbp + 5136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5120], rax
                        mov              qword ptr [rbp + 5128], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n460_call_prolog_α
n459_call_prolog_β:     mov              r11, 266;                            jmp   main_ω
                        .size            n459_call_prolog_bx, .-n459_call_prolog_bx
                        .type            n460_call_prolog_bx, @function
n460_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n460_call_prolog_α:     mov              r11, 267
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5288], rax
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5264], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5272], rax
                        mov              rax, qword ptr [rbp + 5312]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5320]
                        mov              qword ptr [rbp + 5256], rax
                        lea              rdi, [rbp + 5248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n461_call_prolog_α
n460_call_prolog_β:     mov              r11, 267;                            jmp   main_ω
                        .size            n460_call_prolog_bx, .-n460_call_prolog_bx
                        .type            n461_call_prolog_bx, @function
n461_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n461_call_prolog_α:     mov              r11, 268
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5400], rax
                        mov              rax, qword ptr [rbp + 5328]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 5336]
                        mov              qword ptr [rbp + 5384], rax
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5368], rax
                        lea              rdi, [rbp + 5360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5344], rax
                        mov              qword ptr [rbp + 5352], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n462_call_prolog_α
n461_call_prolog_β:     mov              r11, 268;                            jmp   main_ω
                        .size            n461_call_prolog_bx, .-n461_call_prolog_bx
                        .type            n462_call_prolog_bx, @function
n462_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n462_call_prolog_α:     mov              r11, 269
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5512], rax
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5496], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5480], rax
                        lea              rdi, [rbp + 5472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n463_call_prolog_α
n462_call_prolog_β:     mov              r11, 269;                            jmp   main_ω
                        .size            n462_call_prolog_bx, .-n462_call_prolog_bx
                        .type            n463_call_prolog_bx, @function
n463_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n463_call_prolog_α:     mov              r11, 270
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5624], rax
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5592], rax
                        lea              rdi, [rbp + 5584]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5568], rax
                        mov              qword ptr [rbp + 5576], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n464_call_prolog_α
n463_call_prolog_β:     mov              r11, 270;                            jmp   main_ω
                        .size            n463_call_prolog_bx, .-n463_call_prolog_bx
                        .type            n464_call_prolog_bx, @function
n464_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n464_call_prolog_α:     mov              r11, 271
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5704], rax
                        lea              rdi, [rbp + 5696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5680], rax
                        mov              qword ptr [rbp + 5688], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n465_call_prolog_α
n464_call_prolog_β:     mov              r11, 271;                            jmp   main_ω
                        .size            n464_call_prolog_bx, .-n464_call_prolog_bx
                        .type            n465_call_prolog_bx, @function
n465_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n465_call_prolog_α:     mov              r11, 272
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5840], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5848], rax
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5824], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5832], rax
                        mov              rax, qword ptr [rbp + 5872]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5880]
                        mov              qword ptr [rbp + 5816], rax
                        lea              rdi, [rbp + 5808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              al, 104;                             je    n473_lit_string_α
                                                                              jmp   n466_var_ref_α
n465_call_prolog_β:     mov              r11, 272;                            jmp   n473_lit_string_α
                        .size            n465_call_prolog_bx, .-n465_call_prolog_bx
                        .type            n466_var_ref_bx, @function
n466_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n466_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 5920]
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx;         jmp   n467_lit_string_α
                        .size            n466_var_ref_bx, .-n466_var_ref_bx
                        .type            n467_lit_string_bx, @function
n467_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n467_lit_string_α:      mov              r11, 274
                        mov              qword ptr [rbp + 5904], 2            # result
                        mov              dword ptr [rbp + 5908], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_629_0]
                        mov              qword ptr [rbp + 5912], rax;         jmp   n468_call_proc_staged_α
.Llit_string_α_629_0:   .quad            .Llit_string_α_629_0_s
.Llit_string_α_629_0_s: .string          "[]"
                        .size            n467_lit_string_bx, .-n467_lit_string_bx
                        .type            n468_call_proc_staged_bx, @function
n468_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n468_call_proc_staged_α:
                        mov              r11, 275
                        mov              qword ptr [rbp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_631_200
                        mov              rax, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_631_201
.Lcall_proc_staged_α_631_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_631_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_631_202
                        mov              rax, qword ptr [rbp + 5888]
                        mov              rdx, qword ptr [rbp + 5896]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_631_203
.Lcall_proc_staged_α_631_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5888]
                        mov              rdx, qword ptr [rbp + 5896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_631_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_631_204
                        mov              rax, qword ptr [rbp + 5904]
                        mov              rdx, qword ptr [rbp + 5912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_631_205
.Lcall_proc_staged_α_631_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5904]
                        mov              rdx, qword ptr [rbp + 5912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_631_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_631_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_631_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_631_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_631_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_631_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_631_3:
                        add              rsp, 16
                        mov              qword ptr [rbp + 248], rsp
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_631_5
                        mov              qword ptr [rbp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_γ@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_631_2
.Lcall_proc_staged_α_631_5:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_631_2
.Lcall_proc_staged_α_631_4:
                        add              rsp, 16
                        add              rsp, 16
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_631_6
                        mov              qword ptr [rbp + 240], 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_epilogue_ω@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   .Lcall_proc_staged_α_631_2
.Lcall_proc_staged_α_631_6:
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_631_2
.Lcall_proc_staged_α_631_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_631_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n473_lit_string_α
.Lcall_proc_staged_α_631_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_631_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
.Lcall_proc_staged_α_631_29:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n473_lit_string_α
                                                                              jmp   n469_var_α
n468_call_proc_staged_β:
                        mov              r11, 275
                        call             rt_gen_spine_resume_enter@PLT
                        mov              qword ptr [rbp + 240], 0
                        lea              rdi, [rbp + 256]
                        lea              rsi, [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop3@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    n473_lit_string_α
                        mov              rdi, rax
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
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
                        mov              rsi, qword ptr [rbp + 5792]
                        mov              rdx, qword ptr [rbp + 5800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5888]
                        mov              rdx, qword ptr [rbp + 5896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5904]
                        mov              rdx, qword ptr [rbp + 5912]
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
                        test             rax, rax;                            je    n473_lit_string_α
                        sub              rsp, 8
                        lea              r8, [rip + .Lcall_proc_staged_α_631_7]
                        push             r8
                        lea              rcx, [rip + .Lcall_proc_staged_α_631_4] # PL-CALL-ALIGN: same 16B-unit pad as the first-call entry above -- this retry entry pushed L(7) unpadded too, 8-mod-16 into open_det/the callee jmp; matching add-rsp-8 below becomes 16.
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_631_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_631_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_631_7:
                        add              rsp, 16
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    n473_lit_string_α
                                                                              jmp   n469_var_α
.Lcall_proc_staged_α_631_0:
                        .quad            .Lcall_proc_staged_α_631_0_s
.Lcall_proc_staged_α_631_0_s:
                        .string          "qsort/3"
                        .size            n468_call_proc_staged_bx, .-n468_call_proc_staged_bx
                        .type            n469_var_bx, @function
n469_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n469_var_α:             mov              r11, 276
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 168], rax;          jmp   n470_call_prolog_α
                        .size            n469_var_bx, .-n469_var_bx
                        .type            n470_call_prolog_bx, @function
n470_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n470_call_prolog_α:     mov              r11, 277
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn635: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn635]
                        lea              rsi, [rbp + 144]
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
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    n468_call_proc_staged_β
                                                                              jmp   n471_lit_string_α
n470_call_prolog_β:     mov              r11, 277;                            jmp   n468_call_proc_staged_β
                        .size            n470_call_prolog_bx, .-n470_call_prolog_bx
                        .type            n471_lit_string_bx, @function
n471_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n471_lit_string_α:      mov              r11, 278
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_636_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n472_call_prolog_α
.Llit_string_α_636_0:   .quad            .Llit_string_α_636_0_s
.Llit_string_α_636_0_s: .string          ""
                        .size            n471_lit_string_bx, .-n471_lit_string_bx
                        .type            n472_call_prolog_bx, @function
n472_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n472_call_prolog_α:     mov              r11, 279
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn638: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn638]
                        lea              rsi, [rbp + 96]
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
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n468_call_proc_staged_β
                                                                              jmp   main_γ
n472_call_prolog_β:     mov              r11, 279;                            jmp   n468_call_proc_staged_β
                        .size            n472_call_prolog_bx, .-n472_call_prolog_bx
                        .type            n473_lit_string_bx, @function
n473_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n473_lit_string_α:      mov              r11, 280
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_639_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n474_lit_string_α
.Llit_string_α_639_0:   .quad            .Llit_string_α_639_0_s
.Llit_string_α_639_0_s: .string          "user_error"
                        .size            n473_lit_string_bx, .-n473_lit_string_bx
                        .type            n474_lit_string_bx, @function
n474_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n474_lit_string_α:      mov              r11, 281
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_640_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n475_call_prolog_α
.Llit_string_α_640_0:   .quad            .Llit_string_α_640_0_s
.Llit_string_α_640_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n474_lit_string_bx, .-n474_lit_string_bx
                        .type            n475_call_prolog_bx, @function
n475_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n475_call_prolog_α:     mov              r11, 282
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn642: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn642]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n475_call_prolog_β:     mov              r11, 282;                            jmp   main_ω
                        .size            n475_call_prolog_bx, .-n475_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 5960]
                        mov              rbp, qword ptr [rbp + 5976]
                        add              rsp, 5984;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 5968]
                        mov              rbp, qword ptr [rbp + 5976]
                        add              rsp, 5984;                           jmp   rcx
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
