                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tak$2F4:
                        sub              rsp, 2416
                        mov              qword ptr [rsp + 2392], rcx
                        mov              qword ptr [rsp + 2400], rdx
                        mov              qword ptr [rsp + 2408], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 2384
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 10
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
tak$2F4_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx74_102
                        mov              rax, qword ptr [rsp + 112]
                        mov              rdx, qword ptr [rsp + 120];          jmp   .Lx74_101
.Lx74_102:              lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx74_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx74_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx74_101
.Lx74_100:              lea              rdi, [rsp + 128]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx74_101:              mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 120], rdx
                        cmp              al, 104;                             je    tak$2F4_ω
                                                                              jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                        mov              r11, 1;                              jmp   tak$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 2176], rax
                        mov              qword ptr [rsp + 2184], rdx;         jmp   n2_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 2192], rax
                        mov              qword ptr [rsp + 2200], rdx;         jmp   n3_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n3_call_builtin_prolog_α:
                        mov              r11, 4
                        mov              rax, qword ptr [rsp + 2192]
                        mov              qword ptr [rsp + 2160], rax
                        mov              rax, qword ptr [rsp + 2200]
                        mov              qword ptr [rsp + 2168], rax
                        mov              rax, qword ptr [rsp + 2176]
                        mov              qword ptr [rsp + 2144], rax
                        mov              rax, qword ptr [rsp + 2184]
                        mov              qword ptr [rsp + 2152], rax
                        lea              rdi, [rsp + 2144]
                        lea              r8, [rsp + 2144]
.Lx79_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx79_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx79_41
                        cmp              esi, 1;                              jne   .Lx79_55
                        mov              r8, rax;                             jmp   .Lx79_40
.Lx79_55:               cmp              esi, 2;                              jne   .Lx79_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx79_41
                        mov              r8, rax;                             jmp   .Lx79_40
.Lx79_56:               cmp              al, 72;                              jne   .Lx79_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx79_41
                        cmp              rax, r8;                             je    .Lx79_41
                        mov              r8, rax;                             jmp   .Lx79_40
.Lx79_41:               lea              r9, [rsp + 2160]
.Lx79_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx79_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx79_43
                        cmp              esi, 1;                              jne   .Lx79_57
                        mov              r9, rax;                             jmp   .Lx79_42
.Lx79_57:               cmp              esi, 2;                              jne   .Lx79_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx79_43
                        mov              r9, rax;                             jmp   .Lx79_42
.Lx79_58:               cmp              al, 72;                              jne   .Lx79_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx79_43
                        cmp              rax, r9;                             je    .Lx79_43
                        mov              r9, rax;                             jmp   .Lx79_42
.Lx79_43:               cmp              r8, r9;                              je    .Lx79_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx79_44
                        cmp              al, 104;                             je    .Lx79_44
                        cmp              al, 72;                              jne   .Lx79_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx79_44
                                                                              jmp   .Lx79_45
.Lx79_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx79_53
                        cmp              al, 104;                             je    .Lx79_53
                        cmp              al, 72;                              jne   .Lx79_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx79_53
                                                                              jmp   .Lx79_46
.Lx79_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx79_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx79_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx79_51
.Lx79_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx79_47
                        cmp              al, 104;                             je    .Lx79_47
                        cmp              al, 72;                              jne   .Lx79_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx79_47
                                                                              jmp   .Lx79_48
.Lx79_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx79_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx79_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx79_51
.Lx79_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx79_49
                        cmp              dl, 80;                              je    .Lx79_53
                                                                              jmp   .Lx79_52
.Lx79_49:               cmp              dl, 80;                              je    .Lx79_52
                        cmp              cl, 5;                               je    .Lx79_53
                        cmp              dl, 5;                               je    .Lx79_53
                        cmp              cl, 3;                               jne   .Lx79_50
                        cmp              dl, 3;                               jne   .Lx79_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx79_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx79_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx79_51
                                                                              jmp   .Lx79_52
.Lx79_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx79_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx79_53
.Lx79_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx79_54
.Lx79_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx79_54
.Lx79_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx79_54:               mov              qword ptr [rsp + 2128], rax
                        mov              qword ptr [rsp + 2136], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n4_var_ref_α
n3_call_builtin_prolog_β:
                        mov              r11, 4;                              jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 2096], rax
                        mov              qword ptr [rsp + 2104], rdx;         jmp   n5_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2120], rdx;         jmp   n6_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n6_call_builtin_prolog_α:
                        mov              r11, 7
                        mov              rax, qword ptr [rsp + 2112]
                        mov              qword ptr [rsp + 2080], rax
                        mov              rax, qword ptr [rsp + 2120]
                        mov              qword ptr [rsp + 2088], rax
                        mov              rax, qword ptr [rsp + 2096]
                        mov              qword ptr [rsp + 2064], rax
                        mov              rax, qword ptr [rsp + 2104]
                        mov              qword ptr [rsp + 2072], rax
                        lea              rdi, [rsp + 2064]
                        lea              r8, [rsp + 2064]
.Lx84_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx84_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx84_41
                        cmp              esi, 1;                              jne   .Lx84_55
                        mov              r8, rax;                             jmp   .Lx84_40
.Lx84_55:               cmp              esi, 2;                              jne   .Lx84_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx84_41
                        mov              r8, rax;                             jmp   .Lx84_40
.Lx84_56:               cmp              al, 72;                              jne   .Lx84_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx84_41
                        cmp              rax, r8;                             je    .Lx84_41
                        mov              r8, rax;                             jmp   .Lx84_40
.Lx84_41:               lea              r9, [rsp + 2080]
.Lx84_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx84_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx84_43
                        cmp              esi, 1;                              jne   .Lx84_57
                        mov              r9, rax;                             jmp   .Lx84_42
.Lx84_57:               cmp              esi, 2;                              jne   .Lx84_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx84_43
                        mov              r9, rax;                             jmp   .Lx84_42
.Lx84_58:               cmp              al, 72;                              jne   .Lx84_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx84_43
                        cmp              rax, r9;                             je    .Lx84_43
                        mov              r9, rax;                             jmp   .Lx84_42
.Lx84_43:               cmp              r8, r9;                              je    .Lx84_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx84_44
                        cmp              al, 104;                             je    .Lx84_44
                        cmp              al, 72;                              jne   .Lx84_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx84_44
                                                                              jmp   .Lx84_45
.Lx84_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx84_53
                        cmp              al, 104;                             je    .Lx84_53
                        cmp              al, 72;                              jne   .Lx84_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx84_53
                                                                              jmp   .Lx84_46
.Lx84_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx84_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx84_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx84_51
.Lx84_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx84_47
                        cmp              al, 104;                             je    .Lx84_47
                        cmp              al, 72;                              jne   .Lx84_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx84_47
                                                                              jmp   .Lx84_48
.Lx84_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx84_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx84_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx84_51
.Lx84_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx84_49
                        cmp              dl, 80;                              je    .Lx84_53
                                                                              jmp   .Lx84_52
.Lx84_49:               cmp              dl, 80;                              je    .Lx84_52
                        cmp              cl, 5;                               je    .Lx84_53
                        cmp              dl, 5;                               je    .Lx84_53
                        cmp              cl, 3;                               jne   .Lx84_50
                        cmp              dl, 3;                               jne   .Lx84_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx84_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx84_51
                                                                              jmp   .Lx84_52
.Lx84_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx84_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx84_53
.Lx84_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx84_54
.Lx84_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx84_54
.Lx84_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx84_54:               mov              qword ptr [rsp + 2048], rax
                        mov              qword ptr [rsp + 2056], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n7_var_ref_α
n6_call_builtin_prolog_β:
                        mov              r11, 7;                              jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 2016], rax
                        mov              qword ptr [rsp + 2024], rdx;         jmp   n8_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 2032], rax
                        mov              qword ptr [rsp + 2040], rdx;         jmp   n9_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n9_call_builtin_prolog_α:
                        mov              r11, 10
                        mov              rax, qword ptr [rsp + 2032]
                        mov              qword ptr [rsp + 2000], rax
                        mov              rax, qword ptr [rsp + 2040]
                        mov              qword ptr [rsp + 2008], rax
                        mov              rax, qword ptr [rsp + 2016]
                        mov              qword ptr [rsp + 1984], rax
                        mov              rax, qword ptr [rsp + 2024]
                        mov              qword ptr [rsp + 1992], rax
                        lea              rdi, [rsp + 1984]
                        lea              r8, [rsp + 1984]
.Lx89_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx89_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx89_41
                        cmp              esi, 1;                              jne   .Lx89_55
                        mov              r8, rax;                             jmp   .Lx89_40
.Lx89_55:               cmp              esi, 2;                              jne   .Lx89_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx89_41
                        mov              r8, rax;                             jmp   .Lx89_40
.Lx89_56:               cmp              al, 72;                              jne   .Lx89_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx89_41
                        cmp              rax, r8;                             je    .Lx89_41
                        mov              r8, rax;                             jmp   .Lx89_40
.Lx89_41:               lea              r9, [rsp + 2000]
.Lx89_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx89_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx89_43
                        cmp              esi, 1;                              jne   .Lx89_57
                        mov              r9, rax;                             jmp   .Lx89_42
.Lx89_57:               cmp              esi, 2;                              jne   .Lx89_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx89_43
                        mov              r9, rax;                             jmp   .Lx89_42
.Lx89_58:               cmp              al, 72;                              jne   .Lx89_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx89_43
                        cmp              rax, r9;                             je    .Lx89_43
                        mov              r9, rax;                             jmp   .Lx89_42
.Lx89_43:               cmp              r8, r9;                              je    .Lx89_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx89_44
                        cmp              al, 104;                             je    .Lx89_44
                        cmp              al, 72;                              jne   .Lx89_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx89_44
                                                                              jmp   .Lx89_45
.Lx89_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx89_53
                        cmp              al, 104;                             je    .Lx89_53
                        cmp              al, 72;                              jne   .Lx89_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx89_53
                                                                              jmp   .Lx89_46
.Lx89_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx89_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx89_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx89_51
.Lx89_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx89_47
                        cmp              al, 104;                             je    .Lx89_47
                        cmp              al, 72;                              jne   .Lx89_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx89_47
                                                                              jmp   .Lx89_48
.Lx89_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx89_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx89_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx89_51
.Lx89_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx89_49
                        cmp              dl, 80;                              je    .Lx89_53
                                                                              jmp   .Lx89_52
.Lx89_49:               cmp              dl, 80;                              je    .Lx89_52
                        cmp              cl, 5;                               je    .Lx89_53
                        cmp              dl, 5;                               je    .Lx89_53
                        cmp              cl, 3;                               jne   .Lx89_50
                        cmp              dl, 3;                               jne   .Lx89_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx89_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx89_51
                                                                              jmp   .Lx89_52
.Lx89_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx89_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx89_53
.Lx89_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx89_54
.Lx89_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx89_54
.Lx89_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx89_54:               mov              qword ptr [rsp + 1968], rax
                        mov              qword ptr [rsp + 1976], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n10_var_ref_α
n9_call_builtin_prolog_β:
                        mov              r11, 10;                             jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1936], rax
                        mov              qword ptr [rsp + 1944], rdx;         jmp   n11_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 1952], rax
                        mov              qword ptr [rsp + 1960], rdx;         jmp   n12_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n12_call_builtin_prolog_α:
                        mov              r11, 13
                        mov              rax, qword ptr [rsp + 1952]
                        mov              qword ptr [rsp + 1920], rax
                        mov              rax, qword ptr [rsp + 1960]
                        mov              qword ptr [rsp + 1928], rax
                        mov              rax, qword ptr [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              rax, qword ptr [rsp + 1944]
                        mov              qword ptr [rsp + 1912], rax
                        lea              rdi, [rsp + 1904]
                        lea              r8, [rsp + 1904]
.Lx94_40:               mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx94_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx94_41
                        cmp              esi, 1;                              jne   .Lx94_55
                        mov              r8, rax;                             jmp   .Lx94_40
.Lx94_55:               cmp              esi, 2;                              jne   .Lx94_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx94_41
                        mov              r8, rax;                             jmp   .Lx94_40
.Lx94_56:               cmp              al, 72;                              jne   .Lx94_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx94_41
                        cmp              rax, r8;                             je    .Lx94_41
                        mov              r8, rax;                             jmp   .Lx94_40
.Lx94_41:               lea              r9, [rsp + 1920]
.Lx94_42:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx94_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx94_43
                        cmp              esi, 1;                              jne   .Lx94_57
                        mov              r9, rax;                             jmp   .Lx94_42
.Lx94_57:               cmp              esi, 2;                              jne   .Lx94_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx94_43
                        mov              r9, rax;                             jmp   .Lx94_42
.Lx94_58:               cmp              al, 72;                              jne   .Lx94_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx94_43
                        cmp              rax, r9;                             je    .Lx94_43
                        mov              r9, rax;                             jmp   .Lx94_42
.Lx94_43:               cmp              r8, r9;                              je    .Lx94_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx94_44
                        cmp              al, 104;                             je    .Lx94_44
                        cmp              al, 72;                              jne   .Lx94_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx94_44
                                                                              jmp   .Lx94_45
.Lx94_44:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx94_53
                        cmp              al, 104;                             je    .Lx94_53
                        cmp              al, 72;                              jne   .Lx94_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx94_53
                                                                              jmp   .Lx94_46
.Lx94_46:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx94_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx94_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx94_51
.Lx94_45:               mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx94_47
                        cmp              al, 104;                             je    .Lx94_47
                        cmp              al, 72;                              jne   .Lx94_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx94_47
                                                                              jmp   .Lx94_48
.Lx94_47:               lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx94_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx94_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx94_51
.Lx94_48:               mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx94_49
                        cmp              dl, 80;                              je    .Lx94_53
                                                                              jmp   .Lx94_52
.Lx94_49:               cmp              dl, 80;                              je    .Lx94_52
                        cmp              cl, 5;                               je    .Lx94_53
                        cmp              dl, 5;                               je    .Lx94_53
                        cmp              cl, 3;                               jne   .Lx94_50
                        cmp              dl, 3;                               jne   .Lx94_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx94_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx94_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx94_51
                                                                              jmp   .Lx94_52
.Lx94_50:               mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx94_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx94_53
.Lx94_51:               mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx94_54
.Lx94_52:               mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx94_54
.Lx94_53:               mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx94_54:               mov              qword ptr [rsp + 1888], rax
                        mov              qword ptr [rsp + 1896], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n13_var_α
n12_call_builtin_prolog_β:
                        mov              r11, 13;                             jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1856], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1864], rax;         jmp   n14_var_α
#-----------------------------------------------------------------------------------------------------------------------
n14_var_α:              mov              r11, 15
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 1872], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 1880], rax;         jmp   n15_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n15_call_builtin_prolog_α:
                        mov              r11, 16
                        mov              rax, qword ptr [rsp + 1872]
                        mov              qword ptr [rsp + 1840], rax
                        mov              rax, qword ptr [rsp + 1880]
                        mov              qword ptr [rsp + 1848], rax
                        mov              rax, qword ptr [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              rax, qword ptr [rsp + 1864]
                        mov              qword ptr [rsp + 1832], rax
                        lea              rdi, [rsp + 1824]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1808], rax
                        mov              qword ptr [rsp + 1816], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n16_var_ref_α
n15_call_builtin_prolog_β:
                        mov              r11, 16;                             jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1776], rax
                        mov              qword ptr [rsp + 1784], rdx;         jmp   n17_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 1792], rax
                        mov              qword ptr [rsp + 1800], rdx;         jmp   n18_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n18_call_builtin_prolog_α:
                        mov              r11, 19
                        mov              rax, qword ptr [rsp + 1792]
                        mov              qword ptr [rsp + 1760], rax
                        mov              rax, qword ptr [rsp + 1800]
                        mov              qword ptr [rsp + 1768], rax
                        mov              rax, qword ptr [rsp + 1776]
                        mov              qword ptr [rsp + 1744], rax
                        mov              rax, qword ptr [rsp + 1784]
                        mov              qword ptr [rsp + 1752], rax
                        lea              rdi, [rsp + 1744]
                        lea              r8, [rsp + 1744]
.Lx104_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx104_41
                        cmp              esi, 1;                              jne   .Lx104_55
                        mov              r8, rax;                             jmp   .Lx104_40
.Lx104_55:              cmp              esi, 2;                              jne   .Lx104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx104_41
                        mov              r8, rax;                             jmp   .Lx104_40
.Lx104_56:              cmp              al, 72;                              jne   .Lx104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx104_41
                        cmp              rax, r8;                             je    .Lx104_41
                        mov              r8, rax;                             jmp   .Lx104_40
.Lx104_41:              lea              r9, [rsp + 1760]
.Lx104_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx104_43
                        cmp              esi, 1;                              jne   .Lx104_57
                        mov              r9, rax;                             jmp   .Lx104_42
.Lx104_57:              cmp              esi, 2;                              jne   .Lx104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx104_43
                        mov              r9, rax;                             jmp   .Lx104_42
.Lx104_58:              cmp              al, 72;                              jne   .Lx104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx104_43
                        cmp              rax, r9;                             je    .Lx104_43
                        mov              r9, rax;                             jmp   .Lx104_42
.Lx104_43:              cmp              r8, r9;                              je    .Lx104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx104_44
                        cmp              al, 104;                             je    .Lx104_44
                        cmp              al, 72;                              jne   .Lx104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx104_44
                                                                              jmp   .Lx104_45
.Lx104_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx104_53
                        cmp              al, 104;                             je    .Lx104_53
                        cmp              al, 72;                              jne   .Lx104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx104_53
                                                                              jmp   .Lx104_46
.Lx104_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx104_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx104_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx104_51
.Lx104_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx104_47
                        cmp              al, 104;                             je    .Lx104_47
                        cmp              al, 72;                              jne   .Lx104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx104_47
                                                                              jmp   .Lx104_48
.Lx104_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx104_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx104_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx104_51
.Lx104_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx104_49
                        cmp              dl, 80;                              je    .Lx104_53
                                                                              jmp   .Lx104_52
.Lx104_49:              cmp              dl, 80;                              je    .Lx104_52
                        cmp              cl, 5;                               je    .Lx104_53
                        cmp              dl, 5;                               je    .Lx104_53
                        cmp              cl, 3;                               jne   .Lx104_50
                        cmp              dl, 3;                               jne   .Lx104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx104_51
                                                                              jmp   .Lx104_52
.Lx104_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx104_53
.Lx104_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx104_54
.Lx104_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx104_54
.Lx104_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx104_54:              mov              qword ptr [rsp + 1728], rax
                        mov              qword ptr [rsp + 1736], rdx
                        cmp              al, 104;                             je    n20_call_builtin_prolog_α
                                                                              jmp   n19_move_label_α
n18_call_builtin_prolog_β:
                        mov              r11, 19;                             jmp   n20_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n19_move_label_α:       mov              r11, 20
                        lea              rax, [rip + n20_call_builtin_prolog_α]
                        mov              qword ptr [rsp + 96], rax;           jmp   tak$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              r11, 21
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 1712], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1696], rax
                        mov              qword ptr [rsp + 1704], rdx
                        cmp              al, 104;                             je    tak$2F4_ω
                                                                              jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                        mov              r11, 21;                             jmp   tak$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 16]
                        mov              qword ptr [rsp + 1664], rax
                        mov              qword ptr [rsp + 1672], rdx;         jmp   n22_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 1680], rax
                        mov              qword ptr [rsp + 1688], rdx;         jmp   n23_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              r11, 24
                        mov              rax, qword ptr [rsp + 1680]
                        mov              qword ptr [rsp + 1648], rax
                        mov              rax, qword ptr [rsp + 1688]
                        mov              qword ptr [rsp + 1656], rax
                        mov              rax, qword ptr [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              rax, qword ptr [rsp + 1672]
                        mov              qword ptr [rsp + 1640], rax
                        lea              rdi, [rsp + 1632]
                        lea              r8, [rsp + 1632]
.Lx112_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx112_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx112_41
                        cmp              esi, 1;                              jne   .Lx112_55
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_55:              cmp              esi, 2;                              jne   .Lx112_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx112_41
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_56:              cmp              al, 72;                              jne   .Lx112_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx112_41
                        cmp              rax, r8;                             je    .Lx112_41
                        mov              r8, rax;                             jmp   .Lx112_40
.Lx112_41:              lea              r9, [rsp + 1648]
.Lx112_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx112_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx112_43
                        cmp              esi, 1;                              jne   .Lx112_57
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_57:              cmp              esi, 2;                              jne   .Lx112_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx112_43
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_58:              cmp              al, 72;                              jne   .Lx112_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx112_43
                        cmp              rax, r9;                             je    .Lx112_43
                        mov              r9, rax;                             jmp   .Lx112_42
.Lx112_43:              cmp              r8, r9;                              je    .Lx112_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx112_44
                        cmp              al, 104;                             je    .Lx112_44
                        cmp              al, 72;                              jne   .Lx112_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx112_44
                                                                              jmp   .Lx112_45
.Lx112_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx112_53
                        cmp              al, 104;                             je    .Lx112_53
                        cmp              al, 72;                              jne   .Lx112_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx112_53
                                                                              jmp   .Lx112_46
.Lx112_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx112_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx112_51
.Lx112_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx112_47
                        cmp              al, 104;                             je    .Lx112_47
                        cmp              al, 72;                              jne   .Lx112_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx112_47
                                                                              jmp   .Lx112_48
.Lx112_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx112_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx112_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx112_51
.Lx112_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx112_49
                        cmp              dl, 80;                              je    .Lx112_53
                                                                              jmp   .Lx112_52
.Lx112_49:              cmp              dl, 80;                              je    .Lx112_52
                        cmp              cl, 5;                               je    .Lx112_53
                        cmp              dl, 5;                               je    .Lx112_53
                        cmp              cl, 3;                               jne   .Lx112_50
                        cmp              dl, 3;                               jne   .Lx112_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx112_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx112_51
                                                                              jmp   .Lx112_52
.Lx112_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx112_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx112_53
.Lx112_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx112_54
.Lx112_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx112_54
.Lx112_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx112_54:              mov              qword ptr [rsp + 1616], rax
                        mov              qword ptr [rsp + 1624], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n24_var_ref_α
n23_call_builtin_prolog_β:
                        mov              r11, 24;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 32]
                        mov              qword ptr [rsp + 1584], rax
                        mov              qword ptr [rsp + 1592], rdx;         jmp   n25_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 1600], rax
                        mov              qword ptr [rsp + 1608], rdx;         jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              r11, 27
                        mov              rax, qword ptr [rsp + 1600]
                        mov              qword ptr [rsp + 1568], rax
                        mov              rax, qword ptr [rsp + 1608]
                        mov              qword ptr [rsp + 1576], rax
                        mov              rax, qword ptr [rsp + 1584]
                        mov              qword ptr [rsp + 1552], rax
                        mov              rax, qword ptr [rsp + 1592]
                        mov              qword ptr [rsp + 1560], rax
                        lea              rdi, [rsp + 1552]
                        lea              r8, [rsp + 1552]
.Lx117_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx117_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx117_41
                        cmp              esi, 1;                              jne   .Lx117_55
                        mov              r8, rax;                             jmp   .Lx117_40
.Lx117_55:              cmp              esi, 2;                              jne   .Lx117_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx117_41
                        mov              r8, rax;                             jmp   .Lx117_40
.Lx117_56:              cmp              al, 72;                              jne   .Lx117_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx117_41
                        cmp              rax, r8;                             je    .Lx117_41
                        mov              r8, rax;                             jmp   .Lx117_40
.Lx117_41:              lea              r9, [rsp + 1568]
.Lx117_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx117_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx117_43
                        cmp              esi, 1;                              jne   .Lx117_57
                        mov              r9, rax;                             jmp   .Lx117_42
.Lx117_57:              cmp              esi, 2;                              jne   .Lx117_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx117_43
                        mov              r9, rax;                             jmp   .Lx117_42
.Lx117_58:              cmp              al, 72;                              jne   .Lx117_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx117_43
                        cmp              rax, r9;                             je    .Lx117_43
                        mov              r9, rax;                             jmp   .Lx117_42
.Lx117_43:              cmp              r8, r9;                              je    .Lx117_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx117_44
                        cmp              al, 104;                             je    .Lx117_44
                        cmp              al, 72;                              jne   .Lx117_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx117_44
                                                                              jmp   .Lx117_45
.Lx117_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx117_53
                        cmp              al, 104;                             je    .Lx117_53
                        cmp              al, 72;                              jne   .Lx117_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx117_53
                                                                              jmp   .Lx117_46
.Lx117_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx117_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx117_51
.Lx117_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx117_47
                        cmp              al, 104;                             je    .Lx117_47
                        cmp              al, 72;                              jne   .Lx117_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx117_47
                                                                              jmp   .Lx117_48
.Lx117_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx117_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx117_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx117_51
.Lx117_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx117_49
                        cmp              dl, 80;                              je    .Lx117_53
                                                                              jmp   .Lx117_52
.Lx117_49:              cmp              dl, 80;                              je    .Lx117_52
                        cmp              cl, 5;                               je    .Lx117_53
                        cmp              dl, 5;                               je    .Lx117_53
                        cmp              cl, 3;                               jne   .Lx117_50
                        cmp              dl, 3;                               jne   .Lx117_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx117_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx117_51
                                                                              jmp   .Lx117_52
.Lx117_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx117_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx117_53
.Lx117_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx117_54
.Lx117_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx117_54
.Lx117_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx117_54:              mov              qword ptr [rsp + 1536], rax
                        mov              qword ptr [rsp + 1544], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                        mov              r11, 27;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 48]
                        mov              qword ptr [rsp + 1504], rax
                        mov              qword ptr [rsp + 1512], rdx;         jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1520], rax
                        mov              qword ptr [rsp + 1528], rdx;         jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              r11, 30
                        mov              rax, qword ptr [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              rax, qword ptr [rsp + 1528]
                        mov              qword ptr [rsp + 1496], rax
                        mov              rax, qword ptr [rsp + 1504]
                        mov              qword ptr [rsp + 1472], rax
                        mov              rax, qword ptr [rsp + 1512]
                        mov              qword ptr [rsp + 1480], rax
                        lea              rdi, [rsp + 1472]
                        lea              r8, [rsp + 1472]
.Lx122_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx122_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx122_41
                        cmp              esi, 1;                              jne   .Lx122_55
                        mov              r8, rax;                             jmp   .Lx122_40
.Lx122_55:              cmp              esi, 2;                              jne   .Lx122_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx122_41
                        mov              r8, rax;                             jmp   .Lx122_40
.Lx122_56:              cmp              al, 72;                              jne   .Lx122_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx122_41
                        cmp              rax, r8;                             je    .Lx122_41
                        mov              r8, rax;                             jmp   .Lx122_40
.Lx122_41:              lea              r9, [rsp + 1488]
.Lx122_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx122_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx122_43
                        cmp              esi, 1;                              jne   .Lx122_57
                        mov              r9, rax;                             jmp   .Lx122_42
.Lx122_57:              cmp              esi, 2;                              jne   .Lx122_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx122_43
                        mov              r9, rax;                             jmp   .Lx122_42
.Lx122_58:              cmp              al, 72;                              jne   .Lx122_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx122_43
                        cmp              rax, r9;                             je    .Lx122_43
                        mov              r9, rax;                             jmp   .Lx122_42
.Lx122_43:              cmp              r8, r9;                              je    .Lx122_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx122_44
                        cmp              al, 104;                             je    .Lx122_44
                        cmp              al, 72;                              jne   .Lx122_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx122_44
                                                                              jmp   .Lx122_45
.Lx122_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx122_53
                        cmp              al, 104;                             je    .Lx122_53
                        cmp              al, 72;                              jne   .Lx122_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx122_53
                                                                              jmp   .Lx122_46
.Lx122_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx122_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx122_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx122_51
.Lx122_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx122_47
                        cmp              al, 104;                             je    .Lx122_47
                        cmp              al, 72;                              jne   .Lx122_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx122_47
                                                                              jmp   .Lx122_48
.Lx122_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx122_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx122_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx122_51
.Lx122_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx122_49
                        cmp              dl, 80;                              je    .Lx122_53
                                                                              jmp   .Lx122_52
.Lx122_49:              cmp              dl, 80;                              je    .Lx122_52
                        cmp              cl, 5;                               je    .Lx122_53
                        cmp              dl, 5;                               je    .Lx122_53
                        cmp              cl, 3;                               jne   .Lx122_50
                        cmp              dl, 3;                               jne   .Lx122_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx122_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx122_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx122_51
                                                                              jmp   .Lx122_52
.Lx122_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx122_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx122_53
.Lx122_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx122_54
.Lx122_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx122_54
.Lx122_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx122_54:              mov              qword ptr [rsp + 1456], rax
                        mov              qword ptr [rsp + 1464], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n30_var_ref_α
n29_call_builtin_prolog_β:
                        mov              r11, 30;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 64]
                        mov              qword ptr [rsp + 1424], rax
                        mov              qword ptr [rsp + 1432], rdx;         jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 1440], rax
                        mov              qword ptr [rsp + 1448], rdx;         jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              r11, 33
                        mov              rax, qword ptr [rsp + 1440]
                        mov              qword ptr [rsp + 1408], rax
                        mov              rax, qword ptr [rsp + 1448]
                        mov              qword ptr [rsp + 1416], rax
                        mov              rax, qword ptr [rsp + 1424]
                        mov              qword ptr [rsp + 1392], rax
                        mov              rax, qword ptr [rsp + 1432]
                        mov              qword ptr [rsp + 1400], rax
                        lea              rdi, [rsp + 1392]
                        lea              r8, [rsp + 1392]
.Lx127_40:              mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lx127_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx127_41
                        cmp              esi, 1;                              jne   .Lx127_55
                        mov              r8, rax;                             jmp   .Lx127_40
.Lx127_55:              cmp              esi, 2;                              jne   .Lx127_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx127_41
                        mov              r8, rax;                             jmp   .Lx127_40
.Lx127_56:              cmp              al, 72;                              jne   .Lx127_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lx127_41
                        cmp              rax, r8;                             je    .Lx127_41
                        mov              r8, rax;                             jmp   .Lx127_40
.Lx127_41:              lea              r9, [rsp + 1408]
.Lx127_42:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lx127_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx127_43
                        cmp              esi, 1;                              jne   .Lx127_57
                        mov              r9, rax;                             jmp   .Lx127_42
.Lx127_57:              cmp              esi, 2;                              jne   .Lx127_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lx127_43
                        mov              r9, rax;                             jmp   .Lx127_42
.Lx127_58:              cmp              al, 72;                              jne   .Lx127_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lx127_43
                        cmp              rax, r9;                             je    .Lx127_43
                        mov              r9, rax;                             jmp   .Lx127_42
.Lx127_43:              cmp              r8, r9;                              je    .Lx127_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lx127_44
                        cmp              al, 104;                             je    .Lx127_44
                        cmp              al, 72;                              jne   .Lx127_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lx127_44
                                                                              jmp   .Lx127_45
.Lx127_44:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx127_53
                        cmp              al, 104;                             je    .Lx127_53
                        cmp              al, 72;                              jne   .Lx127_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx127_53
                                                                              jmp   .Lx127_46
.Lx127_46:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx127_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx127_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lx127_51
.Lx127_45:              mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lx127_47
                        cmp              al, 104;                             je    .Lx127_47
                        cmp              al, 72;                              jne   .Lx127_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lx127_47
                                                                              jmp   .Lx127_48
.Lx127_47:              lea              r12, [rip + g_pl_trail]
                        mov              rdi, qword ptr [r12 + 0]
                        test             rdi, rdi;                            je    .Lx127_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lx127_53
                        add              rdi, rsi
                        mov              qword ptr [rdi + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdi + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdi + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lx127_51
.Lx127_48:              mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lx127_49
                        cmp              dl, 80;                              je    .Lx127_53
                                                                              jmp   .Lx127_52
.Lx127_49:              cmp              dl, 80;                              je    .Lx127_52
                        cmp              cl, 5;                               je    .Lx127_53
                        cmp              dl, 5;                               je    .Lx127_53
                        cmp              cl, 3;                               jne   .Lx127_50
                        cmp              dl, 3;                               jne   .Lx127_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lx127_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lx127_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lx127_51
                                                                              jmp   .Lx127_52
.Lx127_50:              mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lx127_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lx127_53
.Lx127_51:              mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lx127_54
.Lx127_52:              mov              eax, 104
                        mov              edx, 0;                              jmp   .Lx127_54
.Lx127_53:              mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx127_54:              mov              qword ptr [rsp + 1376], rax
                        mov              qword ptr [rsp + 1384], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n33_var_α
n32_call_builtin_prolog_β:
                        mov              r11, 33;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1344], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1352], rax;         jmp   n34_var_α
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 1360], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 1368], rax;         jmp   n35_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              r11, 36
                        mov              rax, qword ptr [rsp + 1360]
                        mov              qword ptr [rsp + 1328], rax
                        mov              rax, qword ptr [rsp + 1368]
                        mov              qword ptr [rsp + 1336], rax
                        mov              rax, qword ptr [rsp + 1344]
                        mov              qword ptr [rsp + 1312], rax
                        mov              rax, qword ptr [rsp + 1352]
                        mov              qword ptr [rsp + 1320], rax
                        lea              rdi, [rsp + 1312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1296], rax
                        mov              qword ptr [rsp + 1304], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                        mov              r11, 36;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2352]
                        mov              qword ptr [rsp + 1184], rax
                        mov              qword ptr [rsp + 1192], rdx;         jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rsp + 2288]
                        mov              qword ptr [rsp + 1264], rax
                        mov              rax, qword ptr [rsp + 2296]
                        mov              qword ptr [rsp + 1272], rax;         jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rsp + 1280], 3            # result
                        mov              rax, qword ptr [rip + .Lx137_0]
                        mov              qword ptr [rsp + 1288], rax;         jmp   n39_call_builtin_prolog_α
.Lx137_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              r11, 40
                        mov              rax, qword ptr [rsp + 1280]
                        mov              qword ptr [rsp + 1232], rax
                        mov              rax, qword ptr [rsp + 1288]
                        mov              qword ptr [rsp + 1240], rax
                        mov              rax, qword ptr [rsp + 1264]
                        mov              qword ptr [rsp + 1216], rax
                        mov              rax, qword ptr [rsp + 1272]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1200], rax
                        mov              qword ptr [rsp + 1208], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n40_call_builtin_prolog_α
n39_call_builtin_prolog_β:
                        mov              r11, 40;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              r11, 41
                        mov              rax, qword ptr [rsp + 1200]
                        mov              qword ptr [rsp + 1168], rax
                        mov              rax, qword ptr [rsp + 1208]
                        mov              qword ptr [rsp + 1176], rax
                        mov              rax, qword ptr [rsp + 1184]
                        mov              qword ptr [rsp + 1152], rax
                        mov              rax, qword ptr [rsp + 1192]
                        mov              qword ptr [rsp + 1160], rax
                        lea              rdi, [rsp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 1136], rax
                        mov              qword ptr [rsp + 1144], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                        mov              r11, 41;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2352]
                        mov              qword ptr [rsp + 1072], rax
                        mov              qword ptr [rsp + 1080], rdx;         jmp   n42_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 1088], rax
                        mov              qword ptr [rsp + 1096], rdx;         jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 1104], rax
                        mov              qword ptr [rsp + 1112], rdx;         jmp   n44_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2208]
                        mov              qword ptr [rsp + 1120], rax
                        mov              qword ptr [rsp + 1128], rdx;         jmp   n45_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_proc_staged_α: mov              r11, 46
                        lea              rsi, [rsp + 1072]
                        lea              rdx, [rsp + 1088]
                        lea              rcx, [rsp + 1104]
                        lea              r8, [rsp + 1120]
                        call             tak$2F4_dcα;                         jmp   .Lx149_2
.Lx149_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx149_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 976]
                        mov              rdx, qword ptr [rsp + 984]
.Lx149_29:              mov              qword ptr [rsp + 976], rax
                        mov              qword ptr [rsp + 984], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n46_var_ref_α
n45_call_proc_staged_β: mov              r11, 46;                             jmp   n73_call_builtin_prolog_α
.Lx149_0:               .quad            .Lx149_0_s
.Lx149_0_s:             .string          "tak/4"
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2336]
                        mov              qword ptr [rsp + 864], rax
                        mov              qword ptr [rsp + 872], rdx;          jmp   n47_var_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_α:              mov              r11, 48
                        mov              rax, qword ptr [rsp + 2304]
                        mov              qword ptr [rsp + 944], rax
                        mov              rax, qword ptr [rsp + 2312]
                        mov              qword ptr [rsp + 952], rax;          jmp   n48_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rsp + 960], 3             # result
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rsp + 968], rax;          jmp   n49_call_builtin_prolog_α
.Lx154_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n49_call_builtin_prolog_α:
                        mov              r11, 50
                        mov              rax, qword ptr [rsp + 960]
                        mov              qword ptr [rsp + 912], rax
                        mov              rax, qword ptr [rsp + 968]
                        mov              qword ptr [rsp + 920], rax
                        mov              rax, qword ptr [rsp + 944]
                        mov              qword ptr [rsp + 896], rax
                        mov              rax, qword ptr [rsp + 952]
                        mov              qword ptr [rsp + 904], rax
                        lea              rdi, [rsp + 896]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 880], rax
                        mov              qword ptr [rsp + 888], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n50_call_builtin_prolog_α
n49_call_builtin_prolog_β:
                        mov              r11, 50;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_builtin_prolog_α:
                        mov              r11, 51
                        mov              rax, qword ptr [rsp + 880]
                        mov              qword ptr [rsp + 848], rax
                        mov              rax, qword ptr [rsp + 888]
                        mov              qword ptr [rsp + 856], rax
                        mov              rax, qword ptr [rsp + 864]
                        mov              qword ptr [rsp + 832], rax
                        mov              rax, qword ptr [rsp + 872]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 816], rax
                        mov              qword ptr [rsp + 824], rdx
                        cmp              al, 104;                             je    n45_call_proc_staged_β
                                                                              jmp   n51_var_ref_α
n50_call_builtin_prolog_β:
                        mov              r11, 51;                             jmp   n45_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:          mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2336]
                        mov              qword ptr [rsp + 752], rax
                        mov              qword ptr [rsp + 760], rdx;          jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2320]
                        mov              qword ptr [rsp + 768], rax
                        mov              qword ptr [rsp + 776], rdx;          jmp   n53_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 784], rax
                        mov              qword ptr [rsp + 792], rdx;          jmp   n54_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2224]
                        mov              qword ptr [rsp + 800], rax
                        mov              qword ptr [rsp + 808], rdx;          jmp   n55_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_proc_staged_α: mov              r11, 56
                        lea              rsi, [rsp + 752]
                        lea              rdx, [rsp + 768]
                        lea              rcx, [rsp + 784]
                        lea              r8, [rsp + 800]
                        call             tak$2F4_dcα;                         jmp   .Lx166_2
.Lx166_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx166_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 656]
                        mov              rdx, qword ptr [rsp + 664]
.Lx166_29:              mov              qword ptr [rsp + 656], rax
                        mov              qword ptr [rsp + 664], rdx
                        cmp              al, 104;                             je    n45_call_proc_staged_β
                                                                              jmp   n56_var_ref_α
n55_call_proc_staged_β: mov              r11, 56;                             jmp   n45_call_proc_staged_β
.Lx166_0:               .quad            .Lx166_0_s
.Lx166_0_s:             .string          "tak/4"
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2272]
                        mov              qword ptr [rsp + 544], rax
                        mov              qword ptr [rsp + 552], rdx;          jmp   n57_var_α
#-----------------------------------------------------------------------------------------------------------------------
n57_var_α:              mov              r11, 58
                        mov              rax, qword ptr [rsp + 2320]
                        mov              qword ptr [rsp + 624], rax
                        mov              rax, qword ptr [rsp + 2328]
                        mov              qword ptr [rsp + 632], rax;          jmp   n58_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n58_lit_integer_α:      mov              r11, 59
                        mov              qword ptr [rsp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Lx171_0]
                        mov              qword ptr [rsp + 648], rax;          jmp   n59_call_builtin_prolog_α
.Lx171_0:               .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              r11, 60
                        mov              rax, qword ptr [rsp + 640]
                        mov              qword ptr [rsp + 592], rax
                        mov              rax, qword ptr [rsp + 648]
                        mov              qword ptr [rsp + 600], rax
                        mov              rax, qword ptr [rsp + 624]
                        mov              qword ptr [rsp + 576], rax
                        mov              rax, qword ptr [rsp + 632]
                        mov              qword ptr [rsp + 584], rax
                        lea              rdi, [rsp + 576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 560], rax
                        mov              qword ptr [rsp + 568], rdx
                        cmp              al, 104;                             je    n73_call_builtin_prolog_α
                                                                              jmp   n60_call_builtin_prolog_α
n59_call_builtin_prolog_β:
                        mov              r11, 60;                             jmp   n73_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n60_call_builtin_prolog_α:
                        mov              r11, 61
                        mov              rax, qword ptr [rsp + 560]
                        mov              qword ptr [rsp + 528], rax
                        mov              rax, qword ptr [rsp + 568]
                        mov              qword ptr [rsp + 536], rax
                        mov              rax, qword ptr [rsp + 544]
                        mov              qword ptr [rsp + 512], rax
                        mov              rax, qword ptr [rsp + 552]
                        mov              qword ptr [rsp + 520], rax
                        lea              rdi, [rsp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 496], rax
                        mov              qword ptr [rsp + 504], rdx
                        cmp              al, 104;                             je    n55_call_proc_staged_β
                                                                              jmp   n61_var_ref_α
n60_call_builtin_prolog_β:
                        mov              r11, 61;                             jmp   n55_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2272]
                        mov              qword ptr [rsp + 432], rax
                        mov              qword ptr [rsp + 440], rdx;          jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:          mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2288]
                        mov              qword ptr [rsp + 448], rax
                        mov              qword ptr [rsp + 456], rdx;          jmp   n63_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n63_var_ref_α:          mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2304]
                        mov              qword ptr [rsp + 464], rax
                        mov              qword ptr [rsp + 472], rdx;          jmp   n64_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2240]
                        mov              qword ptr [rsp + 480], rax
                        mov              qword ptr [rsp + 488], rdx;          jmp   n65_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n65_call_proc_staged_α: mov              r11, 66
                        lea              rsi, [rsp + 432]
                        lea              rdx, [rsp + 448]
                        lea              rcx, [rsp + 464]
                        lea              r8, [rsp + 480]
                        call             tak$2F4_dcα;                         jmp   .Lx183_2
.Lx183_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx183_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 336]
                        mov              rdx, qword ptr [rsp + 344]
.Lx183_29:              mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx
                        cmp              al, 104;                             je    n55_call_proc_staged_β
                                                                              jmp   n66_var_ref_α
n65_call_proc_staged_β: mov              r11, 66;                             jmp   n55_call_proc_staged_β
.Lx183_0:               .quad            .Lx183_0_s
.Lx183_0_s:             .string          "tak/4"
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2208]
                        mov              qword ptr [rsp + 272], rax
                        mov              qword ptr [rsp + 280], rdx;          jmp   n67_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2224]
                        mov              qword ptr [rsp + 288], rax
                        mov              qword ptr [rsp + 296], rdx;          jmp   n68_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n68_var_ref_α:          mov              r11, 69
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2240]
                        mov              qword ptr [rsp + 304], rax
                        mov              qword ptr [rsp + 312], rdx;          jmp   n69_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 2256]
                        mov              qword ptr [rsp + 320], rax
                        mov              qword ptr [rsp + 328], rdx;          jmp   n70_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n70_call_proc_staged_α: mov              r11, 71
                        lea              rsi, [rsp + 272]
                        lea              rdx, [rsp + 288]
                        lea              rcx, [rsp + 304]
                        lea              r8, [rsp + 320]
                        call             tak$2F4_dcα;                         jmp   .Lx193_2
.Lx193_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx193_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 176]
                        mov              rdx, qword ptr [rsp + 184]
.Lx193_29:              mov              qword ptr [rsp + 176], rax
                        mov              qword ptr [rsp + 184], rdx
                        cmp              al, 104;                             je    n65_call_proc_staged_β
                                                                              jmp   n71_move_label_α
n70_call_proc_staged_β: mov              r11, 71;                             jmp   n65_call_proc_staged_β
.Lx193_0:               .quad            .Lx193_0_s
.Lx193_0_s:             .string          "tak/4"
#-----------------------------------------------------------------------------------------------------------------------
n71_move_label_α:       mov              r11, 72
                        lea              rax, [rip + n70_call_proc_staged_β]
                        mov              qword ptr [rsp + 96], rax;           jmp   tak$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
n72_disjunction_α:      mov              r11, 73
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    tak$2F4_ω
                                                                              jmp   rax
n72_disjunction_β:      mov              r11, 73;                             jmp   tak$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
n73_call_builtin_prolog_α:
                        mov              r11, 74
                        mov              rax, qword ptr [rsp + 112]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 120]
                        mov              qword ptr [rsp + 168], rax
                        lea              rdi, [rsp + 160]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rsp + 144], rax
                        mov              qword ptr [rsp + 152], rdx
                        cmp              al, 104;                             je    tak$2F4_ω
                                                                              jmp   tak$2F4_ω
n73_call_builtin_prolog_β:
                        mov              r11, 74;                             jmp   tak$2F4_ω
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_β:
                                                                              jmp   n72_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 2392]
                        add              rsp, 2416;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_ω:
                        mov              rcx, qword ptr [rsp + 2400]
                        add              rsp, 2416;                           jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             r8
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
                        mov              rax, qword ptr [rsp + 24]
                        mov              edi, 3
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
                        lea              rcx, [rip + .Lx199_2]
                        lea              rdx, [rip + .Lx199_3];               jmp   FN__tak$2F4
.Lx199_2:               pop              r12
                        pop              r12;                                 jmp   r12
.Lx199_3:               pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
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
                        sub              rsp, 416
                        mov              qword ptr [rsp + 392], rcx
                        mov              qword ptr [rsp + 400], rdx
                        mov              qword ptr [rsp + 408], rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 384
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
n200_call_builtin_prolog_α:
                        mov              r11, 75
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lx213_102
                        mov              rax, qword ptr [rsp + 32]
                        mov              rdx, qword ptr [rsp + 40];           jmp   .Lx213_101
.Lx213_102:             lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lx213_100
                        lea              r12, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r12 + 0]
                        cmp              eax, 2;                              je    .Lx213_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lx213_101
.Lx213_100:             lea              rdi, [rsp + 48]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lx213_101:             mov              qword ptr [rsp + 32], rax
                        mov              qword ptr [rsp + 40], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n201_lit_integer_α
n200_call_builtin_prolog_β:
                        mov              r11, 75;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_integer_α:     mov              r11, 76
                        mov              qword ptr [rsp + 288], 3             # result
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rsp + 296], rax;          jmp   n202_lit_integer_α
.Lx214_0:               .quad            18
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_integer_α:     mov              r11, 77
                        mov              qword ptr [rsp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Lx215_0]
                        mov              qword ptr [rsp + 312], rax;          jmp   n203_lit_integer_α
.Lx215_0:               .quad            12
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rsp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Lx216_0]
                        mov              qword ptr [rsp + 328], rax;          jmp   n204_var_ref_α
.Lx216_0:               .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rsp + 352]
                        mov              qword ptr [rsp + 336], rax
                        mov              qword ptr [rsp + 344], rdx;          jmp   n205_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n205_call_proc_staged_α:
                        mov              r11, 80
                        lea              rsi, [rsp + 288]
                        lea              rdx, [rsp + 304]
                        lea              rcx, [rsp + 320]
                        lea              r8, [rsp + 336]
                        call             tak$2F4_dcα;                         jmp   .Lx220_2
.Lx220_2:               mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lx220_29
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
.Lx220_29:              mov              qword ptr [rsp + 192], rax
                        mov              qword ptr [rsp + 200], rdx
                        cmp              al, 104;                             je    n212_call_builtin_prolog_α
                                                                              jmp   n206_var_α
n205_call_proc_staged_β:
                        mov              r11, 80;                             jmp   n212_call_builtin_prolog_α
.Lx220_0:               .quad            .Lx220_0_s
.Lx220_0_s:             .string          "tak/4"
#-----------------------------------------------------------------------------------------------------------------------
n206_var_α:             mov              r11, 81
                        mov              rax, qword ptr [rsp + 352]
                        mov              qword ptr [rsp + 176], rax
                        mov              rax, qword ptr [rsp + 360]
                        mov              qword ptr [rsp + 184], rax;          jmp   n207_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n207_call_builtin_prolog_α:
                        mov              r11, 82
                        mov              rax, qword ptr [rsp + 176]
                        mov              qword ptr [rsp + 160], rax
                        mov              rax, qword ptr [rsp + 184]
                        mov              qword ptr [rsp + 168], rax
                        .section         .rodata
.Lrkfn224:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn224]
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
                        cmp              al, 104;                             je    n205_call_proc_staged_β
                                                                              jmp   n208_lit_string_α
n207_call_builtin_prolog_β:
                        mov              r11, 82;                             jmp   n205_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n208_lit_string_α:      mov              r11, 83
                        mov              qword ptr [rsp + 128], 2             # result
                        mov              dword ptr [rsp + 132], 0
                        mov              rax, qword ptr [rip + .Lx225_0]
                        mov              qword ptr [rsp + 136], rax;          jmp   n209_call_builtin_prolog_α
.Lx225_0:               .quad            .Lx225_0_s
.Lx225_0_s:             .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n209_call_builtin_prolog_α:
                        mov              r11, 84
                        mov              rax, qword ptr [rsp + 128]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 136]
                        mov              qword ptr [rsp + 120], rax
                        .section         .rodata
.Lrkfn227:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn227]
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
                        cmp              al, 104;                             je    n205_call_proc_staged_β
                                                                              jmp   n210_move_label_α
n209_call_builtin_prolog_β:
                        mov              r11, 84;                             jmp   n205_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n210_move_label_α:      mov              r11, 85
                        lea              rax, [rip + n205_call_proc_staged_β]
                        mov              qword ptr [rsp + 16], rax;           jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n211_disjunction_α:     mov              r11, 86
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
n211_disjunction_β:     mov              r11, 86;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n212_call_builtin_prolog_α:
                        mov              r11, 87
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
n212_call_builtin_prolog_β:
                        mov              r11, 87;                             jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   n211_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 392]
                        add              rsp, 416;                            jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 400]
                        add              rsp, 416;                            jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "tak/4"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tak$2F4
                        .quad            tak$2F4_dcα
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2368
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
